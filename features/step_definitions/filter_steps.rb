Given /the following points of interest exist/ do |points_table|
    points_table.hashes.each do |p|
        Point.create!(p)
    end
end

Then /(.*) seed points should exist/ do |n_seeds|
    Point.count.should be n_seeds.to_i
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /^(?:|I )should see \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)

  if page.respond_to? :should
    page.should have_xpath('//*', :text => regexp)
  else
    assert page.has_xpath?('//*', :text => regexp)
  end
end