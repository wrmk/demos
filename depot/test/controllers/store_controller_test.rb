require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'MyString'
    assert_select '.price', /\$[,\d]+\.\d\d/ #наличие $ затем любое число затем . затем две цифры
  end

end
