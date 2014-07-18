#!/usr/bin/env ruby

spook_words = File::read(File::dirname(File::expand_path(__FILE__)) +
                         "/libspook.lines").split("\u0000\n")
spook_n_words = (1..9).map do |x|
  spook_words[Random::rand(spook_words.length)]
end
spook_n_s = spook_n_words.join(" ") + "\n"

puts "Peter Harpending\n"
