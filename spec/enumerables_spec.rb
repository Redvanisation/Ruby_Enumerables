require "./lib/enumerables"


RSpec.describe Enumerable do
    
    let(:arr) {[9,2,1,10,6]}
    
    describe "#my_each" do
    it "takes a block as an argument" do
        expect(arr.my_each {|i| i}).to eql([9,2,1,10,6])
        end 
    end

    describe "#my_each_with_index" do
        it "returns the elements and their indices" do
            expect(arr.my_each_with_index {|value, index| index}).to eql([0,1,2,3,4])
        end 
    end

    describe "#my_select" do
        it "returns a new array with elements that pass a condition given in the block" do
            expect(arr.my_select {|i| i % 2 == 0}).to eql([2,10,6])
        end 
    end

    describe "#my_all?" do
        it "returns true if all the elements in the block passes a condition" do
            expect(arr.my_all? {|i| i % 2 == 0}).not_to eql(true)
        end 
    end

    describe "#my_none?" do
        it "returns true if none of the elements in the block passes a condition" do
            expect(arr.my_none? {|i| i > 0 }).not_to eql(true)
        end 
    end

    describe "#my_count" do
        it "returns the number of elements that passes a condition in an a block" do
            expect(arr.my_count {|i| i == 3}).to eql(0)
        end 
 
        it "returns the length of the array if no condition is given" do
            expect(arr.my_count).to eql(5)
        end 
    end

    describe "#my_map" do
        it "returns a new array based on the code given in the block" do
            expect(arr.my_map {|i| i + 2 }).to eql([11,4,3,12,8])
        end 
    end

    describe "#my_inject" do
        it "returns a single element reduced based on the condition given in the block" do
            expect(arr.my_inject {|i,o| i + o }).to eql(28)
        end 
    end

end