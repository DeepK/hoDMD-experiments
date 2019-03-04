from traintestutil import train_test
import numpy
from functools import partial
import argparse


# from:
# https://github.com/UKPLab/arxiv2018-xling-sentence-embeddings/blob/master/model/sentence_embeddings.py#L4
def p_mean_vector(powers, vectors):
  embeddings = []
  for p in powers:
    embeddings.append(numpy.power(numpy.mean(numpy.power(numpy.array(vectors, dtype=complex),p),axis=0),1 / p).real)
  return numpy.hstack(embeddings)


if __name__ == "__main__":

  parser = argparse.ArgumentParser(description='Evaluate p-mean algorithm https://arxiv.org/abs/1803.01400')
  parser.add_argument("pickled_training_data_path", help="pickled train path")
  parser.add_argument("pickled_test_data_path", help="pickled test path")
  parser.add_argument('powers', nargs="+", default = [1.0], type=float, help="an array of powers, to calculate power means of and concatenate")

  args = parser.parse_args()

  pickled_training_data_path = args.pickled_training_data_path
  pickled_test_data_path = args.pickled_test_data_path
  powers = args.powers

  print ("Powers -> %s"%powers)

  func_to_apply = partial(p_mean_vector, powers)

  results = train_test(pickled_training_data_path, pickled_test_data_path, func_to_apply, whiten = True)
  results = results.split("\n")[-2]
  print (results)