Then /I swipe to left side$/ do 
	performAction('drag', 99, 30, 50, 50, 10)
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