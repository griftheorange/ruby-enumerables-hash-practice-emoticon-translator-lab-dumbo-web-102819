require "yaml"

def load_library(path)
  file = YAML.load_file(path)
  emoticons = {
    :get_meaning => file.reduce({}){|memo, (key, value)|
      memo[value] = key
    },
    :get_emoticon => {}
  }
  
  
  emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

