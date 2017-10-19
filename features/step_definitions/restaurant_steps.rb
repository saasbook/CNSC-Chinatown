Given /the following restaurants exist/ do |restaurants_table|
    restaurants_table.hashes.each do |restaurant|
        Restaurant.create!(restaurant)
    end
end

Then /(.*) seed restaurants should exist/ do |n_seeds|
    Restaurant.count.should be n_seeds.to_i
end