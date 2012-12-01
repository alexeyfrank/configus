require 'spec_helper'

describe Configus do

  before do
    Configus.build :dev do
      env :dev do
        email 'test@test.com'
      end
    end
  end

  it 'should have get value by key' do
    configus.email.should == 'test@test.com'
  end
end
