import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive/hive.dart';

part 'lat_lng_adapter.g.dart';

@HiveType(typeId: 3)
class HiveLatLng {
  @HiveField(0)
  final double latitude;

  @HiveField(1)
  final double longitude;

  HiveLatLng(this.latitude, this.longitude);

  LatLng toLatLng() {
    return LatLng(latitude, longitude);
  }

  factory HiveLatLng.fromLatLng(LatLng latLng) {
    return HiveLatLng(latLng.latitude, latLng.longitude);
  }
}

class LatLngAdapter extends TypeAdapter<HiveLatLng> {
  @override
  final typeId = 3;

  @override
  HiveLatLng read(BinaryReader reader) {
    return HiveLatLng(reader.readDouble(), reader.readDouble());
  }

  @override
  void write(BinaryWriter writer, HiveLatLng obj) {
    writer.writeDouble(obj.latitude);
    writer.writeDouble(obj.longitude);
  }
}
