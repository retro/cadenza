require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Cadenza::VariableNode do

   it "should equal a node with the same name" do
      Cadenza::VariableNode.new("foo").should == Cadenza::VariableNode.new("foo")
   end

   it "should not equal a node with a different name" do
      Cadenza::VariableNode.new("foo").should_not == Cadenza::VariableNode.new("bar")
   end

   it "should return a list containing the identifier name" do
      Cadenza::VariableNode.new("foo").implied_globals.should == %w(foo)
   end

end