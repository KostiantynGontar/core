require 'minitest/spec'

describe_recipe 'jboss::default' do
  describe "users and groups" do 
    it "creates a user for jboss" do
      user("jboss").must_exist
    end
    it "creates the jboss group" do
      group("jboss").must_exist
    end
  end
