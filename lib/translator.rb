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

def get_japanese_emoticon(path, emoticon)
  emoticons_hash = load_library(path)
  if emoticons_hash[:get_emoticon][emoticon]
    emoticons_hash[:get_emoticon][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  emoticons_hash = load_library(path)
  if emoticons_hash[:get_meaning][emoticon]
    emoticons_hash[:get_meaning][emoticon]
  else 
    "Sorry, "
end