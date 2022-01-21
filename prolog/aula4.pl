% 2 a c d h

flight(porto, lisbon, tap, tp1949, 1615, 60).
flight(lisbon, madrid, tap, tp1018, 1805, 75).
flight(lisbon, paris, tap, tp440, 1810, 150).
flight(lisbon, london, tap, tp1366, 1955, 165).
flight(london, lisbon, tap, tp1361, 1630, 160).
flight(porto, madrid, iberia, ib3095, 1640, 80).
flight(madrid, porto, iberia, ib3094, 1545, 80).
flight(madrid, lisbon, iberia, ib3106, 1945, 80).
flight(madrid, paris, iberia, ib3444, 1640, 125).
flight(madrid, london, iberia, ib3166, 1550, 145).
flight(london, madrid, iberia, ib3163, 1030, 140).
flight(porto, frankfurt, lufthansa, lh1177, 1230, 165).

%2a
get_all_nodes(Airports):- 
    findall(Origin, flight(Origin, _, _, _, _, _), Airports1),
    findall(Destination, flight(_, Destination, _, _, _, _), Airports2),
    append(Airports1, Airports2, Airports3),
    sort(Airports3, Airports).


%2c
find_flights(Origin, Destination, Flights):-
    findall(Code, (flight(Origin, Destination, _, Code,_,_); flight(Destination, Origin, _, Code, _, _)), Flights).

%2d
find_flights_breadth(Origin, Destination, Flights):-
    findall(Code, (flight(Origin, Destination, _, Code,_,_); flight(Destination, Origin, _, Code, _, _)), Flights).

%2h
% find_circular_trip