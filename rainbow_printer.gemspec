require_relative 'lib/rainbow_printer/version'

Gem::Specification.new do |spec|
  spec.name          = "rainbow_printer"
  spec.version       = RainbowPrinter::VERSION
  spec.authors       = 'Derek Nguyen'
  spec.email         = 'derek.nguyen.269@gmail.com'

  spec.summary       = 'Rainbow Printer, it adds some methods to help your output display look likes rainbow 🌈'
  spec.description   = 'Rainbow Printer, it adds some methods to help your output display look likes rainbow 🌈'
  spec.homepage      = 'https://github.com/dereknguyen269/rainbow_printer'
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com/dereknguyen269/rainbow_printer'
  spec.metadata["changelog_uri"] = 'https://github.com/dereknguyen269/rainbow_printer'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end