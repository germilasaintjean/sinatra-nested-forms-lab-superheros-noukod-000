 require 'sinatra/base'
# require '../config/environment'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "./views/") }

get '/' do
 erb :super_hero
end

post '/teams' do
  @team = team.new(@params"team[:name]",@params"team[motto]")
  @params["team"]["members"].each do |hero|

    Hero.new(hero[:name],hero[:power],hero[:bigraphy])
  end
  @hereos=Hero.all

erb :team
end

end
