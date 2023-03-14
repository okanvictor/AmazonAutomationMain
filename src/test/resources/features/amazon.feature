@QuantityPriceVerification
Feature: Amazon product quantity and price verification

  Background:User on Amazon Webpage to search product
    Given user launches amazon homepage
    When user searches for "hats for men"


  @quantity @price
  Scenario Outline: Verify that the products prices increase correctly according to the quantity increment
    And user adds to Cart 1 (st nd rd th) appearing hat with quantity "<quantity increment>"
    Then verify that total price calculation according to "<quantity increment>" is correct
    When user reduces the quantity to "<quantity decrement>" in the Cart for the item selected
    Then verify that total price calculation according to "<quantity decrement>" is correct

    Examples:
      | quantity increment | quantity decrement |
      | 2                  | 1                  |