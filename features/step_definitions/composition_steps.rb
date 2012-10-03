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
  pending # express the regexp above with the code you wish you had
end
