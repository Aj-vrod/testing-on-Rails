require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
    assert_selector "h1", text: "Find here all products"
    assert_selector ".card-product", count: Product.count
    assert_selector ".card-product-infos", count: Product.count
  end

  test "a signed in user must be able to create a product" do
    login_as users(:george)
    visit "products/new"
    fill_in "product_name", with: "White Mocca"
    fill_in "product_tagline", with: "Brand new model brought from Canada"
    fill_in "product_url", with: "https://images.pexels.com/photos/2365572/pexels-photo-2365572.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
    click_on "Create Product"
    assert_equal root_path, page.current_path
    assert_text "Brand new model brought from Canada"
    save_and_open_screenshot
  end

end
