require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        user_phrase = params[:user_phrase]
        piglatinizer = PigLatinizer.new
        @piglatinized_phrase = piglatinizer.piglatinize(user_phrase)
        erb :piglatinized
    end
end