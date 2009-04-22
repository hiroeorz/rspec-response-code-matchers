# -*- coding: utf-8 -*-

class BeStatus
  def initialize(status)
    @status = status
  end

  def matches?(target)
    if defined?(target.status)
      @target = target.status
    else
      @target = target
    end

    if @status.is_a?(Range)
      return @status.include?(@target)
    else
      return @target == @status
    end
  end

  def failure_message_for_should
    "expected #{@target} to be Status #{@status}"
  end

  def failure_message_for_should_not
    "expected #{@target} not to be in Status #{@status}"
  end
end

def be_information
  BeStatus.new(100..101)  
end

def be_continue
  BeStatus.new(100)  
end

def be_switching_protocols
  BeStatus.new(101)  
end

# def be_successful
#   BeStatus.new(200..206)
# end

def be_request_ok
  BeStatus.new(200)
end

def be_resource_created
  BeStatus.new(201)  
end

def be_request_accepted
  BeStatus.new(202)  
end

def be_non_authoritative_information
  BeStatus.new(203)  
end

def be_no_content
  BeStatus.new(204)  
end

def be_reset_content
  BeStatus.new(205)  
end

def be_partial_content
  BeStatus.new(206)  
end

def be_redirect
  BeStatus.new(300..305)
end

def be_multiple_choices
  BeStatus.new(300)
end

def be_moved_permanently
  BeStatus.new(301)
end

def be_moved_temporarily
  BeStatus.new(302)
end

def be_see_other
  BeStatus.new(303)
end

def be_not_modified
  BeStatus.new(304)
end

def be_use_proxy
  BeStatus.new(305)
end

def be_client_error
  BeStatus.new(400..415)
end

def be_bad_request
  BeStatus.new(400)
end

def be_unauthorized
  BeStatus.new(401)
end

def be_payment_required
  BeStatus.new(402)
end

def be_forbidden
  BeStatus.new(403)
end

def be_not_found
  BeStatus.new(404)
end

def be_method_not_allowed
  BeStatus.new(405)
end

def be_not_acceptable
  BeStatus.new(406)
end

def be_proxy_authentication_required
  BeStatus.new(407)
end

def be_request_timeout
  BeStatus.new(408)
end

def be_request_conflict
  BeStatus.new(409)
end

def be_resource_is_gone
  BeStatus.new(410)
end

def be_length_required
  BeStatus.new(411)
end

def be_precondition_failed
  BeStatus.new(412)
end

def be_request_entity_too_large
  BeStatus.new(413)
end

def be_request_uri_too_large
  BeStatus.new(414)
end

def be_unsupported_media_type
  BeStatus.new(415)
end

def be_server_error
  BeStatus.new(500..505)
end

def be_internal_server_error
  BeStatus.new(500)
end

def be_not_implemented
  BeStatus.new(501)
end

def be_bad_gateway
  BeStatus.new(502)
end

def be_service_unavailable
  BeStatus.new(503)
end

def be_gateway_timeout
  BeStatus.new(504)
end

def be_http_version_not_supported
  BeStatus.new(505)
end
