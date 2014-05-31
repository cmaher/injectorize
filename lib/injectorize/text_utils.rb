module Injectorize
  class TextUtils
    def self.pascal_to_snake(str)
      str.gsub(/([A-Z])/, '_\1')[1..-1].downcase
    end
  end
end