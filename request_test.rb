require "minitest"
require "minitest/autorun"
require "./request"

class RequestTest < Minitest::Test

  # Need to get big array of
  # lines
  # and figure out what is:
  #  * Verb
  #  * Path
  #  * Headers
  #  * Body

  def test_it_finds_verb_from_request
    r = Request.new(sample_request)
    assert_equal "GET", r.verb
  end

  def test_it_finds_the_path
    r = Request.new(sample_request)
    assert_equal "/", r.path
  end

  def sample_request
    ["GET / HTTP/1.1",
     "Host: localhost:9292",
     "User-Agent: curl/7.43.0",
     "Accept: */*"]
  end
end
