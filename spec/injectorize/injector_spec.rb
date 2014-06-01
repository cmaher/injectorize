require 'spec_helper'
require 'injectorize/injector'

Injector = Injectorize::Injector

describe Injector do
  InjectedClass = Class.new

  class InjectingClass
    include Injector

    inject InjectedClass
  end

  let(:injecting) { InjectingClass.new }

  describe :inject do
    it "provides the injected class via its snake_case name" do
      expect(injecting.injected_class).to be_an InjectedClass
    end

    it "allows the default injected class instance to be overridden" do
      NewInjectedClass = Class.new
      injecting.injected_class = NewInjectedClass.new
      expect(injecting.injected_class).to be_a NewInjectedClass
    end
  end
end