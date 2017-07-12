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
  words = tweet.split(" ")
  words.each do |word|

    dictionary.map do |key,value|
      if word.downcase == key
        word.replace(value)
      end
    end

  end

words.join(" ")
end


def bulk_tweet_shortener(tweet_arr)
  tweet_arr.map do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.split("").count > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).split("").count > 140
    selective_tweet_shortener(tweet)[0..136] + "..."
  else
    tweet
  end
end

# selective_tweet_shortener("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")
# "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"])