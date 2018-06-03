# Print a triangle
def triangle(num_rows, what_to_print)
  1.upto num_rows do |row|
    num_spaces = num_rows - row
    1.upto(num_spaces) { print " " * what_to_print.length }
    num_stars = 2 * row - 1
    1.upto(num_stars) { print what_to_print }
    puts
  end
end

# Print upside down triangle (biangle according to Aviv)
def biangle(num_rows, num_skip, what_to_print)
  (num_rows - num_skip).downto 1 do |row|
    num_spaces = num_rows - row
    num_spaces.times { print " " * what_to_print.length }
    num_stars = 2 * row - 1
    num_stars.times { print what_to_print }
    puts
  end
end

def diamond(num_rows_in_top, what_to_print)
  triangle num_rows_in_top, what_to_print
  biangle num_rows_in_top, 1, what_to_print
end

diamond ARGV[0].to_i, ARGV[1]
