require "yaml"

def load_library(path)
  file = YAML.load_file(path)
  emoticons = {
    :get_meaning => file.reduce({}){|memo, (meaning, english_then_japanese_emoji_array)|
      memo[english_then_japanese_emoji_array[1]] = meaning
      memo
    },
    :get_emoticon => file.reduce({}){|memo, (meaning, english_then_japanese_emoji_array)|
      memo[english_then_japanese_emoji_array[0]] = english_then_japanese_emoji_array[1]
      memo
    }
  }
  emoticons
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end