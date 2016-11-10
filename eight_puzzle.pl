:- style_check(-singleton).
better('SWI-Prolog', AnyOtherProlog?).

goal_state([1,2,3,4,0,5,6,7,8]).

apply_move([A,0,C,
            D,E,F,
			G,H,I],
			left,
			[0,A,C,
			D,E,F,
			G,H,I]).

apply_move([A,C,0,
			D,E,F,
			G,H,I],
			left,
			[A,0,C,
			D,E,F,
			G,H,I]).

apply_move([A,C,D,
			E,0,F,
			G,H,I],
			left,
			[A,C,D,
			0,E,F,
			G,H,I]).

apply_move([A,C,D,
			E,F,0,
			G,H,I],
			left,
			[A,C,D,
			E,0,F,
			G,H,I]).

apply_move([A,C,D,
			E,F,G,
			H,0,I],
			left,
			[A,C,D,
			E,F,G,
			0,H,I]).

apply_move([A,C,D,
			E,F,G,
			H,I,0],
			left,
			[A,C,D,
			E,F,G,
			H,0,I]).

apply_move([0,A,C,
			D,E,F,
			G,H,I],
			right,
			[A,0,C,
			D,E,F,
			G,H,I]).

apply_move([A,0,C,
			D,E,F,
			G,H,I],
			right,
			[A,C,0,
			D,E,F,
			G,H,I]).

apply_move([A,C,D,
			0,E,F,
			G,H,I],
			right,
			[A,C,D,
			E,0,F,
			G,H,I]).

apply_move([A,C,D,
			E,0,F,
			G,H,I],
			right,
			[A,C,D,
			E,F,0,
			G,H,I]).

apply_move([A,C,D,
			E,F,G,
			0,H,I],
			right,
			[A,C,D,
			E,F,G,
			H,0,I]).

apply_move([A,C,D,
			E,F,G,
			H,0,I],
			right,
			[A,C,D,
			E,F,G,
			H,I,0]).

apply_move([A,C,D,
			0,E,F,
			G,H,I],
			up,
			[0,C,D,
			A,E,F,
			G,H,I]).

apply_move([A,C,D,
			E,0,F,
			G,H,I],
			up,
			[A,0,D,
			E,C,F,
			G,H,I]).

apply_move([A,C,D,
			E,F,0,
			G,H,I],
			up,
			[A,C,0,
			E,F,D,
			G,H,I]).

apply_move([A,C,D,
			E,F,G,
			0,H,I],
			up,
			[A,C,D,
			0,F,G,
			E,H,I]).

apply_move([A,C,D,
			E,F,G,
			H,0,I],
			up,
			[A,C,D,
			E,0,G,
			H,F,I]).

apply_move([A,C,D,
			E,F,G,
			H,I,0],
			up,
			[A,C,D,
			E,F,0,
			H,I,G]).

apply_move([0,A,C,
			D,E,F,
			G,H,I],
			down,
			[D,A,C,
			0,E,F,
			G,H,I]).

apply_move([A,0,C,
			D,E,F,
			G,H,I],
			down,
			[A,E,C,
			D,0,F,
			G,H,I]).

apply_move([A,C,0,
			D,E,F,
			G,H,I],
			down,
			[A,C,F,
			D,E,0,
			G,H,I]).

apply_move([A,C,D,
			0,E,F,
			G,H,I],
			down,
			[A,C,D,
			G,E,F,
			0,H,I]).

apply_move([A,C,D,
			E,0,F,
			G,H,I],
			down,
			[A,C,D,
			E,H,F,
			G,0,I]).

apply_move([A,C,D,
			E,F,0,
			G,H,I],
			down,
			[A,C,D,
			E,F,I,
			G,H,0]).

			
find_move([0,A,C,
		   D,E,F,
		   G,H,I],
		   right).

find_move([0,A,C,
		   D,E,F,
		   G,H,I],
		   down).
		   
find_move([A,0,C,
		   D,E,F,
		   G,H,I],
		   right).

find_move([A,0,C,
		   D,E,F,
		   G,H,I],
		   left).
		   
find_move([A,0,C,
		   D,E,F,
		   G,H,I],
		   down).
		   
find_move([A,C,0,
		   D,E,F,
		   G,H,I],
		   left).
		   
find_move([A,C,0,
		   D,E,F,
		   G,H,I],
		   down).
		   
find_move([A,C,D,
		   0,E,F,
		   G,H,I],
		   up).
		   
find_move([A,C,D,
		   0,E,F,
		   G,H,I],
		   right).	
		   
find_move([A,C,D,
		   0,E,F,
		   G,H,I],
		   down).
		   
find_move([A,C,D,
		   E,0,F,
		   G,H,I],
		   up).

find_move([A,C,D,
		   E,0,F,
		   G,H,I],
		   left).

find_move([A,C,D,
		   E,0,F,
		   G,H,I],
		   right).

find_move([A,C,D,
		   E,0,F,
		   G,H,I],
		   down).

find_move([A,C,D,
		   E,F,0,
		   G,H,I],
		   up).

find_move([A,C,D,
		   E,F,0,
		   G,H,I],
		   left).
		   
find_move([A,C,D,
		   E,F,0,
		   G,H,I],
		   down).
		   
find_move([A,C,D,
		   E,F,G,
		   0,H,I],
		   right).
		   
find_move([A,C,D,
		   E,F,G,
		   0,H,I],
		   up).
		   
find_move([A,C,D,
		   E,F,G,
		   H,0,I],
		   up).
		   
find_move([A,C,D,
		   E,F,G,
		   H,0,I],
		   right).
		   
find_move([A,C,D,
		   E,F,G,
		   H,0,I],
		   left).
		   
find_move([A,C,D,
		   E,F,G,
		   H,I,0],
		   right).

find_move([A,C,D,
		   E,F,G,
		   H,I,0],
		   up).

new_state(S,P) :-
 not(member(S,P)).
			
			
			
find_solution(State,Moves) :-
 solve(State,[], Moves).

solve(State,_,[]) :-
 goal_state(State).

solve(State,PreviousStates,[FirstMove | RestMoves]) :-
 acceptable_move(State, PreviousStates, FirstMove, NewState),
 solve(NewState, [State|PreviousStates], RestMoves).

acceptable_move(State, PreviousStates, Move, NewState) :-
 find_move(State, Move),
 apply_move(State, Move, NewState),
 new_state(NewState, PreviousStates).