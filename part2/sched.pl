%Part 1
m_names(X) :-
	mach(X,_,_).

m_lect(Name) :-
	mach(Name,lect,_).

m_pc(Name) :-
	mach(Name,pc,_).

m_pc11(User) :- 
	mach(pc11,_,User).

m_no(Name) :-
	mach(Name,_,[]).

m_eq1(Name) :-
	mach(Name,_,User),
	length(User,1).

m_ge2(Name) :-
	mach(Name,_,User),
	length(User,X),
	X >= 2.

%Part 2

myfor(X,X,[X]).
myfor(First,Last,[First|Result]) :-
	First < Last, 
	NewFirst is First+1,
	myfor(NewFirst,Last,Result).
myfor(First,Last,Result) :-
	First > Last,
	Result=[]. 


fib(X,_,X,[X]).
fib(First1,First2,Last,[First1|Result]) :-
	First1 =< Last,
	First2 < Last,
	NewFirst1 is First2,
	NewFirst2 is First1+First2,
	fib(NewFirst1,NewFirst2,Last,Result).

fib(First1,First2,Last,Result) :-
	First1 < Last,
	First2 > Last,
	Result=[First1].

fib(First1,_,Last,Result) :-
	First1 > Last,
	Result=[].

