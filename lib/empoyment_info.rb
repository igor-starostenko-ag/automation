class EmploymentInfo
  def completing_employment_info (emp_name, emp_title)
    begin
      find('#agselectemployment-status').click
      find('div:nth-child(1) > span[role^="menuitem"]').click
      find('#employer-name').set("#{emp_name}")
      find('#employee-title').set("#{emp_title}")
      find('#employee-start-date').set("#{sprintf '%02d', rand(1..12)}/#{rand(2010..2014)}")
      find('#employer-phone-number').set("#{rand(100..999)}-#{rand(100..999)}-#{sprintf '%04d', rand(0001..1000)}")
      find('#gross-monthly-income').set("#{rand(500..5000)}")
      find('button[class^=btn]').click
      puts "Employment info section completed successfully".green
    rescue
      puts "There was a problem while selecting Employment info".red
    end
  end
end