class Database

def self.all
    @list = []
    connection = PG.connect :dbname => "bookmanager", :user => "giacomo"
    bookmarks = connection.exec "SELECT * FROM bookmarks"
    p bookmarks
    # bookmarks.each do |bookmark|
    #   @list << bookmark
    # end
    # @list
end

def self.connection
  PG.connect :dbname => "bookmanager", :user => "giacomo"
end

end
