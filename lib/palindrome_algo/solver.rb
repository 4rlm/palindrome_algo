
module PalindromeAlgo
  class Solver


    # AlgoService.new.run_palindrome({string: 'lemon apple madam cinema restful fluster'})
    def run_palindrome(args = {})
      string_block = args.fetch(:text, nil)
      string_block = sample_string_block if !string_block.present?
      parsed_strings = parse_string_block(string_block)

      results = parsed_strings.map do |string|
        { string: string, palindromes: find_palindromes(string) }
      end

      palindrome_hash = { results: results, text: string_block }
    end

    def parse_string_block(string_block)
      strings = string_block.split(/\.\s+|!|\?/)
      strings = strings.map { |str|  str.squeeze(' ') }
      strings = strings.map(&:strip)
    end

    # # array = ['madam', 'restful', 'fluster']
    def find_palindromes(word_string)
      original_strs = word_string.downcase.split(/\W+/).sort

      palindromes = original_strs.select do |str|
        str == str.reverse if str.length > 1
      end

      palindromes = palindromes.sort.join(', ')
    end

    def sample_string_block
      "My best friend's name is Anna. Don't you love the civic opera? How much is a kayak? My Spanish level is low, but I have fun. Excuse me, Madam?  Is this yours? Where's your mom today? Let's go for lunch at noon. Did you see that racecar? When was the radar invented? Your face is redder than a tomato. So we somehow refer cases to you? How much is it to repaper the living room? The rotator was connected to the log by a rope 6 ft. I heard the tail rotor buzz again. For later versions and adaptations of the sagas see O. His guitar solos are just unbelievable. As a doctor, Kent strongly believes the tenet of never doing any harm. Wow, you made this by yourself?"
    end

  end
end
