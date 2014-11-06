class AngularjsJsonMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    @status, @headers, @response = @app.call(env)
    [@status, @headers, self]
  end

  def each(&block)
    if @headers['Content-Type'] && @headers['Content-Type'].include?('application/json')
      block.call(")]}',\n")
    end
    @response.each(&block)
  end
end
