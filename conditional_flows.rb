class ConditionalFlows
  def start
    use_if_guard_clause
    use_unless_guard_clause
    use_while_statement_modifier
    use_until_statement_modifier
  end

  def use_if_guard_clause
    return if 2 > 1
    puts "-- Inside use_if_guard_clause...--\n"
  end

  # unless is the same as "if not"
  def use_unless_guard_clause
    return unless 2 > 1
    puts "--Inside use_unless_guard_clause...--\n"
  end

  def use_while_statement_modifier
    x = 0
    x+=1 while x < 10
    puts "[Using `while`]: x = #{x}"
  end
  
  def use_until_statement_modifier
    x = 0
    x+=1 until x > 9
    puts "[Using `until`]: x = #{x}"
  end
end

ConditionalFlows.new.start