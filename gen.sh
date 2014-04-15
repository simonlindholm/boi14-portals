# TODO: Verify that there are unreachable areas in each subtask
# TODO: Verify that there is a test case with no portal usage in each subtask
# TODO: Cases with R != C
# A case with no portals and a long walk?

alias python='pypy' # (faster, but optional)

# Subtask 1 (20 points): 1 <= R <= 10, 1 <= C <= 10
cp manual/single-line.txt                task.1-01.in   # single line, no portal usage
cp manual/walking.txt                    task.1-02.in   # no portal usage
python gen-maze.py 10 10 1 0 1          >task.1-03.in   # long path
python gen-maze.py 10 10 1 20 6         >task.1-04.in   # labyrinth with some freedom
python gen-maze.py 10 10 1 25 8         >task.1-05.in   # another one
python gen-maze.py 10 10 1 40 14        >task.1-06.in   # a third one
python gen-random.py 10 10 20 0 15      >task.1-07.in   # random, some open areas

# Subtask 2 (20 points): 1 <= R <= 50, 1 <= C <= 50
# no portal usage
# case where nearest wall is on the edge

# Subtask 3 (20 points): 1 <= R <= 200, 1 <= C <= 200, and every open square has at least one wall adjacent to it
cp manual/single-line.txt                task.3-01.in   # single line, no portal usage
python gen-maze.py 200 200 0 0 5        >task.3-02.in   # long path
python gen-maze.py 200 200 0 7000 6     >task.3-03.in   # labyrinth with some freedom

# Subtask 4 (20 points): 1 <= R <= 200, 1 <= C <= 200
python gen-random.py 200 200 30 1 9     >task.4-01.in   # fractalish
python gen-random.py 200 200 10000 0 11 >task.4-02.in   # dense random
python gen-random.py 200 200 10 0 12    >task.4-03.in   # sparse, no portal usage
python gen-empty.py 200 200             >task.4-04.in   # large empty areas
python gen-maze.py 200 200 1 0 4        >task.4-05.in   # long path
python gen-maze.py 200 200 1 300 7      >task.4-06.in   # labyrinth with some freedom
python gen-maze.py 200 200 1 3000 7     >task.4-07.in   # labyrinth with even more freedom

# Subtask 5 (20 points): 1 <= R <= 1000, 1 <= C <= 1000
python gen-random.py 1000 1000 100 0 20 >task.5-01.in   # sparse
python gen-random.py 1000 1000 3 0 23   >task.5-02.in   # sparse, no portal usage
python gen-empty.py 1000 1000           >task.5-03.in   # large empty areas
python gen-maze.py 1000 1000 0 0 10     >task.5-04.in   # long path (85k steps)
python gen-maze.py 1000 1000 1 1000 32  >task.5-05.in   # labyrinth with some freedom
python gen-maze.py 1000 1000 1 30000 27 >task.5-06.in   # labyrinth with even more freedom

# Solutions
make solver
for T in *.in; do
	./solver <$T >${T%.in}.sol
done
