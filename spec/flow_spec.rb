require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

   describe "method_missing" do
   		it "should create and return a new flow class" do
   			require File.join(Gosling.flows_path, "yay_flow.rb")
   			YayFlow.any_instance.expects(:perform)
   			Gosling::Flows.yay_flow
   		end
   end