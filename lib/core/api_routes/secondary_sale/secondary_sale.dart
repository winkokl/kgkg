import 'package:mgkaung_dms_mobile/core/api_routes/secondary_sale/return.dart';
import 'package:mgkaung_dms_mobile/core/api_routes/secondary_sale/sale.dart';

class SecondarySaleApiRoutes {
  const SecondarySaleApiRoutes(); // prevent instantiation
  final sales = const SecondarySaleSaleApiRoutes();
  final returns = const SecondarySaleReturnApiRoutes();
}
