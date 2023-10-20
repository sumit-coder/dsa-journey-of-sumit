# 1071. Greatest Common Divisor of Strings

def gcdOfStrings(self, str1: str, str2: str) -> str:
    def isDevisor(l):
        if len(str1) % l or len(str2) % l:
            return False

        return str1[:l] * (len(str1) // l) == str1 and str1[:l] * (len(str2) // l) == str2

    for i in range(min(len(str1), len(str2)), 0, -1):
        if isDevisor(i):
            return str1[:i]

    return ""
