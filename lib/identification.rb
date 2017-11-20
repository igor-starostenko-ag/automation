class Identification
  def ssn
    begin
      find('input[id*="SOCIALSECURITYNUMBER"]').set("#{rand(100..999)}-#{sprintf '%02d', rand(01..99)}-#{sprintf '%04d', rand(0001..1000)}")
      puts "Test completed successfully".green
    rescue
      puts "There was a problem while completing Identification info section".red
    end
  end
end