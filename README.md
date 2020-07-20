# Math Game
Math game is a CLI game where 2 players compete to answer math questions. Each player will have 3 lives and for each wrong answer they will lose a life! The last player standing will be the winnenr of the game, good luck!

ex.
```
Player 1: What does 5 plus 3 equal?
> 9
Player 1: Seriously? No!
P1: 2/3 vs P2 3/3
------ NEW TURN --------
Player 2: What does 2 plus 6 equal?
> 8
Player 2: YES! You are correct.
P1: 2/3 vs P2 3/3
------ NEW TURN --------
... some time later ...
Player 1 wins with a score of 1/3
------ GAME OVER --------
Good bye!
```

## Planning

### Entities
 - Player
	- The player will be answering math questions that are asked and their score will be tracked in their state
 - Announcer
	- The announcer will be giving the one displaying the information along with whenver there is a new turn and the final score at the end of the game/round

### Player
 - States
	- Score
 - Methosd
	- Update score
	- Answer math questions
 - Initialize
	- name
	- score

### Announcer
 - States
	- Current Player
 - Method
	- Asking math questions
	- Report score
	- Check if game is over
	- run the loop
 - Initialize
	- Current Player