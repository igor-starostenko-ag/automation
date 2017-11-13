require 'selenium-webdriver'
require 'capybara/dsl'
require 'colorize'

include Capybara::DSL
Capybara.default_driver = :selenium_chrome

#Loading AG website
begin
  visit("https://www-staging.autogravity.com")
  puts "Web site loaded".green
rescue
  puts "Failed while loading website".red
end

#Completing 1st step
begin
  find('[class*="homeButtonMain_"]').click
  sleep(0.5)
  find('[alt^="Acura"]').click
  sleep(0.5)
  find('span[class*="zipCode"]').click
  sleep(0.5)
  find('[class*="geoButton_"]').click
  sleep(2)
  find('img[alt^="ILX"]').click
  sleep(0.5)
  find('div > article:first-of-type').click
  sleep(0.5)
  find('button[class*="buttonNext"]').click
  sleep(0.5)
  find('button[class*="newButton"]').click
  sleep(0.5)
  puts "1st Step Completed".green
rescue
  puts "There was a problem while completing 1st step".red
end

#Completing Presonla info at step 3
begin
  find('#firstNameTextField').set('John')
  find('#lastNameTextField').set('QA')
  find('#dobTextField').set('12/12/1988')
  find('#mobilePhoneTextField').set('888-888-8888')
  find('div[class*="toggle"] > a').click
  find('#emailTextField').set('ivanqq@autogravity.com')
  find('#passwordTextField').set('Hesoyam1')
  find('button[class*="btn-primary"]').click
  sleep(0.5)
  find('#agselecthouseinfo').click
  find('body > div:nth-child(19) > div > div > div > div:nth-child(1) > span > div > div > div').click
  sleep(0.5)
  puts "LogIn and Personal info section completed successfully" .green
rescue
  puts "There was a problem while completing LogIn OR Personal info section".red
end

#Completing Residence info at step 3
begin
  find('#aginputaddress').set('157 Paseo De Valencia')
  find('#aginputcity').set('Laguna Woods')
  find('#aginputzip').set('92637')
  find('#aginputmoveindate').set('12/2012')
  find('#aginputpayment').set('1500')
  find('#agselectstate').click
  find('div:nth-child(6) > span[role^="menuitem"]').click
  find('button[class^=btn]').click
  puts "Residence info section completed successfully".green
rescue
  puts "There was a problem while completing Residence info section".red
end

#Completing Employment info at step 3
begin
  find('#agselectemployment-status').click
  find('div:nth-child(1) > span[role^="menuitem"]').click
  find('#employer-name').set('AutoGravity')
  find('#employee-title').set('QA')
  find('#employee-start-date').set('12/2012')
  find('#employer-phone-number').set('949-521-3939')
  find('#gross-monthly-income').set('9000')
  find('button[class^=btn]').click
  puts "Employment info section completed successfully".green
rescue
  puts "There was a problem while completing Employment info section".red
end

#Completing Identification info at step 3 and finishing test
begin
  find('input[id*="SOCIALSECURITYNUMBER"]').set('222-33-2222')
  puts "Test completed successfully".green
rescue
  puts "There was a problem while completing Identification info section".red
end

sleep(5)
