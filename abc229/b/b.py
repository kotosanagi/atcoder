a, b = map(int, input().split())


# print("a:", a)
# print("b:", b)

ans = "Easy"


if a < b:
    # print("a < b")
    loop = len(str(b))
    # print("loop:", loop)
else:
    # print("a > b")
    loop = len(str(a))
    # print("loop:", loop)



#大きいほうの桁数だけループ
for i in range(loop):
    # i + 1 桁目を引っ張りたい
    # (a/10**i)%10
    # print(i, "桁目... a:", (a//10**i)%10, ",  b:", (b//10**i)%10)
    # if 引っ張ったやつ同士の足し算 >= 10 なら、ans=Hard してbreak
    if (((a//10**i)%10) + ((b//10**i)%10)) >= 10:
        ans = "Hard"
        break

print(ans)


