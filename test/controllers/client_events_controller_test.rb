require 'test_helper'

class ClientEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_event = client_events(:one)
  end

  test "should get index" do
    get client_events_url
    assert_response :success
  end

  test "should get new" do
    get new_client_event_url
    assert_response :success
  end

  test "should create client_event" do
    assert_difference('ClientEvent.count') do
      post client_events_url, params: { client_event: { client_id: @client_event.client_id, event_id: @client_event.event_id, payment_method_id: @client_event.payment_method_id, ticket_id: @client_event.ticket_id } }
    end

    assert_redirected_to client_event_url(ClientEvent.last)
  end

  test "should show client_event" do
    get client_event_url(@client_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_event_url(@client_event)
    assert_response :success
  end

  test "should update client_event" do
    patch client_event_url(@client_event), params: { client_event: { client_id: @client_event.client_id, event_id: @client_event.event_id, payment_method_id: @client_event.payment_method_id, ticket_id: @client_event.ticket_id } }
    assert_redirected_to client_event_url(@client_event)
  end

  test "should destroy client_event" do
    assert_difference('ClientEvent.count', -1) do
      delete client_event_url(@client_event)
    end

    assert_redirected_to client_events_url
  end
end
