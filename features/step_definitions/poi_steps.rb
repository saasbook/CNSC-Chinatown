Given /the following points of interest exist/ do |points_table|
    points_table.hashes.each do |p|
        Point.create!(p)
    end
end

Then /(.*) seed points should exist/ do |n_seeds|
    Point.count.should be n_seeds.to_i
end
