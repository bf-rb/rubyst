require 'rubyst/version'

# Rubyst
module Rubyst
  def self.run
    puts 'Run [rubocop]:'
    rubocop = `rubocop`
    if rubocop.lines("\n").length <= 4
      puts 'All is okay'
    else
      puts rubocop
    end
  end
end
