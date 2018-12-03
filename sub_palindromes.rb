class String
  def sub_palindromes
    palindromes = []

    length.times do |start_pos|
      (2..(length - start_pos)).each do |len|
        substring = self[start_pos...(start_pos + len)]
        palindromes << substring if substring == substring.reverse
      end
    end

    palindromes
  end
end
