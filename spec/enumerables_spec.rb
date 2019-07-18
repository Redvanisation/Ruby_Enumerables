require "./lib/enumerables"

RSpec.describe Enumerable do
    describe "#my_each" do
        it "takes a block as an argument" do
            expect([9,2,1].my_each {|i| i}).to eql([9,2,1])
        end 
    end

    describe "#my_each_with_index" do
        it "returns the elements and their indices" do
            expect([9,2,1].my_each_with_index {|value, index| index}).to eql([0,1,2])
        end 
    end

    describe "#my_select" do
        it "returns a new array with elements that pass a condition given in the block" do
            expect([9,2,1,10,6].my_select {|i| i % 2 == 0}).to eql([2,10,6])
        end 
    end

end