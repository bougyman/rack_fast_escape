require File.expand_path("../../helper", __FILE__)
describe "RackFastEscape" do
  describe "module embedding" do

    describe "escape methods" do
      it "defines fast_escape on Rack::Utils" do
        Rack::Utils.respond_to?(:fast_escape).should.be.true
      end

      it "aliases original escape on Rack::Utils to old_escape" do
        Rack::Utils.respond_to?(:old_escape).should.be.true
      end

      it "sets Rack::Utils.fast_escape?" do
        Rack::Utils.fast_escape?.should.be.true
      end
    end

    describe "unescape methods" do
      it "defines fast_unescape on Rack::Utils" do
        Rack::Utils.respond_to?(:fast_unescape).should.be.true
      end

      it "aliases original unescape on Rack::Utils to old_unescape" do
        Rack::Utils.respond_to?(:old_unescape).should.be.true
      end

      it "sets Rack::Utils.fast_unescape?" do
        Rack::Utils.fast_unescape?.should.be.true
      end
    end

  end

end

describe "Rack::Utils" do
  describe "#escape" do
    it "unescapes spaces in an encoded url" do
      Rack::Utils.unescape("foo%20bar").should == "foo bar"
      Rack::Utils.unescape("foo+bar").should == "foo bar"
    end
  end

  describe "#escape" do
    it "escapes spaces in an encoded url" do
      Rack::Utils.escape("foo bar").should == "foo+bar"
    end
  end
end

