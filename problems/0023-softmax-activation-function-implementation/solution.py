import math

def softmax(scores: list[float]) -> list[float]:
    res = []
    total = 0
    maximum = max(scores)
    for s in scores:
        total += math.exp(s-maximum)

    for s in scores:
        res.append(math.exp(s-maximum) / total)
    return res