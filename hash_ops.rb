require 'json'

class HashOps
  def start
    puts "merge_op: #{merge_op}"
    line_break
    puts "convert_to_json: #{convert_to_json}"
    line_break
    puts "convert_json_to_hash: #{convert_json_to_hash}"
    line_break
  end

  def get_hash
    { key1: 'value1', key2: 'value2'}
  end

  def line_break
    2.times { puts "\n" }
  end

  def merge_op
    get_hash.merge key3: 'value3', key4: 'value4'
  end

  def convert_to_json
    get_hash.to_json
  end

  def convert_json_to_hash
    JSON.parse(get_hash.to_json)
  end
end

HashOps.new.start