require "yaml"

def load_library(path)
  file = YAML.load_file(path)
  emoticons = {
    :get_meaning => {
      file.reduce({}){|memo, (meanings, english_then_japanese_emoji_array)|
        memo[english_then_japanese_emoji_array[1]] = meanings
      }
    },
    :get_emoticon =>
  }
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

me = load_library('emoticons.yml')
puts me