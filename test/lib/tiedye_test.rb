require_relative '../test_helper'

describe "Tiedye" do
  describe "self.to_rgb(hex)" do
    it "knows red" do
      assert_equal [255, 0, 0], Tiedye.to_rgb("FF0000")
    end

    it "knows white" do
      assert_equal [255, 255, 255], Tiedye.to_rgb("#FFFFFF")
    end

    it "knows blue" do
      assert_equal [0, 0, 255], Tiedye.to_rgb("0000FF")
    end

    it "knows black" do
      assert_equal [0, 0, 0], Tiedye.to_rgb("#000000")
    end

    it "knows green" do
      assert_equal [0, 255, 0], Tiedye.to_rgb("00FF00")
    end
  end
end