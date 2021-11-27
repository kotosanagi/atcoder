n = int(input())

S = list(map(int, input().split()))

tmp_list = []
for a in range(1, 143):
	for b in range(1, 143):
		if (a >= b and (4*a*b + 3*a + 3*b) <= 1000):
			tmp_list.append(4*a*b + 3*a + 3*b)

unique_list = list(set(tmp_list))

# print(unique_list)

ans = 0

for s in S:
	# print(s)
	if s not in unique_list:
		ans += 1

print(ans)



