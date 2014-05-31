require 'spec_helper'
require 'injectorize/text_utils'

TextUtils = Injectorize::TextUtils

describe TextUtils do
  describe "pascal_to_snake" do
    it "converts PascalCase to snake_case" do
      pascal = 'IAmAString'
      snake = 'i_am_a_string'
      actual = TextUtils.pascal_to_snake(pascal)
      actual.should eql(snake)
    end
  end
end