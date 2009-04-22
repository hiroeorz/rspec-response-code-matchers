require File.join(File.dirname(__FILE__), 'spec_helper')

describe "RspecResponseCodeMatchers" do
  it "should information response" do
    100.should be_information
    200.should_not be_information

    100.should be_continue
    101.should be_switching_protocols

    303.should_not be_continue
  end

  it "should success response" do
    200.should be_request_ok
    201.should be_resource_created
    202.should be_request_accepted
    203.should be_non_authoritative_information
    204.should be_no_content
    205.should be_reset_content
    206.should be_partial_content

    506.should_not be_partial_content
  end

  it "should redirect response" do
    302.should be_redirect
    404.should_not be_redirect

    300.should be_multiple_choices
    301.should be_moved_permanently
    302.should be_moved_temporarily

    502.should_not be_moved_temporarily
  end

  it "should client error response" do
    MockResponse.new(404).should be_client_error
    MockResponse.new(504).should_not be_client_error

    MockResponse.new(400).should be_bad_request
    MockResponse.new(401).should be_unauthorized
    MockResponse.new(402).should be_payment_required
    MockResponse.new(403).should be_forbidden
    MockResponse.new(404).should be_not_found
    MockResponse.new(405).should be_method_not_allowed
    MockResponse.new(406).should be_not_acceptable
    MockResponse.new(407).should be_proxy_authentication_required
    MockResponse.new(408).should be_request_timeout
    MockResponse.new(409).should be_request_conflict
    MockResponse.new(410).should be_resource_is_gone
    MockResponse.new(411).should be_length_required
    MockResponse.new(412).should be_precondition_failed
    MockResponse.new(413).should be_request_entity_too_large
    MockResponse.new(414).should be_request_uri_too_large
    MockResponse.new(415).should be_unsupported_media_type

    MockResponse.new(515).should_not be_unsupported_media_type
  end

  it "should server error response" do
    MockResponse.new(504).should be_server_error
    MockResponse.new(404).should_not be_server_error

    MockResponse.new(500).should be_internal_server_error
    MockResponse.new(501).should be_not_implemented
    MockResponse.new(502).should be_bad_gateway
    MockResponse.new(503).should be_service_unavailable
    MockResponse.new(504).should be_gateway_timeout
    MockResponse.new(505).should be_http_version_not_supported

    MockResponse.new(405).should_not be_http_version_not_supported
  end
end

class MockResponse
  attr_accessor :status

  def initialize(status)
    @status = status
  end
end
