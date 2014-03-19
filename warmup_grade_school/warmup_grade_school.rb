require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'pry'


get '/students' do
  @students = query_db('SELECT * FROM students;')
  erb :students
end

get '/students/new' do
  erb :new_student
end

post '/students/create' do
  sql = "INSERT INTO students (name, grade)
          VALUES ('#{params[:name]}', '#{params[:grade]}');" 
  query_db(sql)
  redirect to('/students')
end

post '/students/update' do
  sql = "UPDATE students SET
    name='#{params[:name].gsub("'", "''")}',
    family='#{params[:family].gsub("'", "''")}',
    photo='#{params[:photo].gsub("'", "''")}' WHERE id=#{params[:id]}"
  query_db(sql)
  redirect to("/students/#{params[:id]}")
end

get '/students/:id' do
  results = query_db("SELECT * FROM students WHERE id=#{ params[:id] }")
  @butterfly = results.first
  erb :butterfly
end

get '/students/:id/edit' do
  results = query_db("SELECT * FROM students WHERE id=#{ params[:id] }")
  @butterfly = results.first
  erb :edit_butterfly
end

get '/students/:id/delete' do
  query_db("DELETE FROM students WHERE id=#{ params[:id] }")
  redirect to('/students')
end

get '/students/family/:family' do
  @students = query_db("SELECT * FROM students WHERE family LIKE '#{params[:family]}'")
  erb :students
end




def query_db(sql)
  db = SQLite3::Database.open('grade_school.db')
  db.results_as_hash = true
  puts "SQL: #{ sql }"
  db.execute(sql)
end
