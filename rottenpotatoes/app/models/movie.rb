class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
=begin  
  def self.similar_directors(director) 
    Movie.where(:director => director) 
  end 

  def self.find_by_director(director) 
    ###
    Movie.where(:director => director) 
  end
=end
  
end
