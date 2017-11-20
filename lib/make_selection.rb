class MakeSelection
  def make_selection
    begin
      find('div[class^="appContent"] > div > div > div:nth-child(2) > div:nth-child(4) > div:nth-child(1)').click
    rescue
      abort "There was a problem while selecting make".red
    end
  end
end

