require 'spec_helper'

describe Preferences::Store do
  before :each do
    @store = Preferences::StoreInstance.new
  end

  it "sets and gets a key" do
    @store.set :test, 1
    expect( @store.exist?(:test) ).to be_truthy
    expect( @store.get(:test) ).to eq(1)
  end

  it "can set and get false values when cache return nil" do
    @store.set :test, false
    expect( @store.get(:test) ).to be_falsey
  end

  it "will return db value when cache is emtpy and cache the db value" do
    preference = Preferences::Preference.where(:key => 'test').first_or_initialize
    preference.value = '123'
    preference.save

    Rails.cache.clear
    expect( @store.get(:test) ).to eq('123')
    expect( Rails.cache.read(:test) ).to eq('123')
  end

  it "should return and cache fallback value when supplied" do
    Rails.cache.clear
    expect( @store.get(:test){ false } ).to be_falsey
    expect( Rails.cache.read(:test) ).to be_falsey
  end

  it "should return but not cache fallback value when persistence is disabled" do
    Rails.cache.clear
    allow(@store).to receive_messages(:should_persist? => false)
    expect( @store.get(:test){ true } ).to be_truthy
    expect( Rails.cache.exist?(:test) ).to be_falsey
  end

  it "should return nil when key can't be found and fallback value is not supplied" do
    expect( @store.get(:random_key){ nil } ).to be_nil
  end

end
