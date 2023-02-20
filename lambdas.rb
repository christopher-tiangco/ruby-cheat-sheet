class Lambdas
  Lambda1 = -> { puts 'Lambda on single line' }
  Lambda2 = lambda do
    puts 'Lambda on multi-line'
  end

  def start
    Lambda1.call
    puts "\n"
    Lambda2.call
  end
end

Lambdas.new.start
