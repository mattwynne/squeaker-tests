require 'test/unit'

World(Test::Unit::Assertions)

Given /^there are no registered users$/ do
  browser.goto("#{environment}reset")
  # TODO: check that there really are no users now - test the reset link
end

Given /^I have clicked on the "([^"]*)" link$/ do |link_text|
  browser.link(:text, link_text).click
end

Given /^I have entered a username "([^"]*)"$/ do |username|
  browser.text_field(:id => 'user_username').set(username)
end

When /^I press "([^"]*)"$/ do |button_text|
  announce "I am pressing #{button_text} right now"
  browser.button(:value => button_text).click
end

Then /^I should see the text "([^"]*)"$/ do |expected_text|
  assert browser.text.include?(expected_text)
end

Then /^I should see a "([^"]*)" button$/ do |button_text|
  browser.button(:value => button_text).exists?.should == true
end

When /^I should see an error$/ do
  browser.text.include?('failed').should == true
end

Given /^there is already a user "([^"]*)"$/ do |username|
  steps %{
    Given I have clicked on the "create an account" link
    And I have entered a username "#{username}"
    When I press "Create My Account"
    And I press "Log Out"
  }
end