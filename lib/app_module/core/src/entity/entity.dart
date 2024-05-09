abstract class Entity {
  dynamic toJson();
}

abstract class EntityParser<T extends Entity> {
  T parseObject(dynamic json);
}
