import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String phone;
  final int balance;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.phone,
    this.balance = 0,
  });

  @override
  List<Object?> get props => [id, email, name, phone, balance];
}
