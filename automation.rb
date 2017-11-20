require 'selenium-webdriver'
require 'capybara/dsl'
require 'colorize'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

include Capybara::DSL
Capybara.default_driver = :selenium_chrome

Caller.new.class_caller

sleep(2)
