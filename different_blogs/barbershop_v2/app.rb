#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'


#set :database, "sqlite3:barbershop.db"
set :database, {adapter: "sqlite3", database: 'barbershop.db'}

class Client < ActiveRecord::Base 
	#валидация name при помощи хеша
	validates :name, presence: true
	validates :phone, presence: true, length: {minimum: 5}
	validates :datestamp, presence: true
	validates :color, presence: true
	validates :barber, presence: true
end

class Barber < ActiveRecord::Base 
end

class Contact < ActiveRecord::Base 
end



before do
@list_of_barbers = Barber.order "created_at DESC"
end

get '/' do
	
	erb :index
end

get '/visit' do
	@c = Client.new
 	erb :visit
end

get '/contacts' do
  erb :contacts
end

get '/barber/:id' do
	@barber = Barber.find(params[:id])
 	erb :barber
end


get '/booking' do
	@client = Client.order('Created_at DESC')
  	erb :bookings
end

get '/client/:id' do
	@client = Client.find(params[:id])
 	erb :client
end

post '/visit' do
	#сохраняем в глобальные переменные что выбрал пользователь
	@name = params[:name]
	@phone = params[:phone]
	@datestamp = params[:datestamp]
	@barber = params[:barber]
	@color = params[:color]

	#ввод в базу всего того что ввёл пользователь
	@c = Client.new params[:client]
	#вывод сообщения если c.save вернул false
	if @c.save
		erb "<h2>Спасибо за запись</h2>"
	else
		@error = @c.errors.full_messages.first
		erb :visit
	end
end




post '/contacts' do
	@email = params[:email]
	@message = params[:message]

	hh2 = { 	:email => "Введите вашу почту",
				:message => "Введите ваш отзыв"	}

	@error = hh2.select {|key,_| params[key] == ''}.values.join(", ")

	if @error != ''
		return erb :contacts
	end

	Contact.create 	:email => @email,
					:message => @message
					

	erb "<h2>Спасибо за отзыв</h2>"
end