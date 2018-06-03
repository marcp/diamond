class Two
  attr_accessor :num_rows

  def initialize(num_rows)
    @num_rows = num_rows
  end

  def print_row(row)
      1.upto(@num_rows - row) { |space| print " " }

      num_asterisks = 1 + 2 * (row - 1)

      1.upto(num_asterisks) { |a| print '*' }

      puts
  end

  def triangle(rows)
    1.upto(rows) do |row|
      print_row row
    end
  end

  def upside_down_pyramid
    @num_rows.downto(1) do |row|
      print_row row
    end
  end

  def diamond
    triangle(@num_rows - 1)
    upside_down_pyramid
  end

  def pyramid
    triangle(@num_rows)
  end

  def go
    pyramid
  end

end

two = Two.new(4)

two.diamond
