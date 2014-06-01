require 'injectorize/text_utils'

module Injectorize
  module Injector

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods

      def inject(klass)
        build_accessor klass
      end

      private

      def build_accessor(klass)
        klass_name = TextUtils.pascal_to_snake(klass.name)
        attr_name = "@#{klass_name}".to_sym
        build_getter(attr_name, klass_name, klass)
        build_setter(attr_name, klass_name)
      end

      def build_getter(attr_name, klass_name, klass)
        getter_name = klass_name.to_sym
        class_eval do
          define_method(getter_name) do
            klass_instance = instance_variable_get(attr_name) || klass.new
            instance_variable_set(attr_name, klass_instance)
          end
        end
      end

      def build_setter(attr_name, klass_name)
        setter_name = "#{klass_name}=".to_sym
        class_eval do
          define_method(setter_name) do |new_instance|
            instance_variable_set(attr_name, new_instance)
          end
        end
      end
    end
  end
end
