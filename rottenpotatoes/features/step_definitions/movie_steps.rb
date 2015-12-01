Given /the following movies exist/ do |movies|
  movies.hashes.each do |movie|
    Movie.create(movie)
  end
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |movie_title, movie_director|
  match = /.*#{movie_title}.*#{movie_director}/m =~ page.body
end
