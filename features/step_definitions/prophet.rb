# Then clauses here.
Then(/^I should see the commands path$/) do
  expect($output.match("cucumber")).not_to be(nil)
  $output = nil
end

