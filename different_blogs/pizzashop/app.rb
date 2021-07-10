#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: 'pizzashop.db'}

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
	validates :name, presence: true
	validates :phone, presence: true
	validates :adress, presence: true
end

get '/' do
	@products = Product.all
	erb :index
end

get '/about' do
	erb :about	
end

post '/cart' do

	@c = Order.new
	@orders_input = params[:orders]

	@items = split_orders_line @orders_input

	# если корзина пустая, выводим заглушку без инфо о заказе
	if @items.length == 0 
		return erb :cart_is_empty
	end

	#выводим страницу с заказами
	@items.each do |item|
		item[0] = Product.find(item[0])
	end

	erb :cart
	
end

post '/place_order' do
	

	@c = Order.new params[:order]
	if @c.save
		erb :order_placed
	else
		@error = @c.errors.full_messages.first
		# return erb :cart
	end

end



# хэш строку с заказом дробим чтобы вычленить
# какая пицца и сколько заказали
def split_orders_line orders_input	

	s1 = orders_input.split(/,/)

	arr = []

	s1.each do |x|
		s2 = x.split(/\=/)
 
		s3 = s2[0].split(/_/)

		id = s3[1]
		count = s2[1]

		arr2 = [id,count]
		arr.push arr2
	end

	arr
end