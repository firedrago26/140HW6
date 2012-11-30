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
myfor(Last,Last,Result).
myfor(First,Last,Result) :-
	First<Last, 
	newFirst is First+1, 
	List1=[First|Last],
	List2=[newFirst|List1],
	myfor(newFirst,Last,Result),
	Result=List2. 

	%List1=[First|Last],
	%Inc is First+1, 
	%List2=[Inc|List1],
	%Result=[List2],
	%Inc < Last.	
	
	
	 
%fib(First1,First2,Last,Result).
	
