Feature: Basic scoring
  Background:
    Given we start a new game with 2 players

  Scenario: Three ones (no fives)
    When player 1 throws 1, 1, 1, 2, 3
    Then player 1's score is 1000

  Scenario: Three sixes (no ones or fives)
    When player 1 throws 6, 6, 6, 2, 3
    Then player 1's score is 600

  Scenario: Three fives (no ones or fives)
    When player 1 throws 5, 5, 5, 2, 3
    Then player 1's score is 500

  Scenario: Three fours (no ones or fives)
    When player 1 throws 4, 4, 4, 2, 3
    Then player 1's score is 400

  Scenario: Three threes (no ones or fives)
    When player 1 throws 3, 3, 3, 2, 4
    Then player 1's score is 300

  Scenario: Three twos (no ones or fives)
    When player 1 throws 2, 2, 2, 3, 4
    Then player 1's score is 600

  Scenario: A single one (no fives or trebles)
    When player 1 throws 1, 2, 2, 3, 3
    Then player 1's score is 100

  Scenario: A single five (no ones or trebles)
    When player 1 throws 5, 2, 2, 3, 3
    Then player 1's score is 50
