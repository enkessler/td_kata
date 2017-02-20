Feature: Parsing input files

  Input files consist of some number of pipe-underscore style account numbers (3 lines of symbols, 1 blank line for
  entry separation). These files must be parsed into 'normal' numbers for later use.


  Scenario: Parsing a single account number
    Given the following input file:
    """
      _  _     _  _  _  _  _
    | _| _||_||_ |_   ||_||_|
    ||_  _|  | _||_|  ||_| _|

    """
    When the input file is parsed
    Then the following account numbers are found:
      | 123456789 |

  Scenario: Parsing multiple account numbers
    Given the following input file:
    """
      _  _     _  _  _  _  _
    | _| _||_||_ |_   ||_||_|
    ||_  _|  | _||_|  ||_| _|

     _  _  _  _  _     _  _
    |_||_|  ||_ |_ |_| _| _|  |
     _||_|  ||_| _|  | _||_   |

    """
    When the input file is parsed
    Then the following account numbers are found:
      | 123456789 |
      | 987654321 |
