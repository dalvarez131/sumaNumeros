require 'sinatra'

class Variable
  def initialize
    @cont = 0
  end
  def inicio
    @cont
  end
  def contador
    @cont += 1
  end
end
diana = Variable.new()


get '/' do
  @cont = diana.inicio
  erb :index
end


patch '/' do
  @cont = diana.contador
  erb :index
end
