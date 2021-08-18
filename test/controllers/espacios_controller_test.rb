require "test_helper"

class EspaciosControllerTest < ActionDispatch::IntegrationTest
  test "should get listar" do
    get espacios_listar_url
    assert_response :success
  end
end
