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
	context "#any_empty?" do
		it "returns true if any elements of the Array are empty" do
			expect(["", "red", ""].any_empty?).to be_truthy
		end
		it "returns false if there are no empty elements of the Array" do
			expect(["yellow", "red", "orange"].any_empty?).to be_falsey
		end
		it "returns true for an empty Array" do
			expect([].any_empty?).to be_truthy
		end
	end
	context "#none_empty?" do
		it "returns false if any elements of the Array are full" do
			expect(["orange", "red", ""].none_empty?).to be_falsey
		end
		it "returns true if there are no empty elements" do
			expect(["yellow", "red", "orange"].none_empty?).to be_truthy
		end
		it "returns false for an empty Array" do
			expect([].none_empty?).to be_falsey
		end
	end
	context "#uniq?" do
		it "returns false for no repeating guesses" do
			expect(["1", "2", "3", "4"].uniq?).to be_truthy
		end
		it "returns true if there are repeated guesses" do
			expect(["1", "1", "3", "4"].uniq?).to be_falsey
		end
	end
end
