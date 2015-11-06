class Request
  attr_reader :req_lines

  def initialize(req_lines)
    @req_lines = req_lines
  end

  def verb
    req_lines.first.split.first
  end

  def path
    req_lines.first.split[1]
  end
end
