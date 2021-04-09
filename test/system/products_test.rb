require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
    assert_selector "h1", text: "Find here all products"
    assert_selector ".card-product", count: Product.count
  end
end
