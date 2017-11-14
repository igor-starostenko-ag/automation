current_path = File.dirname(__FILE__)

require 'selenium-webdriver'
require 'capybara/dsl'
require 'colorize'
require_relative current_path + "/lib/load_website"
require_relative current_path + "/lib/first_step"
require_relative current_path + "/lib/third_step"

include Capybara::DSL
Capybara.default_driver = :selenium_chrome

website_to_load = LoadWebsite.new
first_step = FirstStep.new
third_step = ThirdStep.new

#Loading AG website
website_to_load.website("https://www.autogravity.com")

#Completing 1st step
first_step.car_finder

#Completing Presonal info at step 3
#(Fname, Lname, DOB, phoneN, email, password)
third_step.personal_info_n_login("Ivan", "QA", "12/12/1988", "888-888-8888", "ivanqq@autogravity.com", "Hesoyam1")

#Completing Residence info at step 3
#Format (street, city, zipCode, MoveInDate, mPayment)
third_step.residence_info("157 Paseo De Valencia", "Laguna Woods", "92637", "12/2012", "1500")

#Completing Employment info at step 3
#Format (empName, empTitle, startDate, empPhone, income)
third_step.employment_info("AutoGravity", "QA", "12/2012", "777-777-7777", "10000")

#Completing Identification info at step 3 and finishing test
third_step.ssn_info("222-11-3333")

sleep(5)
