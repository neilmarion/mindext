Given /^I go to the compositions page$/ do
  visit compositions_path
end

Given /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When /^I press "(.*?)"$/ do |arg1|
  click_button 'Save'
end

Then /^I should see "(.*?)" added in the compositions page$/ do |arg1|
  page.should have_no_xpath('a')
  puts page.html
  page.should have_content(arg1)
end
