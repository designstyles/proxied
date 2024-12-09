enum AuthRoles {
  admin('Administrator', 2),
  elevated('Elevated', 3),
  user('User', 1),
  public('Public', 4);

  final String name;
  final int roleTypeId;
  const AuthRoles(this.name, this.roleTypeId);
}
