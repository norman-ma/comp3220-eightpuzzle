/**
 *
 *	COMP3220 Assignment 2
 *
 *	Michael-Anthony Norman: 620078776
 *	Kimar Henry:
 *	Kamol Williams:
 *
 *
 *	Prolog program designed to solve an 
 *	8-puzzle, using a depth first search, 
 *	with the solution state:
 *
 *			1	2	3
 *
 *			4		5
 *
 *			6	7	8
 *
 *	with the moves up, down, left and right
 *	(refering to the movement of the empty
 *	space).
 *
 *
 */

% Removes Singleton Variable Error

:- style_check(-singleton).


% States must be represebted as a 
% list of 9 digits(containing all the 
% digits from 0 to 9) with 0 representing
% the blank space 
% NOTE: It is possible for a state to be unsolvable.
% This will cause the program to run until it has 
% run out of resources.


% Representation of the goal state.

goal_state([1,2,3,4,0,5,6,7,8]).


% Definitions of possible moves and 
% the outcome of a move applied to a
% given state.

apply_move([A,0,C, D,E,F, G,H,I],left,[0,A,C, D,E,F, G,H,I]).

apply_move([A,C,0, D,E,F, G,H,I],left,[A,0,C, D,E,F, G,H,I]).

apply_move([A,C,D, E,0,F, G,H,I],left,[A,C,D, 0,E,F, G,H,I]).

apply_move([A,C,D, E,F,0, G,H,I],left,[A,C,D, E,0,F, G,H,I]).

apply_move([A,C,D, E,F,G, H,0,I],left,[A,C,D, E,F,G, 0,H,I]).

apply_move([A,C,D, E,F,G, H,I,0],left,[A,C,D, E,F,G, H,0,I]).

apply_move([0,A,C, D,E,F, G,H,I],right,[A,0,C, D,E,F, G,H,I]).

apply_move([A,0,C, D,E,F, G,H,I],right,[A,C,0, D,E,F, G,H,I]).

apply_move([A,C,D, 0,E,F, G,H,I],right,[A,C,D, E,0,F, G,H,I]).

apply_move([A,C,D, E,0,F, G,H,I],right,[A,C,D, E,F,0, G,H,I]).

apply_move([A,C,D, E,F,G, 0,H,I],right,[A,C,D, E,F,G, H,0,I]).

apply_move([A,C,D, E,F,G, H,0,I],right,[A,C,D, E,F,G, H,I,0]).

apply_move([A,C,D, 0,E,F, G,H,I],up,[0,C,D, A,E,F, G,H,I]).

apply_move([A,C,D, E,0,F, G,H,I],up,[A,0,D, E,C,F, G,H,I]).

apply_move([A,C,D, E,F,0, G,H,I],up,[A,C,0, E,F,D, G,H,I]).

apply_move([A,C,D, E,F,G, 0,H,I],up,[A,C,D, 0,F,G, E,H,I]).

apply_move([A,C,D, E,F,G, H,0,I],up,[A,C,D, E,0,G, H,F,I]).

apply_move([A,C,D, E,F,G, H,I,0],up,[A,C,D, E,F,0, H,I,G]).

apply_move([0,A,C, D,E,F, G,H,I],down,[D,A,C, 0,E,F, G,H,I]).

apply_move([A,0,C, D,E,F, G,H,I],down,[A,E,C, D,0,F, G,H,I]).

apply_move([A,C,0, D,E,F, G,H,I],down,[A,C,F, D,E,0, G,H,I]).

apply_move([A,C,D, 0,E,F, G,H,I],down,[A,C,D, G,E,F, 0,H,I]).

apply_move([A,C,D, E,0,F, G,H,I],down,[A,C,D, E,H,F, G,0,I]).

apply_move([A,C,D, E,F,0, G,H,I],down,[A,C,D, E,F,I, G,H,0]).

% Determine a legal move given a 
% state. The order of these declarations
% directly affect the runtime of the program.
% These are ordered to solve any 1 move solution
% in one move(the first 4 declarations), and then 
% a somewhat random order thereafter. 
		
find_move([A,0,C, D,E,F, G,H,I],down).
		   
find_move([A,C,D, 0,E,F, G,H,I],right).
		   
find_move([A,C,D, E,F,0, G,H,I],left).
		   
