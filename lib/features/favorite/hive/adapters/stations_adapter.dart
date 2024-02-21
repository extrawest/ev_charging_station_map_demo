import 'dart:convert';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive/hive.dart';

import '../../../google_map/utils/cluster_utils.dart';
import '../../../stations/models/connector.dart';
import '../../../stations/models/map_marker/map_marker.dart';

class StationAdapter extends TypeAdapter<CustomMapMarker> {
  @override
  final int typeId = 0;

  @override
  CustomMapMarker read(BinaryReader reader) {
    return CustomMapMarker(
      name: reader.read(),
      connectors: (reader.read() as List).map((item) => Connector.fromJson(Map<String, dynamic>.from(item))).toList(),
      imageUrls: Map<String, List<String>>.from(reader.read()),
      latLng: LatLng.fromJson(jsonDecode(reader.read())),
      id: reader.read(),
      status: StatusValues.values[reader.read()],
      tenantId: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, CustomMapMarker obj) {
    writer.write(obj.name);
    writer.write(obj.connectors?.map((item) => item.toJson()).toList());
    writer.write(obj.imageUrls);
    writer.write(jsonEncode(obj.latLng?.toJson()));
    writer.write(obj.id);
    writer.write(obj.status?.index);
    writer.write(obj.tenantId);
  }
}
