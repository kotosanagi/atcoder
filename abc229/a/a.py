s1 = input()
s2 = input()

# print("s1:", s1)
# print("s2:", s2)

ans = "Yes"

if (((s1 == ".#") and (s2 == "#.")) or ((s1 == "#.") and (s2 == ".#"))):
    ans = "No"

print(ans)