find_move([A,C,D, E,F,G, H,0,I],up).	

find_move([A,C,D, 0,E,F, G,H,I],up).			   

find_move([A,C,D, E,0,F, G,H,I],left).

find_move([A,C,D, E,0,F, G,H,I],right).		   
		   
find_move([0,A,C, D,E,F, G,H,I],right).

find_move([0,A,C, D,E,F, G,H,I],down).
		   
find_move([A,C,D, 0,E,F, G,H,I],down).
		   
find_move([A,C,D, E,0,F, G,H,I],up).
		   
find_move([A,0,C, D,E,F, G,H,I],right).

find_move([A,0,C, D,E,F, G,H,I],left).		   

find_move([A,C,0, D,E,F, G,H,I],left).
		   
find_move([A,C,D, E,F,G, H,0,I],left).
		   
find_move([A,C,D, E,F,G, H,I,0],right).
		   
find_move([A,C,0, D,E,F, G,H,I],down).

find_move([A,C,D, E,0,F, G,H,I],down).

find_move([A,C,D, E,F,0, G,H,I],up).
		   
find_move([A,C,D, E,F,G, H,0,I],right).

find_move([A,C,D, E,F,G, H,I,0],up).
		   
find_move([A,C,D, E,F,0, G,H,I],down).
		   
find_move([A,C,D, E,F,G, 0,H,I],right).
		   
find_move([A,C,D, E,F,G, 0,H,I],up).

% Determines whether or not
% a state has been reached
% previously.

new_state(S,P) :-
 not(member(S,P)).
			
			
			
find_solution(State,Moves) :-
 solve(State,[], Moves).

 % Base Case of recursive definition:
 % terminates if State is the goal state.
 
solve(State,_,[]) :-
 goal_state(State).

 % Recursive Call:
 % acceptable_move generates NewState
 % solve is called, with State added to 
 % PreviousStates and the tail of Moves
 % (effectively appending muture moves
 % to the list)
 
solve(State,PreviousStates,[FirstMove | RestMoves]) :-
 acceptable_move(State, PreviousStates, FirstMove, NewState),
 solve(NewState, [State|PreviousStates], RestMoves).
 
 % find_move: chooses a legal move for State
 % apply_move: applies that move to the State, 
 % new_state: ensures the NewState is not in PreviousStates.
 % 
 % find_move may find multiple possible legal moves.
 % NewState will be the result of the first move found,
 % that when applied produces a new state.
 
acceptable_move(State, PreviousStates, Move, NewState) :-
 find_move(State, Move),
 apply_move(State, Move, NewState),
 new_state(NewState, PreviousStates).
 
 
 
 /**
  *
  * To execute the program on must run the query:
  *
  * 		?- find_solution([...somestate...],SomeVariable).
  *
  * The prolog interpreter will return: 
  *
  *			SomeVariable = [...list of moves in solution...]
  *
  * For example:
  *
  *			?- find_solution([1,0,3,4,2,5,6,7,8],Moves).
  *
  * Should return:
  *
  *			Moves = [down]
  * 
  * Some solutions may be very long, due to the nature of the depth
  * first search. To output the length of the solution, i.e. the number
  * of moves to reach the solution from the initial state run the query: 
  *
  * 		?- find_solution([...somestate...],SomeVariable),length(SomeVariable,Counter)
  *
  * The prolog interpreter will return: 
  *
  *			SomeVariable = [...list of moves in solution...],
  *			Counter = length of list;
  *
  * For example:
  *
  *			?- find_solution([1,0,3,4,2,5,6,7,8],Moves),length(Moves, N).
  *
  * Should return:
  *
  *			Moves = [down],
  *			N = 1;
  *
  * 						Other Notes:
  *
  * As is is possible for a state to be invalid: i.e. have no solution
  * It is important to ensure that the state being entered is in fact
  * solvable. An algorithm may be used to determine if a state is valid.
  * Below is the algorithm used (written in Python).
  *
  *				def solvable(a):
  *					inv = 0
  *					a.remove(0)
  *					for i in range(len(a)):        
  *						for j in range(i,len(a)):
  *							if a[i]>a[j]:
  *							inv+=1
  *					return inv%2 == 0
  *
  * When called with a state it will return true or false depending on whether the	
  * state is solvable or not (respectively).
  *
  */