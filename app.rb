require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do
        text_from_user = params[:user_phrase]
        foo = PigLatinizer.new
        @pig_latin_text = foo.piglatinize(text_from_user)
        erb :user_submit
    end


end