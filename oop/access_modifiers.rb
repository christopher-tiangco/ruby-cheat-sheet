require './oop/inheritance/parent_class.rb'
require './oop/inheritance/my_class.rb'

class AccessModifiers
  def self.start
    my_class_obj_one = ::Oop::Inheritance::MyClass.new

    # Accessing an instance 'reader' attribute
    puts "Value of property_one: #{my_class_obj_one.property_one}"
    puts "\n"

    # Instance 'writer' attribute cannot be accessed as getter
    puts "Does method property_two exist: #{my_class_obj_one.respond_to?(:property_two)}"
    puts "\n"

    # Accessing an instance 'accessor' attribute
    puts "Value of property_three: #{my_class_obj_one.property_three}"
    puts "\n"
    puts "Does method property_three exist: #{my_class_obj_one.respond_to?(:property_three)}"
  end
end

AccessModifiers.start
