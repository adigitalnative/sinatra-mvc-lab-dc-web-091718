class PigLatinizer

  def piglatinize(phrase)
    split_phrase = phrase.split(" ")
    if split_phrase.count == 1
      single_word_piglatinize(phrase)
    else
      split_phrase.map do |word|
        single_word_piglatinize(word)
      end.join(" ")
    end
  end

  def single_word_piglatinize(word)
    if word.scan(/^[aeiouAEIOU]/).count == 1
      word + "way"
    else
      split_word = word.split(/([aeiouAEIOU].*)/)
      split_word[1] + split_word[0] + "ay"
    end
  end
end