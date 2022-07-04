class BlocksAndIterators
  def start
    using_yield_1('Chris') { 'Hi' }
  end

  def using_yield_1(name)
    puts "#{yield} #{name}"
  end
end

BlocksAndIterators.new.start