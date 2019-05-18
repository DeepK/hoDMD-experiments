from sklearn.decomposition import PCA
from traintestutil import train_test
import numpy
from functools import partial
import argparse


def pca_reduced(to_keep, vectors):
	pca = PCA(n_components = to_keep, whiten = True).fit(vectors)
	return numpy.hstack(pca.components_[:to_keep, :])


if __name__ == "__main__":

  parser = argparse.ArgumentParser(description='Evaluate PCA based sentence embedding')
  parser.add_argument("pickled_training_data_path", help="pickled train path")
  parser.add_argument("pickled_test_data_path", help="pickled test path")
  parser.add_argument("PCA_components_to_keep", help="components to keep", type = int)

  args = parser.parse_args()

  pickled_training_data_path = args.pickled_training_data_path
  pickled_test_data_path = args.pickled_test_data_path
  PCA_components_to_keep = args.PCA_components_to_keep

  print ("PCA components to keep -> %s"%PCA_components_to_keep)

  func_to_apply = partial(pca_reduced, PCA_components_to_keep)

  filter_by_len = PCA_components_to_keep
  results = train_test(pickled_training_data_path, pickled_test_data_path, func_to_apply, filter_by_len)
  results = results.split("\n")[-2]
  print (results)
