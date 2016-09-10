# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

get '/contact' do
  "123 Main Street, Anywhere, USA 01234"
end

get '/:number1/:number2' do
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i
  sum = number1 + number2
  "#{params[:number1]} + #{params[:number2]} equals #{sum}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  id = params[:id]
  if id
    id = id.to_i
    student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])
    response = "ID: #{student[0]['id']}<br>Name: #{student[0]['name']}<br>Age: #{student[0]['age']}<br>Campus: #{student[0]['campus']}"
  else
    students = db.execute("SELECT * FROM students")
    response = ""
    students.each do |student|
      response << "ID: #{student['id']}<br>"
      response << "Name: #{student['name']}<br>"
      response << "Age: #{student['age']}<br>"
      response << "Campus: #{student['campus']}<br><br>"
    end
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end