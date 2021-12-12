
n, m = map(int, input().split())

b = []

for i in range(n):
    b.append(list(map(int, input().split())))

for i in range(n):
    for j in range(m-1):
        # 行内で１ずつ増えているか
        if (b[i][j]+1 != b[i][j+1]):
            print("No")
            exit()
        # 行内で７の倍数があれば、それは右端であるか
        if ((b[i][j]%7 == 0) and (j != m)):
            print("No")
            exit()
    # 次の行は７ずつ増えているか
    if (i != 0):
        if ((b[i-1][0] + 7) != b[i][0]):
            print("No")
            exit()

print("Yes")


