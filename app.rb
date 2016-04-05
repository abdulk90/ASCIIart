require "sinatra"
require "sinatra/reloader"
require "artii"


get "/ascii/:random_word" do

	my_artii = Artii::Base.new :font => "doh"
	@word = my_artii.asciify(params[:random_word])
	erb :worb

end

get "/ascii/:random_word/:style" do

	my_artii = Artii::Base.new :font => params[:style]
	@word = my_artii.asciify(params[:random_word])
	erb :worb

end

get "/ascii/pug/special/secret" do
	erb :pug
end

get "/ascii/panda/special/secret" do
	erb :panda
end