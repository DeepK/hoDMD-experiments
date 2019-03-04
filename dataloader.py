from safe_pickle import pickle_load
import pandas


"""
- Opens up the pre-computed pickled train-test data
"""
def picked_train_test_data_loader(train_path, test_path):
	train = pickle_load(train_path)
	test = pickle_load(test_path)

	return train, test


"""
- Gets the Reuters-8 or the Stanford Sentiment Treebank dataset
- Reuters:
	text_train_test_data_loader("datasets/r8-train-no-short.txt", "datasets/r8-test-no-short.txt")
- Stanford Sentiment Treebank
	text_train_test_data_loader(stanfordSentimentTreebank/sst5_train_sentences.csv", "stanfordSentimentTreebank/sst5_test.csv")
"""
def text_train_test_data_loader(train_datapath, test_datapath):

	def getData(dataset):
		data = []
		f = open(dataset, "r")
		for line in f:
			line = line[:-1].split("\t")
			data.append(line)
		f.close()
		return data

	def getStanfordData(dataset):
		data = pandas.read_csv(dataset, delimiter = ",", header = None)
		data = data[[1,0]]
		return data.as_matrix()

	train = None
	test = None

	if "sst5" in train_datapath or "sst5" in test_datapath:
		train = getStanfordData(train_datapath)
		test = getStanfordData(test_datapath)
	else:
		train = getData(train_datapath)
		test = getData(test_datapath)

	return train, test