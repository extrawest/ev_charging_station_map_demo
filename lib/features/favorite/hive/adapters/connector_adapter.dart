import 'package:hive/hive.dart';

import '../../../stations/models/connector.dart';

class ConnectorAdapter extends TypeAdapter<Connector> {
  @override
  final int typeId = 1;

  @override
  Connector read(BinaryReader reader) {
    return Connector(
      connectorId: reader.read(),
      enabled: reader.read(),
      id: reader.read(),
      power: reader.read(),
      tariff: reader.read(),
      type: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, Connector obj) {
    writer.write(obj.connectorId);
    writer.write(obj.enabled);
    writer.write(obj.id);
    writer.write(obj.power);
    writer.write(obj.tariff);
    writer.write(obj.type);
  }
}
