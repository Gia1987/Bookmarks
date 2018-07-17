require_relative './database.rb'
class User

  def self.create(email, password)
    Database.connection.exec('INSERT INTO users(email("#{email}"), password("#{password}"));')
  end
end
