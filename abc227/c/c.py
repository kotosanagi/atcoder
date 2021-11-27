n = int(input())

a = 1
b = 1
c = n

print(a * b * c)

ans = 0

for a_i in range(1, n+1):
	for b_i in range(1, n+1):
		for c_i in range(1, n+1):
			print(a_i, b_i, c_i)


print("ans: ", ans)




