class EndpointsConst {
  const EndpointsConst._();

  static final auth = _ApiEndAuth();
}

class _ApiEndAuth {
  final register = '/register';
  final login = '/login';
  final logout = '/logout';
  final activeAccount = '/activate-account';
}
