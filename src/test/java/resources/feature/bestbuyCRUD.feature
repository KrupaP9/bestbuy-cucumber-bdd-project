Feature: Best Buy Application

  As a user I want to test Best Buy Application

  Scenario Outline: Product CRUD Test
    Given Best buy application is running
    When I create a new product by providing the information name "<name>" type "<type>" price "<price>" shipping "<shipping>" upc "<upc>" description "<description>" manufacturer "<manufacturer>" model "<model>" url "<url>" image "<image>"
    Then I verify that the product with name "<name>" is created
    And I update product by providing the information name "<name>" type "<type>" price "<price>" shipping "<shipping>" upc "<upc>" description "<description>" manufacturer "<manufacturer>" model "<model>" url "<url>" image "<image>"
    And The product with name "<name>" is updated successfully
    And I delete the product that created with name "<name>"
    Then The product deleted successfully from the application
    Examples:
      | name                  | type      | price | shipping | upc       | description                        | manufacturer | model     | url                         | image                                           |
      | Bosch Washing Machine | WhiteGood | 300   | 20       | 234567890 | Good quality Bosch washing machine | CanCompany   | MN2727B4z | http://www.google.com/image | http://dummyimage.com/128x100.png/ff4444/ffffff |
      | Beko Washing Machine  | WhiteGood | 200   | 20       | 123455542 | Good quality Bosch washing machine | BangCompany  | MN2525B4z | http://www.yahoo.com/image  | http://dummyimage.com/214x100.png/5fa2dd/ffffff |

  Scenario Outline: Store CRUD Test
    Given Best buy application is running
    When I create a new store by providing the information name "<name>" type "<type>" address "<address>" addresstwo "<address2>" city "<city>" state "<state>" zip "<zip>" lat "<lat>" lng "<lng>" hours "<hours>"
    Then I verify that the store with name "<name>" is created
    And I update store by providing the information name "<name>" type "<type>" address "<address>" addresstwo "<address2>" city "<city>" state "<state>" zip "<zip>" lat "<lat>" lng "<lng>" hours "<hours>"
    And The store with name "<name>" is updated successfully
    And I delete the store that created with name "<name>"
    Then The store deleted successfully from the application
    Examples:
      | name         | type  | address            | address2 | city       | state   | zip   | lat | lng | hours                  |
      | HomeStore    | Store | 10 Liverpool Road  | LI 23    | Liverpool  | England | 12344 | 67  | 64  | Monday to Friday 9to10 |
      | HomeApplianz | Store | 20 Manchester Road | MA 50    | Manchester | England | 67888 | 35  | 88  | Monday to Friday 9to10 |
