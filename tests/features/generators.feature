Feature: Generators

  Scenario Outline: Generation
    When I generate a <command> with "<argument>"
    Then I should see "Created:"
    And "<generatedFilePath>" should match my stub

    Examples:
      | command         | argument         | generatedFilePath                                         |
      | model           | Order            | workbench/way/generators/tests/tmp/Order.php              |
      | seed            | orders           | workbench/way/generators/tests/tmp/OrdersTableSeeder.php  |
      | controller      | OrdersController | workbench/way/generators/tests/tmp/OrdersController.php   |
      | controller-test | OrdersController | workbench/way/generators/tests/tmp/OrdersControllerTest.php   |
      | view            | orders.bar.index | workbench/way/generators/tests/tmp/orders/bar/index.blade.php |
