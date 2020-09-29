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

    def puts_with_rainbow(input)
      output = ''
      input.to_s.split('').each do |str|
        output += "\e[38;5;#{rainbow}m#{str}\e[0m"
      end
      puts output
    end

    def self.puts(input)
      if input.is_a?(String)
        RainbowPrinter::Core.new.puts_with_rainbow input
      elsif input.is_a?(Array)
        input.each do |child|
          RainbowPrinter::Core.new.puts_with_rainbow child
        end
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
