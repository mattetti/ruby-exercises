describe "binary search" do

  it "should return -1 if not found" do
    chop(3, []).should == -1
    chop(3, [1]).should == -1
    chop(0, [1, 3, 5]).should == -1
    chop(2, [1, 3, 5]).should == -1
    chop(4, [1, 3, 5]).should == -1
    chop(6, [1, 3, 5]).should == -1
    chop(0, [1, 3, 5, 7]).should == -1
    chop(2, [1, 3, 5, 7]).should == -1
    chop(4, [1, 3, 5, 7]).should == -1
    chop(6, [1, 3, 5, 7]).should == -1
    chop(8, [1, 3, 5, 7]).should == -1
  end

  it "should return 0, if it's the first item of the array" do
    chop(1, [1, 3, 5]).should == 0
  end

  it "should return the position in the index" do
    chop(3, [1, 3, 5]).should == 1
    chop(5, [1, 3, 5]).should == 2
    chop(1, [1, 3, 5, 7]).should == 0
    chop(3, [1, 3, 5, 7]).should == 1
    chop(5, [1, 3, 5, 7]).should == 2
    chop(7, [1, 3, 5, 7]).should == 3
  end

end
