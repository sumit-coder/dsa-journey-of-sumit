def solution(s):
    stack = []
    res = ''
    cCount = 0
    local = ''

    for n in s:
        if s.isdigit():
            cCount = s
        elif s == '[':
            stack.append(cCount)
            cCount = 0
        elif s == ']':
            res += local*cCount # type: ignore
            
        else:
            local = local+ n
    
    return res

print(solution('3[a]2[bc]'))