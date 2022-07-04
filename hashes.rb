# Basic hash
hash1 = { 'key1' => 'value1a', 'key2' => 'value2a' }

# Symbolic hashes
symbolic_hash1 = { key1: 'value1b', key2: 'value2b' }
symbolic_hash2 = { 'key1': 'value1c', 'key2': 'value2c' }
symbolic_hash3 = { :key1 => 'value1d', :key2 => 'value2d' }

# Accessing basic hash
puts "hash1['key1'] = #{hash1['key1']}"

# Accessing symbolic hash
puts "symbolic_hash1[:key1] = #{symbolic_hash1[:key1]}"
puts "symbolic_hash1[:key2] = #{symbolic_hash1[:key2]}"
puts "symbolic_hash2[:key1] = #{symbolic_hash2[:key1]}"
puts "symbolic_hash2[:key2] = #{symbolic_hash2[:key2]}"
puts "symbolic_hash3[:key1] = #{symbolic_hash3[:key1]}"
puts "symbolic_hash3[:key2] = #{symbolic_hash3[:key2]}"