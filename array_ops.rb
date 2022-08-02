class ArrayOps
  def start
    puts "get_array1: #{get_array1}"
    line_break
    puts "get_array1.length: #{get_array1.length}"
    line_break
    puts "add_to_array1: #{add_to_array1}"
    line_break
    puts "first of get_array1: #{get_array1.first} | last of get_array1: #{get_array1.last}"
    line_break
    puts "range_to_array: #{range_to_array}"
    line_break
    puts "even_numbers: #{even_numbers}"
  end

  def get_array1
    %w[element1 element2 element3]
  end

  def line_break
    puts "\n"
  end

  def add_to_array1
    get_array1 << 'element4'
  end

  def range_to_array
    (1..5).to_a
  end

  def even_numbers
    [1, 2, 3, 4, 5, 6, 7, 8].select(&:even?)
  end
end

ArrayOps.new.start
