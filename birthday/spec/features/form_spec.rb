require "./birthday"

feature "Check the birthday" do
  scenario "see birthday wishes" do
    visit("/")
    fill_in :name, with: "Ewa"
    fill_in :day, with: 7
    #fill_in :month, with: "October"
    find_field("month").set("October")
    click_button "Go!"
    expect(page).to have_content "Happy Birthday, Ewa!"
  end

  scenario "see birthday wishes" do
    visit("/")
    fill_in :name, with: "Ewa"
    fill_in :day, with: 17
    #fill_in :month, with: "October"
    find_field("month").set("October")
    click_button "Go!"
    expect(page).to have_content "Your birthday will be in 10 days, Ewa!"
  end
end
