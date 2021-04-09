require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
    assert_selector "h1", text: "Find here all products"
    assert_selector ".card-product", count: Product.count
  end

  test "a signed in user must be able to create a product" do
    login_as users(:george)
    visit "products/new"
    fill_in "product_name", with: "White Mocca"
    fill_in "product_tagline", with: "Brand new model brought from Canada"
    click_on "Create product"
    assert_equal root_path, page.current_path
    assert_text "Brand new model brought from Canada"
  end
end
