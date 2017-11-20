class InventoryPage
  def inventory_selection
    begin
      find('div > article:first-of-type').click
    rescue
      abort "There was a problem while chosing inventory vehicle".red
    end
  end
end

