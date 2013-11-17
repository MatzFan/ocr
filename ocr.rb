#!/usr/bin/env ruby

img = ARGV[0]

require 'tesseract'

e = Tesseract::Engine.new { |e|
  e.language = :eng
  e.blacklist = '|'
}

# text_for can accept a string representing the img - coerced to IO object(?)
txt = e.text_for(img).gsub(/\s+/, "") # remove all whitespace
