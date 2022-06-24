import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_config/flutter_config.dart';

final String? appUrl = FlutterConfig.get('APP_URL');

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });

  void _setFavValue(bool newValue) {
    isFavorite = newValue;
    notifyListeners();
  }

  Future<void> toggleFavoriteStatus(String authToken, String userId) async {
    final oldStatus = isFavorite;
    final url =
        Uri.parse('$appUrl/userFavorites/$userId/$id.json?auth=$authToken');
    isFavorite = !isFavorite;
    notifyListeners();
    try {
      final response = await http.put(url,
          body: json.encode({
            'isFavorite': isFavorite,
          }));
      if (response.statusCode >= 400) {
        _setFavValue(oldStatus);
      }
    } catch (error) {
      _setFavValue(oldStatus);
    }
  }
}
