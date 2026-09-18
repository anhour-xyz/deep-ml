
def calculate_brightness(img):
	if not img: return -1
	cnt = len(img) * len(img[0])
	total = 0
	length = len(img[0])
	for i in img:
		if len(i) != length: return -1
		for c in i:
			if not 0 <= c <= 255: return -1
			total += c

	return total / cnt
