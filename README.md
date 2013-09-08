tic-tac-toe
===========

You can run the specs with Rspec.

First you'll need to install it with the command `gem install rspec`.
Then run the command `rspec` from the project directory.

Review
======

* I like that you have lots of short methods. That made it easy to comprehend each method's purpose.

* The `draw?` method might not always be correct. It will only be correct if the caller first checks for wins. This fact is illustrated in the test I wrote, which is in `spec/t3_spec.rb` on my fork of your repo.

* Your code is easy to understand and follow, which made it easy to spot bugs.

* It's difficult to test the current implementation because some methods end up doing multiple things. For instance, when I test the `draw?` method, the game ends up printing text to the screen and exiting the program. I would have expected it to simply detect that there was a draw and return `true`.
  * I often find that making methods 'pure' makes them easier to test. A pure method is one that only calculates and returns a value. That means it doesn't change any instance variables, it doesn't print to the screen, and it doesn't exit the program.
  * Can you restructure your code so that as many methods as possible are pure? Good candidates are `draw?`, `status`, `computer_move`, `check_hands`, and `game_over?`
  * What do you think of the new code? Is it worse or better than the old code?
  * It would also be nice if you had some tests to verify that these methods work the way you think they should. I've added an example of using Rspec to my fork of your repo and there are lots of tutorials online.
  * Was it easy or difficult to write tests that verify your code?
  * What about your code made it easy to test?
  * What made your code difficult to test?
  * Do you think the tests you wrote are useful or a waste of time?
  * What are the attributes of a useful test?
  * What makes a test worthless?

* When methods change the terminal color, they don't always change it back. If I just call the "welcome" method and then the game exits, the terminal is stuck in yellow mode. I didn't find a bug related to this, but it seems error-prone that you have to remember to manually reset the color whenever you call one of these methods.
  * What changes can you make to ensure that printing text in color always resets the color afterward?

* You randomized the AI, which makes it more fun to play repeatedly.

* I like that your UI provides a lot of useful information to the user. This tells me that you thought about the experience that the player would have with the game.

* You have to end up doing a lot of book keeping because you're storing the state of the game in so many different variables. While I don't see any bugs as a result of this design, it's the sort of thing that can easily lead to bugs because `@open_spots`, `@opponent`, `@computer`, and `@occupied` all need to be kept in sync manually.
  * Do you think this is a legitimate concern?
  * Why did you choose this design as opposed to other possibilities?
  * How can you restructure your implementation so that there are fewer variables to keep track of?
  * What are the trade-offs between your new implementation and the old one?

* I was able to beat the computer with the following moves:
```
     - | - | -
     _________
     - | - | -
     _________
     - | - | -
     _________

     X | - | -
     _________
     - | O | -
     _________
     - | - | -
     _________

     X | - | -
     _________
     O | O | X
     _________
     - | - | -
     _________

     X | O | X
     _________
     O | O | X
     _________
     - | - | -
     _________

     X | O | X
     _________
     O | O | X
     _________
     - | - | X
     _________
```
  * Instead of using an ad-hoc AI algorithm, try understanding and implementing the `minmax` algorithm or one of its variants. It is a well understood algorithm and will guarantee a win or draw if you implement it correctly.
