class ThirdStep
  def personal_info_n_login (f_name, l_name, dob, phone_n, email, password)
    begin
      find('#firstNameTextField').set("#{f_name}")
      find('#lastNameTextField').set("#{l_name}")
      find('#dobTextField').set("#{dob}")
      find('#mobilePhoneTextField').set("#{phone_n}")
      find('div[class*="toggle"] > a').click
      find('#emailTextField').set("#{email}")
      find('#passwordTextField').set("#{password}")
      find('button[class*="btn-primary"]').click
      sleep(0.5)
      find('#agselecthouseinfo').click
      find('body > div:nth-child(19) > div > div > div > div:nth-child(1) > span > div > div > div').click
      sleep(0.5)
      puts "LogIn and Personal info section completed successfully" .green
    rescue
      puts "There was a problem while completing LogIn OR Personal info section".red
    end
  end


  def residence_info (street, city, zip_code, move_in_date, m_payment)
    begin
      find('#aginputaddress').set("#{street}")
      find('#aginputcity').set("#{city}")
      find('#aginputzip').set("#{zip_code}")
      find('#aginputmoveindate').set("#{move_in_date}")
      find('#aginputpayment').set("#{m_payment}")
      find('#agselectstate').click
      find('div:nth-child(6) > span[role^="menuitem"]').click
      find('button[class^=btn]').click
      puts "Residence info section completed successfully".green
    rescue
      puts "There was a problem while completing Residence info section".red
    end
  end


  def employment_info (emp_name, emp_title, start_date, emp_phone, income)
    begin
      find('#agselectemployment-status').click
      find('div:nth-child(1) > span[role^="menuitem"]').click
      find('#employer-name').set("#{emp_name}")
      find('#employee-title').set("#{emp_title}")
      find('#employee-start-date').set("#{start_date}")
      find('#employer-phone-number').set("#{emp_phone}")
      find('#gross-monthly-income').set("#{income}")
      find('button[class^=btn]').click
      puts "Employment info section completed successfully".green
    rescue
      puts "There was a problem while completing Employment info section".red
    end
  end

  def ssn_info (ssn)
    begin
      find('input[id*="SOCIALSECURITYNUMBER"]').set("#{ssn}")
      puts "Test completed successfully".green
    rescue
      puts "There was a problem while completing Identification info section".red
    end
  end
end