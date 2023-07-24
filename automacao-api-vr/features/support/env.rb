#nessa classe carrego o arquivo de url para hml onde utilizo o CONFIG para invocar em outras classes
require 'httparty'
require 'rspec'

require_relative 'spec_helper/spec_rest.rb'


CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")

#deixar publico
World(REST)