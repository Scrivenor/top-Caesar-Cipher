
puts "Enter the your messge to encode:"
user_message = gets.chomp
puts "Enter your desired shift"
user_shift = gets.chomp.to_i

def encrypt( str, shft )
  user_encrypted = ""
  lowercase_letters = ("a".."z").to_a
  uppercase_letters = ("A".."Z").to_a
  str.split("").each do |ch|
    if lowercase_letters.include? ch
      user_encrypted += lowercase_letters[ (lowercase_letters.index(ch) + shft) % 26 ]
    elsif uppercase_letters.include? ch
      user_encrypted += uppercase_letters[ (uppercase_letters.index(ch) + shft) % 26 ]
    else
      user_encrypted += ch
    end
  end
  user_encrypted
end

puts encrypt( user_message, user_shift )
