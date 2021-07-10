require './logger'

Logger.say_something

#двойной вызов методов с проверкой на созданный класс
Logger.instance.log_something 'some tea'



