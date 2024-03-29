class BlocksAndIterators
  attr_reader :local_env

  def start
    # Using `yield`
    puts '------ Using `yield` ------'
    run_command('/etc') { 'ls -l' }
    run_command('root@localhost') { 'ssh' }
    run_command('/var')
    test_command('/bin/bash') { |filename| puts "Testing #{filename} ..." }
    set_local_env { current_env }
    puts "local_env: #{local_env}"

    # Using block as method params
    puts "\n"
    puts '------ Using blocks as method params ------'
    pass_block_command { (1..5).each { |n| puts "n = #{n}" if n.odd? } }

    # Using iterators
    puts "\n"
    puts '------ Using `iterators` ------'
    show_even_numbers

    # Create an iterator using `yield`
    puts "\n"
    puts '------ Create an `iterator` using `yield` on a multiblock ------'
    raw_show_even_numbers((1..5)) do |i|
      puts "i = #{i}" if i.even?
    end
  end

  def run_command(arg1)
    puts "#{Time.now}: #{yield if block_given?} #{arg1}"
  end

  def test_command(filename)
    yield filename
  end

  def pass_block_command &block
    block.call
  end

  def set_local_env
    @local_env = yield
  end

  def show_even_numbers
    (1..5).each { |n| puts "n = #{n}" if n.even? }
  end

  def raw_show_even_numbers(numArr)
    numArr.each do |i|
      yield i
    end
  end

  private

  def current_env
    'production'
  end
end

BlocksAndIterators.new.start
