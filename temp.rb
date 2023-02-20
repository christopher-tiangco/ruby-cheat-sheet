# frozen_string_literal: true

class Temp
  def main
    a = 'test'
    puts a.object_id
    b = 'test'
    puts b.object_id
    a << 'new'
    puts "a = #{a} | b = #{b}... Now a.object_id = #{a.object_id}"
  end
end

Temp.new.main
