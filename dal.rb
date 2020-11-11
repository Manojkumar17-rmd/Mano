require './dbConnection'

class Dal
    @@dbConnection = 0

   def initialize
        connection = DBConnection.new
        @@dbConnection = connection.connect()
    end

    def addUser(name, mail,age,gender,city)
        #sql = "INSERT INTO logins (name, mail) Values('"+ name +"', '"+ mail +"');"
        #sql = "INSERT INTO logins (name, mail, password, age, gender, choosecity) Values('"+ name +"', '"+ mail +"', '"+ password +"', '"+ age +"', '"+ gender +"', '"+ choosecity +"');"
        sql = "INSERT INTO logins (name, mail, age, gender,city) values('"+ name +"', '"+ mail +"','"+ age+"','"+ gender +"', '"+ city + "');"
        result = @@dbConnection.exec(sql)
        puts sql
        puts result.each
        return @@dbConnection.exec("select * from logins").each
    end
 #   def updateUser(name,mail)
  #   sql2 = "UPDATE logins
   #  SET mail = ('"+ mail +"') 
    # where name= ('"+ name +"')"
     #   result = @@dbConnection.exec(sql2)
      #  puts sql2
      #  puts result.each
       # return @@dbConnection.exec("select * from logins").each
   # end
    def deleteUser(name)
        sql3 = "DELETE FROM logins
        WHERE name = ('" +name + "')" 
           result = @@dbConnection.exec(sql3)
           puts sql3
           puts result.each
           return @@dbConnection.exec("select * from logins").each
       end
       def uploadUser(filename)
        File.open("C:\\Users\\manoj\\Desktop\\goodday.txt","r") do |file|
          #  puts file.readline()
            puts file.read()
    
       end
    end
end
