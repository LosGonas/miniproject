# Given clauses here.
Given(/^I have installed the (.+) gem$/) do |gem|
  expect(system("grep -i #{gem} Gemfile > /dev/null")).to be(true)
end

