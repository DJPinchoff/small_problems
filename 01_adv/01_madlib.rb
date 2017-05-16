RANDOM_WORDS = { "RELATIVE" => ['Mom', 'Dad', 'Uncle', 'Aunt'],
                 "ADJ" => ['great', 'horrible', 'fun', 'scary'],
                 "NAME" => ['Dave', 'Paul', 'Alex', 'John'],
                 "VERB" => ['swim', 'run', 'laugh', 'jump', 'sail', 'win', 'send', 'bring', 'flush'],
                 "NOUN" => ['chair', 'pencil', 'sock', 'underwear'],
                 "ADV" => ['quickly', 'quietly', 'loudly'],
}

File.open("madlib.txt") do |file|
  file.each do |line|
    line_array = line.split
    line_array.each_with_index do |word, index|
      RANDOM_WORDS.each_key do |key|
        line_array[index].gsub!(key, RANDOM_WORDS[key].sample)
      end
    end
    puts line_array.join(" ")
  end
end