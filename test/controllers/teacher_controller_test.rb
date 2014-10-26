require 'test_helper'

class TeacherControllerTest < ActionController::TestCase
  test "should get showTeacher" do
    get :showTeacher
    assert_response :success
  end

end
