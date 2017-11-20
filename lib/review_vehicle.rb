class ReviewVehicle
  def review_v_next
    begin
      find('button[class*="buttonNext"]').click
    rescue
      abort "There was a problem while clicking next on Review Vehicle page".red
    end
  end
end

