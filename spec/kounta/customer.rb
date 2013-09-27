require "helper"

describe Kounta::Category do

	before do
		@customer = Kounta::Company.new.customer(8263)
	end

	it "should have an id" do
		@customer.id.should be(389427)
	end

	it "should have a first name" do
		@customer.first_name.should eq("Samuel")
	end

	it "should have a last name" do
		@customer.last_name.should eq("Richardson")
	end

	it "should have a name" do
		@customer.name.should eq("Samuel Richardson")
	end

	it "should have an email" do
		@customer.email.should eq("sam@richardson.co.nz")
	end

end