class EndpointsConst {
  const EndpointsConst._();

  static final auth = _ApiEndAuth();
  static final store = _ApiEndStore();
}

class _ApiEndAuth {
  final register = '/register';
  final login = '/login';
  final logout = '/logout';
  final activeAccount = '/activate-account';
}

class _ApiEndStore {
  final products = _ApiEndProducts();
  final orders = _ApiEndOrders();
  final cart = _ApiEndCart();
}

class _ApiEndProducts {
  static const String _store = '/store';
  static const _products = '/products';

  final products = "$_store$_products";
}

class _ApiEndOrders {
  static const String _store = '/store';
  static const _orders = '/orders';

  final orders = "$_store$_orders";
}

class _ApiEndCart {
  static const String _store = '/store';
  static const _cart = '/cart';

  final cart = "$_store$_cart";
}
