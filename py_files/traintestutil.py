from dataloader import picked_train_test_data_loader
from sklearn import preprocessing
from classifier import train_best
import numpy
from sklearn.preprocessing import StandardScaler


"""
Common test/train method
Can be "hacked" to only provide the embeddings, to visualize, etc.
"""
def train_test(pickled_train_path, pickled_test_path, func_to_apply, filter_by_len = -1, whiten = False, return_datasets_without_classification = False):

  train, test = picked_train_test_data_loader(pickled_train_path, pickled_test_path)

  def vectorize_dataset(data):
    X = []
    Y = []
    new_data = []

    for row in data:
      wv = row[2]
      if (len(wv) < filter_by_len):
        continue
      try:
        vec = func_to_apply(wv)
        Y.append(row[0])
        X.append(vec)
        new_data.append(row)
      except:
        pass

    return X, Y, new_data

  X_train, Y_train, train = vectorize_dataset(train)
  X_test, Y_test, test = vectorize_dataset(test)

  X_train = numpy.asarray(X_train)
  X_test = numpy.asarray(X_test)

  if whiten:
    sc = StandardScaler()
    X_train = sc.fit_transform(X_train)
    X_test = sc.transform(X_test)

  le = preprocessing.LabelEncoder()
  le.fit(Y_train)
  Y_train = le.transform(Y_train)
  Y_test = le.transform(Y_test)

  print ("Length of vector: %s"%X_train.shape[1])

  if not return_datasets_without_classification:
    return train_best(X_train, Y_train, X_test, Y_test)
  else:
    return train, test, X_train, Y_train, X_test, Y_test
