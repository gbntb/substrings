def substrings(string, dictionary)
  dictionary.inject(Hash.new(0)) do |result, substring|
    count = 0
    partial_string = string.downcase
    dict_string = substring.downcase
    
    while partial_string.index dict_string do
      count += 1
      start_index = partial_string.index(dict_string) + dict_string.length
      partial_string = partial_string[start_index..-1]
    end

    result[substring] = count unless count == 0
    result
  end
end