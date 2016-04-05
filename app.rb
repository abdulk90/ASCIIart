require "sinatra"
require "sinatra/reloader"
require "artii"

get "/ascii/:random_word" do

	my_artii = Artii::Base.new :font => 'avatar'
	@word = my_artii.asciify(params[:random_word])
	erb :worb

end

	
