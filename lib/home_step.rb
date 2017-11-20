class HomeStep
  def home_step
    begin
      find('[class*="homeButtonMain_"]').click
    rescue
      puts "There was a problem while completing 1st step".red
    end
  end
end