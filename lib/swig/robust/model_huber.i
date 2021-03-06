// License: BSD 3 clause

%{
#include "tick/robust/model_huber.h"
%}

template <class T>
class TModelHuber : public virtual TModelGeneralizedLinear<T>, public TModelLipschitz<T> {
 public:
  TModelGeneralizedLinearWithIntercepts(
    const std::shared_ptr<BaseArray2d<T> > features,
    const std::shared_ptr<SArray<T> > labels,
    const bool fit_intercept,
    const int n_threads = 1
  );
  virtual T get_threshold(void) const;
  virtual void set_threshold(const T threshold);
};

%rename(ModelHuber) TModelHuber<double>;
class ModelHuber : public virtual TModelGeneralizedLinear<double>, public TModelLipschitz<double> {
 public:
  ModelHuber(
    const SBaseArrayDouble2dPtr features,
    const SArrayDoublePtr labels,
    const bool fit_intercept,
    const double threshold,
    const int n_threads = 1
  );
  virtual double get_threshold(void) const;
  virtual void set_threshold(const double threshold);
};
typedef TModelHuber<double> ModelHuber;

%rename(ModelHuberDouble) TModelHuber<double>;
class ModelHuberDouble : public virtual TModelGeneralizedLinear<double>, public TModelLipschitz<double> {
 public:
  ModelHuberDouble(
    const SBaseArrayDouble2dPtr features,
    const SArrayDoublePtr labels,
    const bool fit_intercept,
    const double threshold,
    const int n_threads = 1
  );
  virtual double get_threshold(void) const;
  virtual void set_threshold(const double threshold);
};
typedef TModelHuber<double> ModelHuberDouble;

%rename(ModelHuberFloat) TModelHuber<float>;
class ModelHuberFloat : public virtual TModelGeneralizedLinear<float>, public TModelLipschitz<float> {
 public:
  ModelHuberFloat(
    const SBaseArrayFloat2dPtr features,
    const SArrayFloatPtr labels,
    const bool fit_intercept,
    const float threshold,
    const int n_threads = 1
  );
  virtual float get_threshold(void) const;
  virtual void set_threshold(const float threshold);
};
typedef TModelHuber<float> ModelHuberFloat;
