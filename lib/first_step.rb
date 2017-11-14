class FirstStep
  def car_finder
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
  end
end