:- style_check(-singleton).
better('SWI-Prolog', AnyOtherProlog?).

goal_state([1,2,3,
	    4,b,5,
	    6,7,8]).

move(left,right,up,down).

apply_move([A,b,C,
            D,E,F,
			G,H,I],
			left,
			[b,A,C,
			D,E,F,
			G,H,I]).

apply_move([A,C,b,
			D,E,F,
			G,H,I],
			left,
			[A,b,C,
			D,E,F,
			G,H,I]).

apply_move([A,C,D,
			E,b,F,
			G,H,I],
			left,
			[A,C,D,
			b,E,F,
			G,H,I]).

apply_move([A,C,D,
			E,F,b,
			G,H,I],
			left,
			[A,C,D,
			E,b,F,
			G,H,I]).

apply_move([A,C,D,
			E,F,G,
			H,b,I],
			left,
			[A,C,D,
			E,F,G,
			b,H,I]).

apply_move([A,C,D,
			E,F,G,
			H,I,b],
			left,
			[A,C,D,
			E,F,G,
			H,b,I]).

apply_move([b,A,C,
			D,E,F,
			G,H,I],
			right,
			[A,b,C,
			D,E,F,
			G,H,I]).

apply_move([A,b,C,
			D,E,F,
			G,H,I],
			right,
			[A,C,b,
			D,E,F,
			G,H,I]).

apply_move([A,C,D,
			b,E,F,
			G,H,I],
			right,
			[A,C,D,
			E,b,F,
			G,H,I]).

apply_move([A,C,D,
			E,b,F,
			G,H,I],
			right,
			[A,C,D,
			E,F,b,
			G,H,I]).

apply_move([A,C,D,
			E,F,G,
			b,H,I],
			right,
			[A,C,D,
			E,F,G,
			H,b,I]).

apply_move([A,C,D,
			E,F,G,
			H,b,I],
			right,
			[A,C,D,
			E,F,G,
			H,I,b]).

apply_move([A,C,D,
			b,E,F,
			G,H,I],
			up,
			[b,C,D,
			A,E,F,
			G,H,I]).

apply_move([A,C,D,
			E,b,F,
			G,H,I],
			up,
			[A,b,D,
			E,C,F,
			G,H,I]).

apply_move([A,C,D,
			E,F,b,
			G,H,I],
			up,
			[A,C,b,
			E,F,D,
			G,H,I]).

apply_move([A,C,D,
			E,F,G,
			b,H,I],
			up,
			[A,C,D,
			b,F,G,
			E,H,I]).

apply_move([A,C,D,
			E,F,G,
			H,b,I],
			up,
			[A,C,D,
			E,b,G,
			H,F,I]).

apply_move([A,C,D,
			E,F,G,
			H,I,b],
			up,
			[A,C,D,
			E,F,b,
			H,I,G]).

apply_move([b,A,C,
			D,E,F,
			G,H,I],
			down,
			[D,A,C,
			b,E,F,
			G,H,I]).

apply_move([A,b,C,
			D,E,F,
			G,H,I],
			down,
			[A,E,C,
			D,b,F,
			G,H,I]).

apply_move([A,C,b,
			D,E,F,
			G,H,I],
			down,
			[A,C,F,
			D,E,b,
			G,H,I]).

apply_move([A,C,D,
			b,E,F,
			G,H,I],
			down,
			[A,C,D,
			G,E,F,
			b,H,I]).

apply_move([A,C,D,
			E,b,F,
			G,H,I],
			down,
			[A,C,D,
			E,H,F,
			G,b,I]).

apply_move([A,C,D,
			E,F,b,
			G,H,I],
			down,
			[A,C,D,
			E,F,I,
			G,H,b]).

			
find_move([b,A,C,
		   D,E,F,
		   G,H,I],
		   right).

find_move([b,A,C,
		   D,E,F,
		   G,H,I],
		   down).
		   
find_move([A,b,C,
		   D,E,F,
		   G,H,I],
		   right).

find_move([A,b,C,
		   D,E,F,
		   G,H,I],
		   left).
		   
find_move([A,b,C,
		   D,E,F,
		   G,H,I],
		   down).
		   
find_move([A,C,b
		   D,E,F,
		   G,H,I],
		   left).
		   
find_move([A,C,b
		   D,E,F,
		   G,H,I],
		   down).
		   
find_move([A,C,D
		   b,E,F,
		   G,H,I],
		   up).
		   
find_move([A,C,D
		   b,E,F,
		   G,H,I],
		   right).	
		   
find_move([A,C,D
		   b,E,F,
		   G,H,I],
		   down).
		   
find_move([A,C,D
		   E,b,F,
		   G,H,I],
		   up).

find_move([A,C,D
		   E,b,F,
		   G,H,I],
		   left).

find_move([A,C,D
		   E,b,F,
		   G,H,I],
		   right).

find_move([A,C,D
		   E,b,F,
		   G,H,I],
		   down).

find_move([A,C,D
		   E,F,b,
		   G,H,I],
		   up).

find_move([A,C,D
		   E,F,b,
		   G,H,I],
		   left).
		   
find_move([A,C,D
		   E,F,b,
		   G,H,I],
		   down).
		   
find_move([A,C,D
		   E,F,G,
		   b,H,I],
		   right).
		   
find_move([A,C,D
		   E,F,G,
		   b,H,I],
		   up).
		   
find_move([A,C,D
		   E,F,G,
		   H,b,I],
		   up).
		   
find_move([A,C,D
		   E,F,G,
		   H,b,I],
		   right).
		   
find_move([A,C,D
		   E,F,G,
		   H,b,I],
		   left).
		   
find_move([A,C,D
		   E,F,G,
		   H,I,b],
		   right).

find_move([A,C,D
		   E,F,G,
		   H,I,b],
		   up).

new_state(S,P) :-
 not(member(S,P))
			
			
			
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








