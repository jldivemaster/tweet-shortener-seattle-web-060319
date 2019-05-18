# Write your code here.
def dictionary
  hash = {
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
  arr = tweet.split(" ")
  hash = dictionary
  new_arr = []
  arr.each do |word|
    if hash.keys.include?(word.downcase)
      new_arr << hash[word.downcase]
    else
      new_arr << word
    end
  end
  return new_arr.join(" ")
end


def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    puts word_substituter(tweet)
  else
    puts tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)
  if new_tweet.size > 140
    puts new_tweet[0..136] + "..."
  else
    puts new_tweet
  end
end
