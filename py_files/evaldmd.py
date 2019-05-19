from pydmd import HODMD
from evalpowmean import p_mean_vector
from traintestutil import train_test
import numpy
from functools import partial
import argparse
import warnings
warnings.filterwarnings("ignore")


def sentence_to_dmd_vec(to_keep, time_lags, concat_avg, vectors):
  v = numpy.asarray(vectors)
  list_of_modes = []
  for d in time_lags:
    dmd = HODMD(svd_rank = to_keep, opt=True, exact=True, d=d)
    dmd.fit(v.T)
    fmode = dmd.modes.T
    list_of_modes.append(numpy.hstack(numpy.absolute(fmode)))

  if concat_avg:
    mean_vec = p_mean_vector([1.0], v)
    list_of_modes.append(mean_vec)

  return numpy.hstack(list_of_modes)

  

if __name__ == "__main__":

  parser = argparse.ArgumentParser(description='Evaluate higher order DMD based sentence embedding')
  parser.add_argument("pickled_training_data_path", help="pickled train path")
  parser.add_argument("pickled_test_data_path", help="pickled test path")
  parser.add_argument("DMD_components_to_keep", help="DMD components to keep", type = int)
  parser.add_argument('time_lags', nargs="+", default = [1.0], type=int, help="an array of time lags for the time-lagged higher order windows")
  parser.add_argument('-c', help="concat mean of word embedding", action="store_true")
  parser.add_argument('-w', help="whiten concatenation", action="store_true")

  args = parser.parse_args()

  pickled_training_data_path = args.pickled_training_data_path
  pickled_test_data_path = args.pickled_test_data_path
  DMD_components_to_keep = args.DMD_components_to_keep
  time_lags = args.time_lags
  concatmean = args.c

  print ("DMD components to keep -> %s"%DMD_components_to_keep)
  print ("Windows -> %s"%time_lags)
  print ("Concat mean embedding -> %s"%concatmean)

  func_to_apply = partial(sentence_to_dmd_vec, DMD_components_to_keep, time_lags, concatmean)

  filter_by_len = DMD_components_to_keep + max(time_lags)
  results = train_test(pickled_training_data_path, pickled_test_data_path, func_to_apply, filter_by_len)
  results = results.split("\n")[-2]
  print (results)
