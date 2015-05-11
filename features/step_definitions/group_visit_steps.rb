Given(/^I am a logged in user and member of a group$/) do
  @user = FactoryGirl.create :user
  @group = FactoryGirl.create :group
  @group.add_member! @user
  login_automatically @user
end

When(/^I visit the group page twice$/) do
  visit group_path(@group)
  visit group_path(@group)
  view_screenshot
end

Then(/^a single group_visit should be recorded against my visit$/) do
  GroupVisit.where(group_id: @group.id).count.should == 1
end
