Prabhjot::Application.config.middleware.insert_before(Rack::Lock, Rack::Rewrite) do
  r301 %r{.*}, 'http://www.singhprabhjot.com$&', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'] == 'singhprabhjot.com'
  }
end