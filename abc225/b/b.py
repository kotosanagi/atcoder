n = int(input())

a = []

for i in range(n-1):
    a.append(list(input().split()))

# print(a)


# print("a[0][0]:", a[0][0])
# print("a[0][1]:", a[0][1])



if a[0][0] in a[1]:
    center = a[0][0]
elif a[0][1] in a[1]:
    center = a[0][1]
else:
    print("No")
    exit()



for i in range(2, n-1):
    if center not in a[i]:
        print("No")
        exit()

print("Yes")



