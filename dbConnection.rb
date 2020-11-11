
require 'pg'

class DBConnection
    def connect()
        
        #client = TinyTds::Client.new adapater: 'postgresql', username: 'postgres', password: '1234567890', host: 'localhost:9292', database: 'buzzs'
        client = PG.connect(dbname: 'buzzs', user: 'postgres', password: '1234567890', host: 'localhost', port: '5432')

        return client
    end
end

=begin
require 'active_record'
require 'pg'
#class DBConnection
 #   def connect()
 ActiveRecord::Base.establish_connection(
    adapter: 'postgresql',
    host: 'localhost',
    username: 'postgres',
    password: '1234567890',
    database: 'buzzs',
    port: '5432'
    
)
#return client

class Login < ActiveRecord::Base
   
   self.table_name ="logins"

  end
 # Login.create( name:'manoj',mail: 'mano@gmail.com',age: 22, gender: 'male', city: 'Chennai')
=end

