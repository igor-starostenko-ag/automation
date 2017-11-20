class ReviewDetails
  def review_d_next
    begin
      find('button[class*="newButton"]').click
      puts "1st Step Completed".green
    rescue
      abort "There was a problem while clicking next on Review Details page".red
    end
  end
end

