require File.expand_path('../../../spec_helper', __FILE__)

ruby_version_is '2.1' do
  describe "Fixnum#bit_length" do
    it "returns the position of the leftmost bit of a positive number" do
      0.bit_length.should == 0
      1.bit_length.should == 1
      2.bit_length.should == 2
      3.bit_length.should == 2
      4.bit_length.should == 3
      n = fixnum_max.bit_length
      fixnum_max[n].should == 0
      fixnum_max[n-1].should == 1
    end

    it "returns the position of the leftmost 0 bit of a negative number" do
      -1.bit_length.should == 0
      -2.bit_length.should == 1
      -3.bit_length.should == 2
      -4.bit_length.should == 2
      -5.bit_length.should == 3
      n = fixnum_min.bit_length
      fixnum_min[n].should == 1
      fixnum_min[n-1].should == 0
    end
  end
end
