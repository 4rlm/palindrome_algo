# rspec spec/palindrome_algo/solver_spec.rb

require 'spec_helper'

describe 'Solver' do
  let(:solver_obj) { PalindromeAlgo::Solver.new }
  # before { solver_obj.inst = inst }

  describe '#run_palindrome' do
    let(:args) do
      { text: "My best friend's name is Anna. Don't you love the civic opera? How much is a kayak? My Spanish level is low, but I have fun. Excuse me, Madam?  Is this yours? Where's your mom today? Let's go for lunch at noon. Did you see that racecar? When was the radar invented? Your face is redder than a tomato. So we somehow refer cases to you? How much is it to repaper the living room? The rotator was connected to the log by a rope 6 ft. I heard the tail rotor buzz again. For later versions and adaptations of the sagas see O. His guitar solos are just unbelievable. As a doctor, Kent strongly believes the tenet of never doing any harm. Wow, you made this by yourself?" }
    end

    let(:palindrome_hash) do
      { results:   [{ string: "My best friend's name is Anna", palindromes: 'anna' },
                    { string: "Don't you love the civic opera", palindromes: 'civic' },
                    { string: 'How much is a kayak', palindromes: 'kayak' },
                    { string: 'My Spanish level is low, but I have fun', palindromes: 'level' },
                    { string: 'Excuse me, Madam', palindromes: 'madam' },
                    { string: 'Is this yours', palindromes: '' },
                    { string: "Where's your mom today", palindromes: 'mom' },
                    { string: "Let's go for lunch at noon", palindromes: 'noon' },
                    { string: 'Did you see that racecar', palindromes: 'did, racecar' },
                    { string: 'When was the radar invented', palindromes: 'radar' },
                    { string: 'Your face is redder than a tomato', palindromes: 'redder' },
                    { string: 'So we somehow refer cases to you', palindromes: 'refer' },
                    { string: 'How much is it to repaper the living room', palindromes: 'repaper' },
                    { string: 'The rotator was connected to the log by a rope 6 ft', palindromes: 'rotator' },
                    { string: 'I heard the tail rotor buzz again', palindromes: 'rotor' },
                    { string: 'For later versions and adaptations of the sagas see O', palindromes: 'sagas' },
                    { string: 'His guitar solos are just unbelievable', palindromes: 'solos' },
                    { string: 'As a doctor, Kent strongly believes the tenet of never doing any harm', palindromes: 'tenet' },
                    { string: 'Wow, you made this by yourself', palindromes: 'wow' }],
        text:   "My best friend's name is Anna. Don't you love the civic opera? How much is a kayak? My Spanish level is low, but I have fun. Excuse me, Madam?  Is this yours? Where's your mom today? Let's go for lunch at noon. Did you see that racecar? When was the radar invented? Your face is redder than a tomato. So we somehow refer cases to you? How much is it to repaper the living room? The rotator was connected to the log by a rope 6 ft. I heard the tail rotor buzz again. For later versions and adaptations of the sagas see O. His guitar solos are just unbelievable. As a doctor, Kent strongly believes the tenet of never doing any harm. Wow, you made this by yourself?" }
    end

    it 'run_palindrome' do
      expect(solver_obj.run_palindrome(args)).to eql(palindrome_hash)
    end
  end

  describe '#parse_string_block' do
    let(:string_block) do
      "My best friend's name is Anna. Don't you love the civic opera? How much is a kayak? My Spanish level is low, but I have fun. Excuse me, Madam?  Is this yours? Where's your mom today? Let's go for lunch at noon. Did you see that racecar? When was the radar invented? Your face is redder than a tomato. So we somehow refer cases to you? How much is it to repaper the living room? The rotator was connected to the log by a rope 6 ft. I heard the tail rotor buzz again. For later versions and adaptations of the sagas see O. His guitar solos are just unbelievable. As a doctor, Kent strongly believes the tenet of never doing any harm. Wow, you made this by yourself?"
    end

    let(:strings) do
      ["My best friend's name is Anna",
       "Don't you love the civic opera",
       'How much is a kayak',
       'My Spanish level is low, but I have fun',
       'Excuse me, Madam',
       'Is this yours',
       "Where's your mom today",
       "Let's go for lunch at noon",
       'Did you see that racecar',
       'When was the radar invented',
       'Your face is redder than a tomato',
       'So we somehow refer cases to you',
       'How much is it to repaper the living room',
       'The rotator was connected to the log by a rope 6 ft',
       'I heard the tail rotor buzz again',
       'For later versions and adaptations of the sagas see O',
       'His guitar solos are just unbelievable',
       'As a doctor, Kent strongly believes the tenet of never doing any harm',
       'Wow, you made this by yourself']
    end

    it 'parse_string_block' do
      expect(solver_obj.parse_string_block(string_block)).to eql(strings)
    end
  end

  describe '#find_palindromes' do
    let(:word_string) { "My best friend's name is Anna" }
    let(:palindromes) { 'anna' }

    it 'find_palindromes' do
      expect(solver_obj.find_palindromes(word_string)).to eql(palindromes)
    end
  end
end
