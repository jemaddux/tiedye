# Tiedye

[![Build Status](https://travis-ci.org/jemaddux/tiedye.svg?branch=master)](https://travis-ci.org/jemaddux/tiedye)

[![Code Climate](https://codeclimate.com/github/jemaddux/tiedye/badges/gpa.svg)](https://codeclimate.com/github/jemaddux/tiedye)

[![Test Coverage](https://codeclimate.com/github/jemaddux/tiedye/badges/coverage.svg)](https://codeclimate.com/github/jemaddux/tiedye)

## Installation

Add this line to your application's Gemfile:

    gem 'tiedye'

And then execute:

    $ bundle

Or install it yourself:

    $ gem install tiedye

## Usage

  Tiedye.all_colors.count => 504

  Tiedye.all_colors => ["alice_blue", "antique_white", "antique_white1", .....]

  You can call Tiedye.any_named_color.

  Tiedye.alice_blue => "#f0f8ff"

  Tiedye.red => "#ff0000"

  Tiedye.to_rgb("#ff0000") => [255, 0, 0]

  Tiedye.to_hex([255, 0, 0]) => "#FF0000"

  Tiedye.to_hex(255, 0, 0) => "#FF0000"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
