# Because I'm not using Ruby on Rails, I have to install the `activesupport` gem
# in replit's Packager.
# Then I have to run this file using bundle exec ruby <this_file>
require 'active_support/core_ext/hash/indifferent_access'

def main
  # Basic hash
  hash1 = { 'key1' => 'value1a', 'key2' => 'value2a' }

  # Symbolic hashes
  symbolic_hash1 = { key1: 'value1b', key2: 'value2b' }
  symbolic_hash2 = { 'key1': 'value1c', 'key2': 'value2c' }
  symbolic_hash3 = { key1: 'value1d', key2: 'value2d' }

  # Accessing basic hash
  puts "hash1['key1'] = #{hash1['key1']}"
  line_break

  # Accessing symbolic hash
  puts "symbolic_hash1[:key1] = #{symbolic_hash1[:key1]}"
  puts "symbolic_hash1[:key2] = #{symbolic_hash1[:key2]}"
  puts "symbolic_hash2[:key1] = #{symbolic_hash2[:key1]}"
  puts "symbolic_hash2[:key2] = #{symbolic_hash2[:key2]}"
  puts "symbolic_hash3[:key1] = #{symbolic_hash3[:key1]}"
  puts "symbolic_hash3[:key2] = #{symbolic_hash3[:key2]}"
  line_break

  # Accessing symbolic hashes as string keys - made possible by .with_indifferent_access
  puts "symbolic_hash1.with_indifferent_access['key1'] = #{symbolic_hash1.with_indifferent_access['key1']}"
  puts "symbolic_hash1.with_indifferent_access['key2'] = #{symbolic_hash1.with_indifferent_access['key2']}"
  puts "symbolic_hash2.with_indifferent_access['key1'] = #{symbolic_hash2.with_indifferent_access['key1']}"
  puts "symbolic_hash2.with_indifferent_access['key2'] = #{symbolic_hash2.with_indifferent_access['key2']}"
  puts "symbolic_hash3.with_indifferent_access['key1'] = #{symbolic_hash3.with_indifferent_access['key1']}"
  puts "symbolic_hash3.with_indifferent_access['key2'] = #{symbolic_hash3.with_indifferent_access['key2']}"
end

def line_break
  2.times { puts "\n" }
end

main
