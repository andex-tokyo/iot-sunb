ActiveRecord::Base.establish_connection("sqlite3:db/development.db")

class Post < ActiveRecord::Base
end