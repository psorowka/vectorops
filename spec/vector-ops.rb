require 'spec_helper'

describe Vector do

  it "works to add two equal length vectors" do

    v1 = Vector[1,1,1,2,2,2]
    v2 = Vector[2,2,2,3,3,3]

    expect(v1 + v2).to eql(Vector[3,3,3,5,5,5])
  end

  it "refuses to add two unequal length vectors" do

    v1 = Vector[1,2,3]
    v2 = Vector[1,2,3,4,5]

    expect {v1 + v2}.to raise_error
  end

  it "returns a vector when selecting a subset of vectors" do 

    v = Vector[1,2,3,4,5,6,7,8]
    expect(v[2..4]).to eql(Vector[3,4,5])
  end

  it "works to use the += operator on the whole vector" do

    v1 = Vector[1,1,1,2,2,2]
    v2 = Vector[2,2,2,3,3,3]

    v1 += v2

    expect(v1).to eql(Vector[3,3,3,5,5,5])
  end


  it "works to use the += operator on a subset of a vector" do

    v1 = Vector[1,1,1,2,2,2]
    v2 = Vector[2,2,2,3,3,3]

    v1[0..2] += v2[3..5]
    
    expect(v1).to eql(Vector[4,4,4,2,2,2])
  end

  it "works to add a scalar to a vector" do

    v = Vector[0,0,0]

    expect(v + 2).to eql(Vector[2,2,2])
  end
end
