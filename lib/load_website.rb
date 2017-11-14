class LoadWebsite
  def website (url)
    begin
      visit("#{url}")
      page.has_css?('svg[height^="28"]')
      puts "Web site loaded".green
    rescue
      puts "Failed while loading website".red
      abort
    end
  end
end