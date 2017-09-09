def dictionary
  dictionary =
  {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet_one)
  tweet_one = tweet_one.split(" ")
  i = 0
  tweet_one_short = []
  while i < tweet_one.length
    if dictionary.keys.include?(tweet_one[i].downcase)
      tweet_one_short << dictionary[tweet_one[i].downcase]
    else
      tweet_one_short << tweet_one[i]
    end
    i += 1
  end
  tweet_one_short = tweet_one_short.join(" ")
  tweet_one_short
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    string = word_substituter(string)
  else
    return string
  end
  string
end

def shortened_tweet_truncator(string)
  if string.length > 140
    string = word_substituter(string)
    if string.length > 140
      string = string[0..136].concat("...")
    else
      return string
    end
  else
    return string
  end
  string
end
