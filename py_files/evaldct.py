from scipy.fftpack import dct
from traintestutil import train_test
import numpy
from functools import partial
import argparse


def dct_keep(to_keep, vectors):
  return numpy.hstack(dct(vectors)[:to_keep, :])


if __name__ == "__main__":

  parser = argparse.ArgumentParser(description='Evaluate DCT based sentence embedding')
  parser.add_argument("pickled_training_data_path", help="pickled train path")
  parser.add_argument("pickled_test_data_path", help="pickled test path")
  parser.add_argument("DCT_components_to_keep", help="DCT components to keep", type = int)

  args = parser.parse_args()

  pickled_training_data_path = args.pickled_training_data_path
  pickled_test_data_path = args.pickled_test_data_path
  DCT_components_to_keep = args.DCT_components_to_keep

  print ("DCT components to keep -> %s"%DCT_components_to_keep)

  func_to_apply = partial(dct_keep, DCT_components_to_keep)

  filter_by_len = DCT_components_to_keep
  results = train_test(pickled_training_data_path, pickled_test_data_path, func_to_apply, filter_by_len)
  results = results.split("\n")[-2]
  print (results)
