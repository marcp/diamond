# Usage:
#
# ruby aviv.rb 5 "+"

# Print a triangle
def triangle(num_rows, word)
  1.upto num_rows do |row|
    num_spaces = num_rows - row
    1.upto(num_spaces) { print " " * word.length }
    num_stars = 2 * row - 1
    1.upto(num_stars) { print word }
    puts
  end
end

# Print upside down triangle (biangle according to Aviv)
def biangle(num_rows, num_skip, word)
  (num_rows - num_skip).downto 1 do |row|
    num_spaces = num_rows - row
    num_spaces.times { print " " * word.length }
    num_stars = 2 * row - 1
    num_stars.times { print word }
    puts
  end
end

def diamond(num_rows_in_top, word)
  triangle num_rows_in_top, word
  biangle num_rows_in_top, 1, word
end

diamond ARGV[0].to_i, ARGV[1]
