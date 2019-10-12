require "yaml"

def load_library
  YAML.load_file('emoticons.yml')
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

emoticons = load_library
puts emoticons
