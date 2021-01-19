require "rainbow_printer/version"

module RainbowPrinter
  class Error < StandardError; end

  class Core
    PI_3 = Math::PI / 3

    def initialize
      @colors = (0...(6 * 7)).map do |n|
        n *= 1.0 / 6
        r  = (3 * Math.sin(n) + 3).to_i
        g  = (3 * Math.sin(n + 2 * PI_3) + 3).to_i
        b  = (3 * Math.sin(n + 4 * PI_3) + 3).to_i

        36 * r + 6 * g + b + 16
      end
      @color_index = 0
    end

    def rainbow
      @color_index == (@colors.size - 1) ? @color_index = 0 : @color_index += 1
      @colors[@color_index]
    end

    def puts_with_rainbow(input, opts = {})
      from_file = opts[:from_file]
      output = ''
      input.to_s.split('').each do |str|
        if from_file
          output += "\e[38;5;#{rainbow}m#{str}"
        else
          output += "\e[38;5;#{rainbow}m#{str}\e[0m"
        end
      end
      puts output
    end

    def read_from_file(file_path)
      content = File.open(file_path, "r") 
      content.each_line do |line|
        puts_with_rainbow line, from_file: true
      end
    end

    def self.puts(input)
      if input.is_a?(String)
        RainbowPrinter::Core.new.puts_with_rainbow input
      elsif input.is_a?(Array)
        input.each do |child|
          RainbowPrinter::Core.new.puts_with_rainbow child
        end
      elsif input.is_a?(Hash)
        RainbowPrinter::Core.new.read_from_file(input[:file_path])
      end
    end
  end
end

# Adding rainbow_printer method, allow call in ruby code
def rainbow_printer(input)
  RainbowPrinter::Core.puts input
end

# Alias for rainbow_printer
alias rb_puts rainbow_printer
