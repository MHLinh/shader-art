letters = ['a', 'b', 'c', 'd']
x = '[0.235 0.267 0.436] [0.632 0.597 0.144] [0.513 1.461 1.091] [3.479 2.626 0.407]'

y = x[1:-1].split('] [')
y = [s.replace(' ', ', ') for s in y]

for idx, s in enumerate(y):
    print(f'vec3 {letters[idx]} = vec3({s});')
