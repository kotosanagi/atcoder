s = input()
k = int(input())


def count_x(s, n, k):
    count = 0
    for s_i in range(len(s) - n):
        if s[s_i + n] != 'X':
            if k > 0:
                k -= 1
            else:
                return count
        count += 1
    return count

ans = 0
for i in range(len(s)):
    #print("i:", i, "->", count_x(s, i, k))
    if ans < count_x(s, i, k):
        ans = count_x(s, i, k)

print(ans)

