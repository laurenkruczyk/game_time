require 'sinatra'
require 'csv'

  get '/' do
  @nfl = read
  erb :index
end

get '/leaderboard' do
  @nfl = read
  erb :leaderboard
end

get '/teams/patriots' do
  @nfl = read
  erb :patriots
end

get '/teams/broncos' do
  @nfl = read
  erb :broncos
end

get '/teams/colts' do
  @nfl = read
  erb :colts
end

get '/teams/steelers' do
  @nfl = read
  erb :steelers
end


def read
  nfl = []
  CSV.foreach('nfl.csv', headers: true) do |row|
    nfl << row.to_hash
  end
  nfl
end
