require "palindrome_algo/version"

require "palindrome_algo/solver"
# require 'mechanizer'
# require 'scrub_db'
require 'pry'

module PalindromeAlgo

  def self.parse(args={})
    palindrome_hash = self::Solver.new.run_palindrome(args)
  end

end
