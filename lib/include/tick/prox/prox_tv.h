#ifndef LIB_INCLUDE_TICK_PROX_PROX_TV_H_
#define LIB_INCLUDE_TICK_PROX_PROX_TV_H_

// License: BSD 3 clause

#include "prox.h"

template <class T>
class DLL_PUBLIC TProxTV : public TProx<T> {
 protected:
  using TProx<T>::strength;
  using TProx<T>::positive;

 public:
  using TProx<T>::get_class_name;

 public:
  TProxTV(T strength, bool positive);

  TProxTV(T strength, ulong start, ulong end, bool positive);

  T value(const Array<T> &coeffs, ulong start, ulong end) override;

  void call(const Array<T> &coeffs, T step, Array<T> &out, ulong start,
            ulong end) override;
};

using ProxTV = TProxTV<double>;

using ProxTVDouble = TProxTV<double>;
using ProxTVFloat = TProxTV<float>;

#endif  // LIB_INCLUDE_TICK_PROX_PROX_TV_H_
