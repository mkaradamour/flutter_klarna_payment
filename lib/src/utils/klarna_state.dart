enum KlarnaState {
  initial,
  initialized,
  loaded,
  authorized,
  finalized,
  reauthorized,
  errorOccurred,
  loadPaymentReview,
  createOrder,
  unknown
}

KlarnaState klarnaStateFromString(String input) {
  for (final state in KlarnaState.values) {
    if (input == state.name) {
      return state;
    }
  }

  return KlarnaState.unknown;
}
