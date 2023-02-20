module Oop
  module Inheritance
    class ParentClass
      def initialize; end

      def method_three
        'ParentClass#method_three instance method'
      end

      protected

      def protected_method_two
        #puts '[ParentClass]: Invoking protected_method_two for this instance...'
        'ParentClass#protected_method_two protected method'
      end
    end
  end
end
