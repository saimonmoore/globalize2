require File.dirname(__FILE__) + '/../spec/helper.rb'
require 'globalize/model/attribute_translation'

include Globalize::Model

describe AttributeTranslation do
  include Spec::Matchers::HaveAttribute
  
  before do
    @translation = AttributeTranslation.new 'foo', :locale => 'en-US', 
      :requested_locale => 'de-DE'
  end
  
  it "has the attributes :locale, :requested_locale" do
    @translation.locale.should == 'en-US'
    @translation.requested_locale.should == 'de-DE'
  end

  it "has the method fallback?" do
    @translation.should_not be_a_fallback
  end
  
end
