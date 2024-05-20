import 'package:dart_mappable/dart_mappable.dart';

part 'price_type.mapper.dart';

@MappableEnum()
enum PriceType {
  @MappableValue('FREE') free,
  @MappableValue('SELLING') selling,
}
