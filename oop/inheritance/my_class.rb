module Oop
  module Inheritance
    class MyClass < ParentClass
      attr_reader :property_one
      attr_writer :property_two
      attr_accessor :property_three
      attr_accessor :similar_instance

      def initialize
        @property_one = "Property one"
        @property_three = "Property three"
      end

      def self.method_one
        'MyClass#method_one class method'
      end

      def method_two
        'MyClass#method_two instance method'
      end

      def call_similar_instance_protected_method
        similar_instance.protected_method_one
      end

      def call_parent_protected_method
        protected_method_two
      end

      def call_instance_private_method
        private_method_one
      end
      
      def call_similar_instance_private_method
        # Raise an error if the similar instance is able to access this instance's private methods
        raise StandardError if similar_instance.respond_to?(:private_method)

        'call_similar_instance_private_method is inaccessible from another instance'
      end

      protected

      def protected_method_one
        'MyClass#protected_method_one protected method'
      end

      private

      def private_method_one
        'MyClass#private_method_one private method'
      end
    end
  end
end
