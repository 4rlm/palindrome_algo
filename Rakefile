require "bundler/gem_tasks"
require "rspec/core/rake_task"

require 'palindrome_algo'
# require 'webs_criteria'


RSpec::Core::RakeTask.new(:spec)

task :default => :spec
task :test => :spec

###################
task :console do
  require 'irb'
  require 'irb/completion'
  require 'palindrome_algo'
  require "active_support/all"
  ARGV.clear

  palindrome_hash = run_palindrome

  IRB.start
end


def run_palindrome
  args = { text: "My best friend's name is Anna. Don't you love the civic opera? How much is a kayak? My Spanish level is low, but I have fun. Excuse me, Madam?  Is this yours? Where's your mom today? Let's go for lunch at noon. Did you see that racecar? When was the radar invented? Your face is redder than a tomato. So we somehow refer cases to you? How much is it to repaper the living room? The rotator was connected to the log by a rope 6 ft. I heard the tail rotor buzz again. For later versions and adaptations of the sagas see O. His guitar solos are just unbelievable. As a doctor, Kent strongly believes the tenet of never doing any harm. Wow, you made this by yourself?" }

  palindrome_hash = PalindromeAlgo.parse(args)

  # scraper = LinkScraper::Scrape.new(WebsCriteria.all_scrub_web_criteria)
end
