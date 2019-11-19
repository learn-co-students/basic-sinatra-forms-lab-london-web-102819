require "sinatra/base"

class App < Sinatra::Base
  get "/newteam" do
    erb :newteam
  end

  post "/team" do
    # @params = params another way to access local params that were passed to form
    # erb :team, :locals => { :params => params }
    @params = params
    erb :team
  end
end
