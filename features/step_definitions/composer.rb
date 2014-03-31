# When clauses here.
When(/^I run which cucumber$/) do
  # don't capture the command. scary.
  $output = `which cucumber`
end

