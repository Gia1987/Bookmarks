require'pg'

conn = PG::Connection.open(:dbname => 'bookmanager_test')
