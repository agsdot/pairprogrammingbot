# layout calc 
# four instance variables.

# gem install --version 1.3.0 sinatra
# require 'pry'
#gem 'sinatra', '1.3.0'
require 'sinatra'
#require 'sinatra/reloader'
#require 'sinatra/reloader' if development?

 get '/' do
 	@text = "Do you have a test for that?"
 	@yes = "/pass"
 	@no = "/write_test"
 	erb :positivenegative
 end

 get '/pass' do
 	@text = "Does the test pass?"
 	@yes = "/refactor"
 	@no = "/write_code"
 	erb :positivenegative
 end

 get '/write_code' do
 	@text = "Write just enough code for the test to pass."
 	@done = "/pass"
 	erb :done
 end

 get '/write_test' do
 	@text = "Write a test."
 	@done = "/pass"
 	erb :done
 end

 get '/refactor' do
 	@text = "Need to refactor?"
 	@yes = "/do_refactor"
 	@no = "/new_feature"
 	erb :positivenegative
 end

   get '/do_refactor' do
   	 @text = 'Refactor the code.'
 	 @done = '/pass'
 	 erb :done
   end

   get '/new_feature' do
   	 @text = 'Select a new feature to implement.'
 	 @restart = '/'
 	 erb :restart
   end
