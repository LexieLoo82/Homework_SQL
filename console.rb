require("pry")
require_relative('./models/album')
require_relative('./models/artist')

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({'name' => 'Elvis'})
artist2 = Artist.new({'name' => 'Madonna'})
artist3 = Artist.new({'name' => 'Prince'})
artist4 = Artist.new({'name' => 'Beyonce'})
artist1.save
artist2.save
artist3.save
artist4.save

album1 = Album.new({
  'title' => 'Greatest Hits',
  'genre' => 'rock',
  'artist_id' => artist1.id
  })

album2 = Album.new({
    'title' => 'B by Beyonce',
    'genre' => 'pop',
    'artist_id' => artist4.id
    })

album3 = Album.new({
  'title' => 'Symbol Part 2',
  'genre' => 'rock',
  'artist_id' => artist3.id
  })

album4 = Album.new({
  'title' => 'More Songs by Madonna',
  'genre' => 'rock',
  'artist_id' => artist2.id
  })

  album5 = Album.new({
  'title' => 'Lemonade',
  'genre' => 'pop',
  'artist_id' => artist4.id
  })

  album6 = Album.new({
  'title' => 'Purple',
  'genre' => 'rock',
  'artist_id' => artist3.id
  })

  album7 = Album.new({
    'title' => 'More Songs by Madonna, Again',
    'genre' => 'rock',
    'artist_id' => artist2.id
    })
album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album6.save()
album7.save()



# artist3.update('name' =>'Artist formerly known as Prince')

binding.pry
nil
