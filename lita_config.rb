Lita.configure do |config|
  config.robot.locale = :en
  config.robot.log_level = :debug
  config.robot.log_formatter = proc do |severity, time, progname, msg|
    "[lita] [#{severity}] #{msg}\n"
  end
  
  config.robot.adapter = :hipchat
  config.adapters.hipchat.debug = true
  
  config.robot.name = " MentionName"
  config.adapters.hipchat.jid = '1_3@chat.btf.hipchat.com'
  config.adapters.hipchat.password = 'Password'
  config.adapters.hipchat.server = "server.example.com"
  config.adapters.hipchat.muc_domain = "conf.btf.hipchat.com"
  config.adapters.hipchat.server = "https://server.example.com/http-bind" 
  config.adapters.hipchat.use_http_binding = true

  config.redis[:host] = "redis"
  config.redis[:port] = 6379
end