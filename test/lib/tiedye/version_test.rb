require_relative '../../test_helper'

describe "Tiedye::VERSION" do
  it "must be defined" do
    Tiedye::VERSION.wont_be_nil
  end
end