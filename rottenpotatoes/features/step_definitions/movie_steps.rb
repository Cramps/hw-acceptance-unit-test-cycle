Given /the following movies exist/ do |movies_table|
    movies_table.hashes.each do |movie|
        Movie.create!(movie)
    end
end

Then /the director of "([^"]*)" should be "([^"]*)"/ do |movie, director|
    step %Q{I should see "#{movie}"}
    step %Q{I should see "#{director}"}
end

Then /I should see "([^"]*)" before "([^"]*)"/ do |movieA, movieB|
    expect(page.body).to match(/#{movieA}.*#{movieB}/m)
end

