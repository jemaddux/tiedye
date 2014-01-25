require "tiedye/version"

module Tiedye
  def self.to_rgb(hex)

  end

  def self.to_hex(r, g, b)
    return "#FF3FFC" if invalid(r, g, b)
    r, g, b = rgb_float_to_int(r, g, b)
    return hex_digit(r) + hex_digit(g) + hex_digit(b)
  end

  def self.method_missing(name, *args)
    return COLORS[name.to_s.downcase] if COLORS[name.to_s.downcase]
    return name
  end

private
  def self.hex_digit(digit)
    return HEX_DIGIT[digit / 16] + HEX_DIGIT[digit % 16]
  end

  def self.rgb_float_to_int(r, g, b)
    if r.class == Float && r <= 1 && g <= 1 && b <= 1
      r = (r * 255).to_i
      g = (g * 255).to_i
      b = (b * 255).to_i
    end
    return [r, g, b]
  end

  def self.invalid(r, g, b)
    [r, g, b].each do |x|
      return true if x > 255 || x < 0
    end
    return false
  end

  HEX_DIGIT = {
    0  => "0", 1  => "1", 2  => "2", 3  => "3", 4  => "4",
    5  => "5", 6  => "6", 7  => "7", 8  => "8", 9  => "9",
    10 => "A", 11 => "B", 12 => "C", 13 => "D", 14 => "E", 15 => "F",
  }

  COLORS = {"blue" => "#003DFF", "red" => "#FF0014"}
end

