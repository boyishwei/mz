require 'test_helper'

class ClassControllerTest < ActionController::TestCase
  test "should get showClass" do
    get :showClass
    assert_response :success
  end

end
