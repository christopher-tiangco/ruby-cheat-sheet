require './oop/inheritance/parent_class.rb'
require './oop/inheritance/my_class.rb'

class MethodAccess
  def start
    params = { target_class: '::Oop::Inheritance::MyClass' }
    
    # Invoking a class method
    params[:target_method] = 'method_one'
    params[:invocation_type] = :class 
    invoke(params)
    puts "\n"

    # # Invoking an instance method
    params[:target_method] = 'method_two'
    params[:invocation_type] = :instance 
    invoke(params)
    puts "\n"

    # Invoking an instance method of the parent class for ::Oop::Inheritance::MyClass
    params[:target_method] = 'method_three'
    params[:invocation_type] = :instance 
    invoke(params)
    puts "\n"

    # Invoking a protected method of a different class will not resolve the method
    params[:target_method] = 'protected_method_one'
    params[:invocation_type] = :instance 
    invoke(params)
    puts "\n"

    # An instance invoking its parent's protected method
    params[:target_method] = 'call_parent_protected_method'
    params[:invocation_type] = :instance 
    invoke(params)
    puts "\n"

    # An instance can invoke another instance's protected methods so 
    # long as the former is the same class as the latter
    puts "Try invoking protected method of a similar instance of ::Oop::Inheritance::MyClass.new..."
    first_instance = ::Oop::Inheritance::MyClass.new
    second_instance = ::Oop::Inheritance::MyClass.new
    first_instance.similar_instance = second_instance
    puts "Result: #{first_instance.call_similar_instance_protected_method}"
    puts "\n"

    # Invoking a private method of a different class will not resolve the method
    params[:target_method] = 'private_method_one'
    params[:invocation_type] = :instance 
    invoke(params)
    puts "\n"

    # Invoking a private method of an instance via a public method that calls it
    params[:target_method] = 'call_instance_private_method'
    params[:invocation_type] = :instance
    invoke(params)
    puts "\n"
    
    # An instance CANNOT invoke another instance's private methods even if the former is the same class as the latter
    puts "Try invoking private method of a similar instance of ::Oop::Inheritance::MyClass.new..."
    first_instance = ::Oop::Inheritance::MyClass.new
    second_instance = ::Oop::Inheritance::MyClass.new
    first_instance.similar_instance = second_instance
    puts "Result: #{first_instance.call_similar_instance_private_method}"
    puts "\n"
  end

  private

  def invoke(params)
    puts "Try invoking #{params[:target_class]}.#{params[:target_method]} #{params[:invocation_type]} method..."
    result(params)
  end

  def success?(params)
    return constantize(params[:target_class]).respond_to?(params[:target_method]) if params[:invocation_type] == :class

    constantize(params[:target_class]).new.respond_to?(params[:target_method])
  end

  def result(params) 
    return failure(params) unless success?(params)

    return puts "Result: #{constantize(params[:target_class]).public_send(params[:target_method])}" if params[:invocation_type] == :class
    
    puts "Result: #{constantize(params[:target_class]).new.public_send(params[:target_method])}"
  end

  def constantize(target_class)
    Object.const_get(target_class)
  end

  def failure(params)
    puts "Result: #{params[:target_method]} is inaccessible @ #{params[:target_class]}..."
  end
end

MethodAccess.new.start
