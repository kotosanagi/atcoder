n, w = map(int, input().split())

ab = []
for i in range(n):
    ab.append(list(map(int, input().split())))

a, b = [list(i) for i in zip(*ab)]


# print("n:", n)
# print("w:", w)
# print("ab:",ab)
# for i in range(n):
#     print("a[",i,"]:",ab[i][0],"    b[",i,"]:",ab[i][1])


sorted_ab = sorted(ab, reverse=True)

if w == 1:
    print(sorted_ab[0][0])
    exit()

# print("sorted_ab",sorted_ab)


sum_list = []
sum_list.append([sorted_ab[0][0]*sorted_ab[0][1], sorted_ab[0][1]])

# print(sum_list)
for i in range(1, n):
    # print("sorted_ab[",i,"][1]", sorted_ab[i][1])
    sum_list.append([(sum_list[i-1][0]+sorted_ab[i][0]*sorted_ab[i][1]),(sum_list[i-1][1] + sorted_ab[i][1])])

# print("sum_list:",sum_list)


for i in range(n):
    # print("sum_list[",i,"][1]:",sum_list[i][1],"   -> ", sum_list[i][1] > w)
    if ((sum_list[i][1] > w) and (i != 0)):
        # print("----here is in if state----")
        # print(w - sum_list[i-1][1])
        # print(sorted_ab[i][0])
        print((sorted_ab[i][0])*(w - sum_list[i-1][1])+sum_list[i-1][0])
        # print("----here is in if state----")
        exit()

print(sum_list[n-1][0])

