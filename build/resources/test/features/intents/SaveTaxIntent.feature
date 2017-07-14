Feature: ScripBox SaveTax

  @Intent
  Scenario: SaveTax
    And user on saveTax screen taps on letsGetStarted
    And user on saveTax screen slides on annualCTC value 60%
    And user on saveTax screen taps on nextButton
    And user on saveTax screen taps on nextButton
    And user on saveTax screen taps on switchConveyance
    And user on saveTax screen taps on switchMedical
    And user on saveTax screen taps on nextButton
    And user on saveTax screen slides on rent value 40%
    And user on saveTax screen taps on nextButton
    And user on saveTax screen slides on hra value 10%
    And user on saveTax screen taps on nextButton
    And user on saveTax screen slides on epf value 50%
    And user on saveTax screen taps on nextButton
    And user on saveTax screen taps on nextButton
    And user on saveTax screen taps on nextButton