import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/models/destination_model.dart';

class TransactionModel extends Equatable {
  final DestinationModel destination;
  final int amountOfTraveller;
  final String selectedSeats;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;

  TransactionModel({
    required this.destination,
    this.amountOfTraveller = 0,
    this.selectedSeats = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.grandTotal = 0,
  });

  @override
  List<Object?> get props => [
        destination,
        amountOfTraveller,
        selectedSeats,
        insurance,
        refundable,
        vat,
        price,
        grandTotal,
      ];
}
