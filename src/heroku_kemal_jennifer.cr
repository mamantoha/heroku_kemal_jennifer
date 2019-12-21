require "kemal"
require "kilt/slang"
require "../config/config"

get "/" do |env|
  users = User.all

  render "src/views/index.slang"
end

Kemal.run
