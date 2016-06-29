# Uncle Bob's Bownling Game Kata in Swift

This project is an approch to Uncle Bob's famous Bowling Game to practice TDD,
using Swift in this case. For more information about that game go to:

http://butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata

## Rules

* A game consists of 10 frames.
* In each frame the player can knock down 10 pins
* The score of a frame is the number of knocked down pins, plus bonuse for strikes and spares.
* A spare knocks down 10 pins in two tries, and adds the number of the next knocked down pins to its frame.
* In a strike all pins are knocked down in the first try, and adds the number of the two next knocked down pins to its frame.
* If the player rolls a spare or strike in the 10th frame, he can roll the extra balls for free, but not more then 10 balls.

## Scoring Example
```
+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
| 1 |4| 4 |5| 6 |/| 5 |/|   | | 0 |1| 7 |/| 6 |/|   | |2|/|6|
|  5  |  14 |  29 |  49 |  60 |  61 |  77 |  97 | 117 | 133 |
+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
```
