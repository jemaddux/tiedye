$:.unshift('.')

require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require 'minitest/autorun'
require 'minitest/pride'
require File.expand_path("../../lib/tiedye.rb", __FILE__)