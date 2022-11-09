require "test_helper"

class ModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @module = modules(:one)
  end

  test "should get index" do
    get modules_url
    assert_response :success
  end

  test "should get new" do
    get new_module_url
    assert_response :success
  end

  test "should create module" do
    assert_difference('Module.count') do
      post modules_url, params: { module: { module_id: @module.module_id, module_name: @module.module_name } }
    end

    assert_redirected_to module_url(Module.last)
  end

  test "should show module" do
    get module_url(@module)
    assert_response :success
  end

  test "should get edit" do
    get edit_module_url(@module)
    assert_response :success
  end

  test "should update module" do
    patch module_url(@module), params: { module: { module_id: @module.module_id, module_name: @module.module_name } }
    assert_redirected_to module_url(@module)
  end

  test "should destroy module" do
    assert_difference('Module.count', -1) do
      delete module_url(@module)
    end

    assert_redirected_to modules_url
  end
end
