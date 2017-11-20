class ZipAndTrim
  def zip_selection
    begin
      find('span[class*="zipCode"]').click
      sleep(0.5)
      find('[class*="geoButton_"]').click
      sleep(2)
    rescue
      abort "There was a problem while chosing location".red
    end
  end

  def trim_seletion
    begin
      randomize = rand(1..6)
      find(" div > div > div > div > div > div.container-fluid > div > div:nth-child(#{randomize})").click
    rescue
      abort "There was a problem while selecting trim".red
    end
  end
end

