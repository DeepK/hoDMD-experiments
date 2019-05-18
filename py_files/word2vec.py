import gensim
from dataloader import text_train_test_data_loader
import re
import argparse


"""
- Trains and saves a word2vec on a corpus
- Use as: 
	- save_w2v_model("datasets/r8-train-no-short.txt", "datasets/r8-test-no-short.txt", "models/r8/w2v-r8.model")
"""
def save_w2v_model(training_data, test_data, out_model_path):
	training_data, test_data = text_train_test_data_loader(training_data, test_data)

	documents = []

	for row in training_data:
		words = [word.lower() for word in re.split("\W+", row[1]) if len(word) > 2]
		documents.append(words)

	for row in test_data:
		words = [word.lower() for word in re.split("\W+", row[1]) if len(word) > 2]
		documents.append(words)

	model = gensim.models.Word2Vec(documents, size=300, min_count=1, workers=10, iter = 100)
	model.save(out_model_path)

if __name__ == "__main__":

	parser = argparse.ArgumentParser(description='Word2Vec')
	parser.add_argument("train_path", help="train path")
	parser.add_argument("test_path", help="test path")
	parser.add_argument("model_out_path", help="model out path")
	args = parser.parse_args()

	train_path = args.train_path
	test_path = args.test_path
	model_out_path = args.model_out_path

	save_w2v_model(train_path, test_path, model_out_path)
