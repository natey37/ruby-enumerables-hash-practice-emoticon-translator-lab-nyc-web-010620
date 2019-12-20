# require modules here
require "yaml"

#emoticons = './lib/emoticons.yml'
def load_library(file)
  # code goes here
  emoticon_file = YAML.load_file('./lib/emoticons.yml')
  emoticon_library = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  emoticon_file.each do |meaning, emojis|
    english_emojis = emojis[0]
    japanese_emojis = emojis[1]
    emoticon_library[:get_meaning][japanese_emojis] = meaning
    emoticon_library[:get_emoticon][english_emojis] = japanese_emojis
  end 
  puts emoticon_library
  return emoticon_library
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end