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
    r'isDeleted': PropertySchema(
      id: 0,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'isOverridden': PropertySchema(
      id: 1,
      name: r'isOverridden',
      type: IsarType.bool,
    ),
    r'occurrenceDate': PropertySchema(
      id: 2,
      name: r'occurrenceDate',
      type: IsarType.dateTime,
    ),
    r'overriddenDescription': PropertySchema(
      id: 3,
      name: r'overriddenDescription',
      type: IsarType.string,
    ),
    r'overriddenEnd': PropertySchema(
      id: 4,
      name: r'overriddenEnd',
      type: IsarType.dateTime,
    ),
    r'overriddenStart': PropertySchema(
      id: 5,
      name: r'overriddenStart',
      type: IsarType.dateTime,
    ),
    r'overriddenTitle': PropertySchema(
      id: 6,
      name: r'overriddenTitle',
      type: IsarType.string,
    ),
    r'parentEventId': PropertySchema(
      id: 7,
      name: r'parentEventId',
      type: IsarType.long,
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
    final value = object.overriddenDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.overriddenTitle;
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
  writer.writeBool(offsets[0], object.isDeleted);
  writer.writeBool(offsets[1], object.isOverridden);
  writer.writeDateTime(offsets[2], object.occurrenceDate);
  writer.writeString(offsets[3], object.overriddenDescription);
  writer.writeDateTime(offsets[4], object.overriddenEnd);
  writer.writeDateTime(offsets[5], object.overriddenStart);
  writer.writeString(offsets[6], object.overriddenTitle);
  writer.writeLong(offsets[7], object.parentEventId);
}

EventInstance _eventInstanceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EventInstance();
  object.id = id;
  object.isDeleted = reader.readBool(offsets[0]);
  object.isOverridden = reader.readBool(offsets[1]);
  object.occurrenceDate = reader.readDateTime(offsets[2]);
  object.overriddenDescription = reader.readStringOrNull(offsets[3]);
  object.overriddenEnd = reader.readDateTimeOrNull(offsets[4]);
  object.overriddenStart = reader.readDateTimeOrNull(offsets[5]);
  object.overriddenTitle = reader.readStringOrNull(offsets[6]);
  object.parentEventId = reader.readLong(offsets[7]);
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
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
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
      isOverriddenEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isOverridden',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      occurrenceDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'occurrenceDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      occurrenceDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'occurrenceDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      occurrenceDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'occurrenceDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      occurrenceDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'occurrenceDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'overriddenDescription',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'overriddenDescription',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overriddenDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'overriddenDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'overriddenDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'overriddenDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'overriddenDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'overriddenDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'overriddenDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenDescriptionMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'overriddenDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overriddenDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'overriddenDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenEndIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'overriddenEnd',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenEndIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'overriddenEnd',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenEndEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overriddenEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenEndGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'overriddenEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenEndLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'overriddenEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenEndBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'overriddenEnd',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenStartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'overriddenStart',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenStartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'overriddenStart',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenStartEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overriddenStart',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenStartGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'overriddenStart',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenStartLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'overriddenStart',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenStartBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'overriddenStart',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenTitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'overriddenTitle',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenTitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'overriddenTitle',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenTitleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overriddenTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenTitleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'overriddenTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenTitleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'overriddenTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenTitleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'overriddenTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'overriddenTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'overriddenTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'overriddenTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'overriddenTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overriddenTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      overriddenTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'overriddenTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      parentEventIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentEventId',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      parentEventIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parentEventId',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      parentEventIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parentEventId',
        value: value,
      ));
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterFilterCondition>
      parentEventIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parentEventId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
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

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByIsOverridden() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOverridden', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByIsOverriddenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOverridden', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOccurrenceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occurrenceDate', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOccurrenceDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occurrenceDate', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOverriddenDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenDescription', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOverriddenDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenDescription', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOverriddenEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenEnd', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOverriddenEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenEnd', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOverriddenStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenStart', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOverriddenStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenStart', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOverriddenTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenTitle', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByOverriddenTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenTitle', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByParentEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentEventId', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      sortByParentEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentEventId', Sort.desc);
    });
  }
}

extension EventInstanceQuerySortThenBy
    on QueryBuilder<EventInstance, EventInstance, QSortThenBy> {
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

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByIsOverridden() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOverridden', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByIsOverriddenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOverridden', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOccurrenceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occurrenceDate', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOccurrenceDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occurrenceDate', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOverriddenDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenDescription', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOverriddenDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenDescription', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOverriddenEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenEnd', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOverriddenEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenEnd', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOverriddenStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenStart', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOverriddenStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenStart', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOverriddenTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenTitle', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByOverriddenTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overriddenTitle', Sort.desc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByParentEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentEventId', Sort.asc);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QAfterSortBy>
      thenByParentEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentEventId', Sort.desc);
    });
  }
}

extension EventInstanceQueryWhereDistinct
    on QueryBuilder<EventInstance, EventInstance, QDistinct> {
  QueryBuilder<EventInstance, EventInstance, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<EventInstance, EventInstance, QDistinct>
      distinctByIsOverridden() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isOverridden');
    });
  }

  QueryBuilder<EventInstance, EventInstance, QDistinct>
      distinctByOccurrenceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'occurrenceDate');
    });
  }

  QueryBuilder<EventInstance, EventInstance, QDistinct>
      distinctByOverriddenDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overriddenDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QDistinct>
      distinctByOverriddenEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overriddenEnd');
    });
  }

  QueryBuilder<EventInstance, EventInstance, QDistinct>
      distinctByOverriddenStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overriddenStart');
    });
  }

  QueryBuilder<EventInstance, EventInstance, QDistinct>
      distinctByOverriddenTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overriddenTitle',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventInstance, EventInstance, QDistinct>
      distinctByParentEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentEventId');
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

  QueryBuilder<EventInstance, bool, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<EventInstance, bool, QQueryOperations> isOverriddenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isOverridden');
    });
  }

  QueryBuilder<EventInstance, DateTime, QQueryOperations>
      occurrenceDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'occurrenceDate');
    });
  }

  QueryBuilder<EventInstance, String?, QQueryOperations>
      overriddenDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overriddenDescription');
    });
  }

  QueryBuilder<EventInstance, DateTime?, QQueryOperations>
      overriddenEndProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overriddenEnd');
    });
  }

  QueryBuilder<EventInstance, DateTime?, QQueryOperations>
      overriddenStartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overriddenStart');
    });
  }

  QueryBuilder<EventInstance, String?, QQueryOperations>
      overriddenTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overriddenTitle');
    });
  }

  QueryBuilder<EventInstance, int, QQueryOperations> parentEventIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentEventId');
    });
  }
}
