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

fib(X,_,_,[X]).
%fib(First1,_,Last,[First1|Result]) :-
        %First1 =:= Last,
        %Result = [].
fib(First1,First2,Last,[First1|Result]) :-
	First2 < Last,
	First1 =:= Last,
	Result= [].
	Sum is First1+First2,
	fib(First2,Sum,Last,Result).
	%fib(First2,Sum,Last,List1),
	%append([First1],List1,Result).
