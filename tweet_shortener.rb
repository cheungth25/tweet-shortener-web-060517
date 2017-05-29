# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  dictionary
  new_array = []
  tweet.split(" ").each { |word|
    if dictionary[word.downcase]
      new_array << dictionary[word.downcase]
    else
      new_array << word
    end
  }
  return new_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each { |print_tweet|
    puts word_substituter(print_tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    return tweet
  elsif word_substituter(tweet).length < 140
    return word_substituter(tweet)
  else
    return word_substituter(tweet)[0..139]
  end
end
