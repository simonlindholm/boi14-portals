# TODO: Verify that there are unreachable areas in each subtask

# Subtask 1 (20 points): 1 <= R <= 10, 1 <= C <= 10

# Subtask 2 (20 points): 1 <= R <= 50, 1 <= C <= 50

# Subtask 3 (20 points): 1 <= R <= 200, 1 <= C <= 200, and every open square has at least one wall adjacent to it
cp single-line.txt                       task.3-01.in   # single line, no portal usage
python gen-maze.py 200 200 0 0 5        >task.3-02.in   # long path
python gen-maze.py 200 200 0 7000 6     >task.3-03.in   # labyrinth with some more freedom

# Subtask 4 (20 points): 1 <= R <= 200, 1 <= C <= 200
python gen-random.py 200 200 30 1 9     >task.4-01.in   # fractalish
python gen-random.py 200 200 10000 0 11 >task.4-02.in   # dense random
python gen-random.py 200 200 10 0 12    >task.4-03.in   # sparse, no portal usage
python gen-empty.py 200 200             >task.4-04.in   # large empty areas
python gen-maze.py 200 200 1 0 4        >task.4-05.in   # long path
python gen-maze.py 200 200 1 300 7      >task.4-06.in   # labyrinth with some freedom
python gen-maze.py 200 200 1 3000 7     >task.4-07.in   # labyrinth with even more freedom

# Subtask 5 (20 points): 1 <= R <= 1000, 1 <= C <= 1000

# Solutions
make portals
for T in *.in; do
	./portals <$T >${T%.in}.sol
done
