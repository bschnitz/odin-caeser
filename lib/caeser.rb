#!/usr/bin/ruby

def caesar_cipher(str, shift)
  str.codepoints.map do |ord|
    if ord.between?(97, 122)
      (ord - 'a'.ord + shift) % 26 + 'a'.ord
    elsif ord.between?(65, 90)
      (ord - 'A'.ord + shift) % 26 + 'A'.ord
    else
      ord
    end
  end.map(&:chr).join('')
end
