import argparse
from dataloader import picked_train_test_data_loader
from sklearn import preprocessing
from classifier import train_best
import numpy
from bert_serving.client import BertClient


bc = BertClient()


def train_test(pickled_train_path, pickled_test_path):

  train, test = picked_train_test_data_loader(pickled_train_path, pickled_test_path)

  def vectorize_dataset(data):
    X = []
    Y = []

    sentences = []

    for row in data:
      sentences.append(" ".join(row[3]))
      Y.append(row[0])

      if len(sentences)%20 == 0:
        X.extend([e for e in bc.encode(sentences)])
        sentences = []

    if len(sentences) != 0:
      X.extend([e for e in bc.encode(sentences)])
    
    return numpy.vstack(X), Y

  X_train, Y_train = vectorize_dataset(train)
  X_test, Y_test = vectorize_dataset(test)

  X_train = numpy.asarray(X_train)
  X_test = numpy.asarray(X_test)

  le = preprocessing.LabelEncoder()
  le.fit(Y_train)
  Y_train = le.transform(Y_train)
  Y_test = le.transform(Y_test)

  print ("Length of vector: %s"%X_train.shape[1])

  return train_best(X_train, Y_train, X_test, Y_test)


if __name__ == "__main__":

  parser = argparse.ArgumentParser(description='Evaluate ELMo based sentence embedding')
  parser.add_argument("pickled_training_data_path", help="pickled train path")
  parser.add_argument("pickled_test_data_path", help="pickled test path")

  args = parser.parse_args()

  pickled_training_data_path = args.pickled_training_data_path
  pickled_test_data_path = args.pickled_test_data_path

  results = train_test(pickled_training_data_path, pickled_test_data_path)
  results = results.split("\n")[-2]
  print (results)
