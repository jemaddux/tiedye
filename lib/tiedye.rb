require "tiedye/version"
require "colors"
require "hex_digit"

module Tiedye
  def self.to_rgb(hex)
    hex = hex.gsub("#", "")
    hex = [hex[0..1], hex[2..3], hex[4..5]]
    options = {"FF" => 255, "00" => 0}
    return hex.collect{|h| options[h]}
  end

  def self.to_hex(r = "x", g = "x", b = "x")
    if r.class == Array
      temp = r
      r = temp[0]
      g = temp[1]
      b = temp[2]
    end
    return random_hex if invalid(r, g, b)
    r, g, b = rgb_float_to_int(r, g, b)
    return "#" + hex_digit(r) + hex_digit(g) + hex_digit(b)
  end

  def self.method_missing(name, *args)
    return COLORS[name.to_s.downcase] if COLORS[name.to_s.downcase]
    return COLORS[name.to_s] if COLORS[name.to_s]
    return name
  end

  def self.all_colors
    return COLORS.keys
  end

  def self.hex_pair_to_rgb_digit(hex_pair)
    hexz = hex_pair.upcase.split("")
    number  = HEX_DIGIT.key(hexz[0]) * 16
    number += HEX_DIGIT.key(hexz[1])
    return number
  end
  private_class_method :hex_pair_to_rgb_digit

  def self.to_6_hex(hex)
    hex = hex.gsub("#", "")
    if hex.length == 3
      letters = hex.split("")
      hex = ""
      letters.each do |letter|
        hex += letter + letter
      end
    end
    return hex
  end
  private_class_method :to_6_hex

  def self.random_hex
    hex = "#"
    3.times do
      hex += hex_digit(rand(0..255))
    end
    return hex
  end
  private_class_method :random_hex

  def self.hex_digit(digit)
    return HEX_DIGIT[digit / 16] + HEX_DIGIT[digit % 16]
  end
  private_class_method :hex_digit

  def self.rgb_float_to_int(r, g, b)
    if r.class == Float && r <= 1 && g <= 1 && b <= 1
      r = (r * 255).to_i
      g = (g * 255).to_i
      b = (b * 255).to_i
    end
    return [r, g, b]
  end
  private_class_method :rgb_float_to_int

  def self.invalid(r, g, b)
    begin
      [r, g, b].each do |x|
        return true if x == "x"
        return true if x > 255 || x < 0
      end
    rescue
      return false
    end
    return false
  end
  private_class_method :invalid
end
