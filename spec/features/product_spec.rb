require 'rails_helper'

describe "Product", type: :feature do
  it "redirect to the created product after creating a product" do
    visit "/products/new"
    fill_in "product_title", with: "Coca-cola"
    fill_in "product_description", with: "Lata de 500 ml"
    find("input[type='submit']").click
    expect(page).to have_content('Coca-cola')
  end
end
