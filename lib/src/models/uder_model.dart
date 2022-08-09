class UserModel {
  String name;
  String email;
  String celular;
  String cpf;
  String senha;

  UserModel({
    required this.celular,
    required this.email,
  })
}

UserModel user = UserModel(celular: '993203891', email: 'mafe123silva@gmail.com',);