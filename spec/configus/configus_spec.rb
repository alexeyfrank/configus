require 'spec_helper'

describe Configus do

  before do
    Configus.build :dev do
      env :dev do
        email 'test@test.com'
        company do
          title 'Microsoft'
          country 'United States'
        end  
      end
    end
  end

  it 'should get value by key' do
    configus.email.should == 'test@test.com'
  end

  it 'should get value by key as hash' do
    configus[:email].should == 'test@test.com'
  end

  it 'should get nested value by key' do
    configus.company.title.should == 'Microsoft'
    configus.company.country.should == 'United States'
  end

  it 'should get nested value by key as hash' do
    configus[:company][:title].should == 'Microsoft'
    configus[:company][:country].should == 'United States'
  end

end
