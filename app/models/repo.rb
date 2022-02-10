class Repo < ActiveRecord::Base

  def self.connection
    db_connection = SQLite3::Database.new 'db/development.sqlite3'
    db_connection.results_as_hash = true
    db_connection
  end

  def connection
    self.class.connection
  end

  def self.all
    repos = connection.execute("SELECT * FROM repos")
  end

end
