require "spec_helper"

describe Array do
	context "#all_empty?" do
		it "returns true if all elements of the Array are empty" do
			expect(["", "", ""].all_empty?).to be_truthy
		end
		it "returns false if some of the Array elements are not empty" do
			expect(["", "red", ""].all_empty?).to be_falsey
		end
		it "returns true for an empty Array" do
			expect([].all_empty?).to be_truthy
		end
	end
end
