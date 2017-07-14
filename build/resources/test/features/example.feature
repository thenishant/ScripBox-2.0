Feature: Advice on how to plan and save tax

  In order to save tax
  As a registered user and a working professional
  I want to get advice on how to plan and save tax
  so that I have a ton of money to spend at the end of the year

  Background:
    Given user on home screen taps on menu
    When user on menu screen taps on login
    And Intent:Login
    And user on home screen taps on plan

  @new
  Scenario: generic step example
    Given user on planning screen taps on saveTaxCard
    And Intent:SaveTax


  @new_retirement
  Scenario: generic step example 2
    Given DataIntent:PlanningOptions
      |user|planning|taps|retirementCard|
    And Intent:Retirement


  @children_edu
  Scenario: generic step example 3
    And user on planning screen taps on childEducationCard
    And Intent:ChildEducation


  @health
  Scenario: generic step example 4
    And user on planning screen taps on healthCard
    And Intent:Health


  @invest_money
  Scenario: generic step example 5
    And user on planning screen taps on investMoneyCard
    And Intent:InvestMoney

  @exp
    Scenario: generic step example 6
#      Given user on home screen taps on menu
#      And user on menu screen scrolls down and taps on servicesAgreement

#    Given user on home screen swipes right to plan
#      And user on home screen swipes left to learn
#      And user on home screen scrolls down
#      And user on home screen scrolls down
#      And user on learn screen scrolls up and taps on articles

#      this is causing an error.





