module Gosling
    class Flows

      def self.method_missing(name, *params, &block)
        require File.join(Gosling.flows_path, "#{name.to_s}.rb") unless !defined?(name) 
        class_name = camel_case(name.to_s)

        Object::const_get(class_name).new.perform(*params)
      end

      def self.camel_case(file_name)
        file_name.split('_').map{|e| e.capitalize}.join
    end
  end
end