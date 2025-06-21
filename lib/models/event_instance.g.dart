// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_instance.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEventInstanceCollection on Isar {
  IsarCollection<EventInstance> get eventInstances => this.collection();
}

const EventInstanceSchema = CollectionSchema(
  name: r'EventInstance',
  id: -4945077353569174473,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'eventId': PropertySchema(
      id: 1,
      name: r'eventId',
      type: IsarType.long,
    ),
    r'isDeleted': PropertySchema(
      id: 2,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'overrideEnd': PropertySchema(
      id: 3,
      name: r'overrideEnd',
      type: IsarType.dateTime,
    ),
    r'overrideStart': PropertySchema(
      id: 4,
      name: r'overrideStart',
      type: IsarType.dateTime,
    ),
    r'overrideTitle': PropertySchema(
      id: 5,
      name: r'overrideTitle',
      type: IsarType.string,
    )
  },
  estimateSize: _eventInstanceEstimateSize,
  serialize: _eventInstanceSerialize,
  deserialize: _eventInstanceDeserialize,
  deserializeProp: _eventInstanceDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _eventInstanceGetId,
  getLinks: _eventInstanceGetLinks,
  attach: _eventInstanceAttach,
  version: '3.1.0+1',
);

int _eventInstanceEstimateSize(
  EventInstance object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.overrideTitle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _eventInstanceSerialize(
  EventInstance object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeLong(offsets[1], object.eventId);
  writer.writeBool(offsets[2], object.isDeleted);
  writer.writeDateTime(offsets[3], object.overrideEnd);
  writer.writeDateTime(offsets[4], object.overrideStart);
  writer.writeString(offsets[5], object.overrideTitle);
}

EventInstance _eventInstanceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EventInstance();
  object.date = reader.readDateTime(offsets[0]);
  object.eventId = reader.readLong(offsets[1]);
  object.id = id;
  object.isDeleted = reader.readBool(offsets[2]);
  object.overrideEnd = reader.readDateTimeOrNull(offsets[3]);
  object.overrideStart = reader.readDateTimeOrNull(offsets[4]);
  object.overrideTitle = reader.readStringOrNull(offsets[5]);
  return object;
}

P _eventInstanceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _eventInstanceGetId(EventInstance object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _eventInstanceGetLinks(EventInstance object) {
  return [];
}

void _eventInstanceAttach(
    IsarCollection<dynamic> col, Id id, EventInstance object) {
  object.id = id;
}

extension EventInstanceQueryWhereSort
    on QueryBuilder<EventInstance, EventInstance, QWhere> {
  QueryBuilder<EventInstance, EventInstance, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EventInstanceQueryWhere
    on QueryBuilder<EventInstance, EventInstance, QWhereClause> {
  QueryBuilder<EventInstance, EventInstance, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EventInstanceQueryFilter
    on QueryBuilder<EventInstance, EventInstance, QFilterCondition> {
  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      eventIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventId',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      eventIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventId',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      eventIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventId',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      eventIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      isDeletedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideEndIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'overrideEnd',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideEndIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'overrideEnd',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideEndEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overrideEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideEndGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'overrideEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideEndLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'overrideEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideEndBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'overrideEnd',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideStartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'overrideStart',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideStartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'overrideStart',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideStartEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overrideStart',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideStartGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'overrideStart',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideStartLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'overrideStart',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideStartBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'overrideStart',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideTitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'overrideTitle',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideTitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'overrideTitle',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideTitleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overrideTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideTitleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'overrideTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideTitleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'overrideTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideTitleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'overrideTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'overrideTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'overrideTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'overrideTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'overrideTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overrideTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overrideTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'overrideTitle',
        value: '',
      ));
    });
  }
}

extension EventInstanceQueryObject
    on QueryBuilder<EventInstance, EventInstance, QFilterCondition> {}

extension EventInstanceQueryLinks
    on QueryBuilder<EventInstance, EventInstance, QFilterCondition> {}

extension EventInstanceQuerySortBy
    on QueryBuilder<EventInstance, EventInstance, QSortBy> {
  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> sortByEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> sortByEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> sortByOverrideEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overrideEnd', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOverrideEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overrideEnd', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOverrideStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overrideStart', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOverrideStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overrideStart', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOverrideTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overrideTitle', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOverrideTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overrideTitle', Sort.desc);
    });
  }
}

extension EventInstanceQuerySortThenBy
    on QueryBuilder<EventInstance, EventInstance, QSortThenBy> {
  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> thenByEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> thenByEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy> thenByOverrideEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overrideEnd', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOverrideEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overrideEnd', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOverrideStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overrideStart', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOverrideStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overrideStart', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOverrideTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overrideTitle', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOverrideTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overrideTitle', Sort.desc);
    });
  }
}

extension EventInstanceQueryWhereDistinct
    on QueryBuilder<EventInstance, EventInstance, QDistinct> {
  QueryBuilder<EventInstance, EventInstance, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<EventInstance, EventInstance, QDistinct> distinctByEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventId');
    });
  }

  QueryBuilder<EventInstance, EventInstance, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<EventInstance, EventInstance, QDistinct>
      distinctByOverrideEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overrideEnd');
    });
  }

  QueryBuilder<EventInstance, EventInstance, QDistinct>
      distinctByOverrideStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overrideStart');
    });
  }

  QueryBuilder<EventInstance, EventInstance, QDistinct> distinctByOverrideTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overrideTitle',
          caseSensitive: caseSensitive);
    });
  }
}

extension EventInstanceQueryProperty
    on QueryBuilder<EventInstance, EventInstance, QQueryProperty> {
  QueryBuilder<EventInstance, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<EventInstance, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<EventInstance, int, QQueryOperations> eventIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventId');
    });
  }

  QueryBuilder<EventInstance, bool, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<EventInstance, DateTime?, QQueryOperations>
      overrideEndProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overrideEnd');
    });
  }

  QueryBuilder<EventInstance, DateTime?, QQueryOperations>
      overrideStartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overrideStart');
    });
  }

  QueryBuilder<EventInstance, String?, QQueryOperations>
      overrideTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overrideTitle');
    });
  }
}
