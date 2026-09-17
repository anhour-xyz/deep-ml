import numpy as np

def accuracy_score(y_true, y_pred):
	# Your code here
	return (y_true == y_pred).sum() / len(y_true)