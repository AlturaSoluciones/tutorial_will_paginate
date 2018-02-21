require 'test_helper'

class AirportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airport = airports(:one)
  end

  test "should get index" do
    get airports_url
    assert_response :success
  end

  test "should get new" do
    get new_airport_url
    assert_response :success
  end

  test "should create airport" do
    assert_difference('Airport.count') do
      post airports_url, params: { airport: { iata: @airport.iata, iso: @airport.iso, latitude: @airport.latitude, longitude: @airport.longitude, name: @airport.name, size: @airport.size, airport_type: @airport.airport_type } }
    end

    assert_redirected_to airport_url(Airport.last)
  end

  test "should show airport" do
    get airport_url(@airport)
    assert_response :success
  end

  test "should get edit" do
    get edit_airport_url(@airport)
    assert_response :success
  end

  test "should update airport" do
    patch airport_url(@airport), params: { airport: { iata: @airport.iata, iso: @airport.iso, latitude: @airport.latitude, longitude: @airport.longitude, name: @airport.name, size: @airport.size, airport_type: @airport.airport_type } }
    assert_redirected_to airport_url(@airport)
  end

  test "should destroy airport" do
    assert_difference('Airport.count', -1) do
      delete airport_url(@airport)
    end

    assert_redirected_to airports_url
  end
end
