Feature: Group visit

@javascript
Scenario: User visits group
  Given I am a logged in user and member of a group
  When I visit the group page twice
  Then a single group_visit should be recorded against my visit

