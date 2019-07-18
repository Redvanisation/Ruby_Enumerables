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

end