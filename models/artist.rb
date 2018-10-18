require('pg')
require_relative('../db/sql_runner')

class Artist

  attr_accessor :id, :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ($1) RETURNING id"
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  def self.all()
  sql = "SELECT * FROM artists"
  artists = SqlRunner.run(sql)
  return artists.map{ |artist| Artist.new(artist)}
  end

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = $1"
    value = [id]
    results = SqlRunner.run(sql, value)
    artists_hash = results.first
    artists = Artist.new(artists_hash)
    return artists
  end


def self.delete_all()
  sql = "DELETE FROM artists"
  SqlRunner.run(sql)
end

def delete()
  sql = "DELETE FROM artists WHERE id $1"
  values = [@id]
  SqlRunner.run(sql, values)
end

# Edit Artists/Albums - don't know how to test.
  def update(artist)
    sql = "UPDATE artists SET (name) = ($1) WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end


end
