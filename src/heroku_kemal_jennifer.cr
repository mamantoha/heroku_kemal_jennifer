require "kemal"
require "kilt/slang"

get "/" do |env|
  render "src/views/index.slang"
end

Kemal.run
