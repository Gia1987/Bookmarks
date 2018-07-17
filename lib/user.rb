require_relative './database.rb'
class User

  def self.create(email, password)
    Database.connection.exec("INSERT INTO users(email, password) VALUES ('#{email}','#{password}')")
  end

  def self.find(email, password)
    p result = Database.connection.exec("SELECT * FROM users WHERE email = '#{email}'")
    if result.any? && result[0]['password'] == password
      result[0]['id']
    end
  end
end
