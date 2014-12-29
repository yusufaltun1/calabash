Then /I swipe to left side$/ do 
	performAction('drag', 99, 30, 50, 50, 10)
end

Then /^I swipe right$/ do
  perform_action('swipe', 'right')
end

Then /^I should see a notice "([^\"]*)"$/ do | expectedNotice|

	actualNotice = query("TextView id:'message'","text")[0]
	raise "Wrong notice popup" unless( actualNotice.include? expectedNotice )

end


Then /^I should see a notice appear$/ do

	actualNotice = query("TextView id:'message'","text")[0]
	raise "There don't have any popup" unless ( !actualNotice.nil? )

end


Then /^I should see a data "([^\"]*)"$/ do |viewId|

	actualNotice = query("TextView id: '#{viewId}'","text")[0]
	raise "There don't have any popup" unless ( !actualNotice.nil? )

end

Then /^I press view with id "([^\"]*)"$/ do |id|
  tap_when_element_exists("* id:'#{id}'")
end

Then /^I wait for the view with id "([^\"]*)" to appear$/ do |id|
  wait_for_element_exists("* id:'#{id}'")
end 



Then /^I enter text "([^\"]*)" into field with id "([^\"]*)"$/ do |text, id|
  enter_text("android.widget.EditText id:'#{id}'", text)
end

Then /^I press list item number (\d+)$/ do |index|
  step_deprecated

  tap_when_element_exists("android.widget.ListView index:0 android.widget.TextView index:#{index.to_i-1}")
end