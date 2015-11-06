class Response
  attr_reader :status, :body, :headers
  def initialize(status, headers, body)
    @status = status
    @headers = headers
    @body = body
  end

  def status_line
    "http/1.1 #{status} ok"
  end

  def header_lines
    headers.map do |k,v|
      "#{k}: #{v}"
    end.join("\n")
  end

  def body_lines
    "\n#{body}"
  end

  def to_s
    [status_line,
     header_lines,
     body_lines].join("\n")
  end
end
