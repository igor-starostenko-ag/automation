class Caller
  def class_caller
    #Loading AG website
    LoadWebsite.new.website("https://www.autogravity.com")
    #Home page
    HomeStep.new.home_step
    #Make Selection Page
    MakeSelection.new.make_selection
    #Trim Selection Page
    ZipAndTrim.new.zip_selection
    #Trim Selection Page
    ZipAndTrim.new.trim_seletion
    #Inventory Vehicle Selection Page
    InventoryPage.new.inventory_selection
    #Review Vehicle Page
    ReviewVehicle.new.review_v_next
    #Review Details Page
    ReviewDetails.new.review_d_next
    #Completing Presonal info at step 3
    PersonalInfo.new.personal_info_n_login("Ivan", "QA", "fake_fico_800@autogravity.com", "Welcome1")
    #Completing Residence info at step 3
    ResidenceInfo.new.completing_residence_info("157 Paseo De Valencia", "Laguna Woods", "92637")
    #Completing Employment info at step 3
    EmploymentInfo.new.completing_employment_info("AutoGravity", "QA")
    #Completing Identification info at step 3 and finishing test
    Identification.new.ssn
  end
end