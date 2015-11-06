require "minitest"
require "minitest/autorun"
require "./response"


class ResponseTest < Minitest::Test
  # Response takes:
  # * status
  # * headers
  # * body
  # Response generates:
  # Big ol' string?

  def test_it_generates_multiline_body_from_stuff
    r = Response.new(200, {:pizza => "Hi"}, "HERE IS A BODY")
    assert_equal expected_resp_string, r.to_s
  end

  def expected_resp_string
    "http/1.1 200 ok\npizza: Hi\n\nHERE IS A BODY"
  end
end
