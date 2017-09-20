require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './caesar'



get '/' do
  if params['sentence'] && params['shift']
    caesar = Caesar.new(params['sentence'], params['shift'].to_i)
    ciphered_message = caesar.cipher
  end
  erb :index, :locals => {:ciphered_message => ciphered_message, sentence: params['sentence'], shift: params['shift']}
end

#methods :
