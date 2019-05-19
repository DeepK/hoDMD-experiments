import numpy
import gensim
import re
from safe_pickle import pickle_dump
from dataloader import text_train_test_data_loader
import argparse
import os


"""
Given textual data, this method gets all the word vectors corresponding
to the data and pickles them to a file 
"""
def sent_to_w2v_vectors(data, word2vec_model, outfile):

	model = None
	if "GoogleNews" in word2vec_model:
		model = gensim.models.KeyedVectors.load_word2vec_format(word2vec_model, binary=True)
	else:
		model = gensim.models.Word2Vec.load(word2vec_model)

	w2v_data = []
	for row in data:
		words = [word.lower() for word in re.split("\W+", row[1]) if len(word) > 2]
		w2v = []
		
		usedWords = []
		for word in words:
			if word in model:
				vec = model[word]
				if numpy.isnan(vec).any() or numpy.isinf(vec).any():
					continue
				w2v.append(vec)
				usedWords.append(word)

		if len(w2v) == 0:
			continue

		w2v_data.append([row[0], row[1], w2v, usedWords])

	dirname = os.path.dirname(outfile)
	os.makedirs(dirname, exist_ok=True)
	pickle_dump(w2v_data, outfile)

if __name__ == "__main__":
	parser = argparse.ArgumentParser(description='Sentence to vectors')
	parser.add_argument("train_path", help="train path")
	parser.add_argument("test_path", help="test path")
	parser.add_argument("word2vec_model_path", help="path to the corresponding w2v model")
	parser.add_argument("pickled_train_data_out_path", help="out path for pickled training data")
	parser.add_argument("pickled_test_data_out_path", help="out path for pickled test data")

	args = parser.parse_args()

	train_path = args.train_path
	test_path = args.test_path
	word2vec_model_path = args.word2vec_model_path
	pickled_train_data_out_path = args.pickled_train_data_out_path
	pickled_test_data_out_path = args.pickled_test_data_out_path

	# get text data
	train, test = text_train_test_data_loader(train_path, test_path)

	# pickle training data vectors
	sent_to_w2v_vectors(train, word2vec_model_path, pickled_train_data_out_path)

	# pickle test data vectors
	sent_to_w2v_vectors(test, word2vec_model_path, pickled_test_data_out_path)
