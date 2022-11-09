
import 'package:equatable/equatable.dart';
import 'package:groceryapp/models/product_model.dart';

class Cart extends Equatable{
  final List<Product> products;
  const Cart({this.products = const <Product>[]});

  double get subtotal => 
    products.fold(9, (total, current) => total + current.price);


  double taxFee(subtotal){
    if(subtotal >= 10.0) {
        return 0.0;
    } else 
      return 5.0;
  }

  String noTax(subtotal) {
    if (subtotal >= 10.0) {
      return 'IRS will come for your Taxes';
    }
    else {
      double missing = 30.0 - subtotal;

      return 'Add \$${missing.toStringAsFixed(2)} if you dare';
    }

  }
  double total(subtotal, taxFee) {
    return subtotal + taxFee(subtotal);
  }

  String get subtotalString => subtotal.toStringAsFixed(2);
  String get taxFeeString => taxFee(subtotal).toStringAsFixed(2);
  String get noTaxString => noTax(subtotal);
  String get totalString => total(subtotal, taxFee).toStringAsFixed(2);

 
  @override
  // TODO: implement props
  List<Object?> get props => [products];

}