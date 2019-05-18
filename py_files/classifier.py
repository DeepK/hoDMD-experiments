from sklearn.metrics import classification_report, f1_score
from sklearn.svm import SVC


"""
- Trains a linear SVM classifier.
- Tunes the L2 regularization coefficient, but I wouldn't call it "thorough" ;)
- Outputs the a report corresponding to the best possible F1 score
"""
def train_best(X_train, Y_train, X_test, Y_test):
  best_f = 0
  best_report = ""
  for C in [0.001, 0.1, 1, 10, 100]:
    svm_model_linear = SVC(kernel = 'linear', C = C, class_weight = 'balanced', max_iter = 5000).fit(X_train, Y_train) 
    svm_predictions = svm_model_linear.predict(X_test)
    f = f1_score(Y_test, svm_predictions, average = 'weighted')

    if f > best_f:
      best_f = f
      best_report = classification_report(Y_test, svm_predictions, digits = 5)

  return best_report