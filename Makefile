CC=g++
CFLAGS=--std=c++11
EXE=tictactoe
SRC= ./src
INC=./inc
OBJ=./obj
all: main.o board.o
	$(CC) $(CFLAGS) -o $(EXE) obj/*.o
main.o: $(OBJ) $(SRC)/main.cpp $(INC)/main.hpp
	$(CC) $(CFLAGS) -c src/main.cpp -o obj/main.o
board.o: $(OBJ) $(SRC)/board.cpp $(INC)/board.hpp
	$(CC) $(CFLAGS) -c src/board.cpp -o obj/board.o
obj: 
	mkdir obj
clean:
	rm -r $(EXE) 
