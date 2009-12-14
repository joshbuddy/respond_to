require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "RespondTo" do
  it "should return true for a method that exists through ===" do
    (RespondTo(:<<) === "testing").should be_true
  end

  it "should return false for a method that doesn't exist through ===" do
    (RespondTo(:crazytown) === ('testing')).should be_false
  end

  it "should only make one object for each method" do
    RespondTo(:crazytown).equal?(RespondTo(:crazytown)).should be_true
  end

end
