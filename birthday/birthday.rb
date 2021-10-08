require "sinatra"
require "sinatra/reloader" if development?
require "./lib/person"

class Birthday < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb(:form)
  end

  post "/birthday" do
    $person = Person.new(params[:name], params[:day], params[:month])
    @person = $person
    if @person.calculate == "0" || @person.calculate == "365"
      erb(:birthday_wishes)
    else
      erb(:time_left)
    end
  end

  run! if app_file == $0
end
