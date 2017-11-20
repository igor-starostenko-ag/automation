class PersonalInfo
  def personal_info_n_login (f_name, l_name, email, password)
    begin
      sleep(0.5)
      find('#firstNameTextField').set("#{f_name}")
      find('#lastNameTextField').set("#{l_name}")
      find('#dobTextField').set("#{sprintf '%02d', rand(1..11)}/#{sprintf '%02d', rand(1..26)}/#{rand(1918..1998)}")
      find('#mobilePhoneTextField').set("#{rand(100..999)}-#{rand(100..999)}-#{sprintf '%04d', rand(0001..1000)}")
      find('div[class*="toggle"] > a').click
      find('#emailTextField').set("#{email}")
      find('#passwordTextField').set("#{password}")
      find('button[class*="btn-primary"]').click
      puts "LogIn and Personal info section completed successfully" .green
    rescue
      puts "There was a problem while completing Personal info OR LogIn section".red
    end
  end
end