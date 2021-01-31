# I'm a client working for the Blank House. We want to display positive tweets about our president on our website.
# However, our president is kind of unpopular, and we pretty much only receive negative press.
# Write me a program that filters out the following words from tweets: "sucks", "bad", "hate", "foolish", and the most popular: "danger to society".
# Replace each negative word or phrase them with the word "CENSORED".
# Some test tweets have been provided for you.

def censoring(tweet)
  censored_list = ["sucks", "bad", "hate", "foolish", "danger to society"]
  censored_list.each do |bad_word|
    tweet.gsub!(bad_word, 'CENSORED')
  end
  puts tweet
end
