class ResidenceInfo
  def completing_residence_info (street, city, zip_code)
    begin
      sleep(0.5)
      find('#agselecthouseinfo').click
      find('body > div> div > div > div > div:nth-child(1) > span').click
      sleep(0.5)
      find('#aginputaddress').set("#{street}")
      find('#aginputcity').set("#{city}")
      find('#aginputzip').set("#{zip_code}")
      find('#aginputmoveindate').set("#{sprintf '%02d', rand(1..12)}/#{rand(2000..2014)}")
      find('#aginputpayment').set("#{rand(500..5000)}")
      find('#agselectstate').click
      find('div:nth-child(6) > span[role^="menuitem"]').click
      find('button[class^=btn]').click
      puts "Residence info section completed successfully".green
    rescue
      puts "There was a problem while selecting residence info".red
    end
  end
end