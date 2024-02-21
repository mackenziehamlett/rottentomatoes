# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'The Princess Bride', :rating => 'R',
   :release_date => '01-Sept-1975'},
  {:title => 'Finding Nemo', :rating => 'G',
   :release_date => '04-Jan-2003'},
  {:title => 'Shrek', :rating => 'G',
   :release_date => '31-Jan-2001'},
  {:title => 'My Neighbor Totoro', :rating => 'G',
   :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
   :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
   :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
   :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
   :release_date => '13-Aug-2021'}
]

more_movies.each do |movie|
  Movie.create!(movie)
end
