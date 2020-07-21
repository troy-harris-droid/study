require_relative '../is_rotation.rb'
require 'pry'

RSpec.describe Rotate do

  begin
    r = Rotate.new
  end

  it "ascending orray" do
    a = [1,2,3]
    b = [1,2,3]
    expect(r.is_rotation(a,b)).to eq(true)
  end

 it "rotated orray" do
     a = [5,3,1]
     b = [3,1,5]
     expect(r.is_rotation(a,b)).to eq(true)
 end

  it "larger sized arrayB" do
    a = [1,2,3]
    b = [1,2,3,4]
    expect(r.is_rotation(a,b)).to eq(false)
  end
 
  it "larger sized arrayA" do
     a = [1,2,3,4,5]
     b = [1,2,3,4]
     expect(r.is_rotation(a,b)).to eq(false)
   end

end

