// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEventCollection on Isar {
  IsarCollection<Event> get events => this.collection();
}

const EventSchema = CollectionSchema(
  name: r'Event',
  id: 2102939193127251002,
  properties: {
    r'businessDayRule': PropertySchema(
      id: 0,
      name: r'businessDayRule',
      type: IsarType.byte,
      enumMap: _EventbusinessDayRuleEnumValueMap,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'end': PropertySchema(
      id: 2,
      name: r'end',
      type: IsarType.dateTime,
    ),
    r'isBusinessDayAdjusted': PropertySchema(
      id: 3,
      name: r'isBusinessDayAdjusted',
      type: IsarType.bool,
    ),
    r'recurrenceCount': PropertySchema(
      id: 4,
      name: r'recurrenceCount',
      type: IsarType.long,
    ),
    r'recurrenceEndDate': PropertySchema(
      id: 5,
      name: r'recurrenceEndDate',
      type: IsarType.dateTime,
    ),
    r'rrule': PropertySchema(
      id: 6,
      name: r'rrule',
      type: IsarType.string,
    ),
    r'start': PropertySchema(
      id: 7,
      name: r'start',
      type: IsarType.dateTime,
    ),
    r'title': PropertySchema(
      id: 8,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _eventEstimateSize,
  serialize: _eventSerialize,
  deserialize: _eventDeserialize,
  deserializeProp: _eventDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _eventGetId,
  getLinks: _eventGetLinks,
  attach: _eventAttach,
  version: '3.1.0+1',
);

int _eventEstimateSize(
  Event object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.rrule;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _eventSerialize(
  Event object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.businessDayRule.index);
  writer.writeString(offsets[1], object.description);
  writer.writeDateTime(offsets[2], object.end);
  writer.writeBool(offsets[3], object.isBusinessDayAdjusted);
  writer.writeLong(offsets[4], object.recurrenceCount);
  writer.writeDateTime(offsets[5], object.recurrenceEndDate);
  writer.writeString(offsets[6], object.rrule);
  writer.writeDateTime(offsets[7], object.start);
  writer.writeString(offsets[8], object.title);
}

Event _eventDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Event();
  object.businessDayRule =
      _EventbusinessDayRuleValueEnumMap[reader.readByteOrNull(offsets[0])] ??
          BusinessDayRule.none;
  object.description = reader.readStringOrNull(offsets[1]);
  object.end = reader.readDateTime(offsets[2]);
  object.id = id;
  object.isBusinessDayAdjusted = reader.readBool(offsets[3]);
  object.recurrenceCount = reader.readLongOrNull(offsets[4]);
  object.recurrenceEndDate = reader.readDateTimeOrNull(offsets[5]);
  object.rrule = reader.readStringOrNull(offsets[6]);
  object.start = reader.readDateTime(offsets[7]);
  object.title = reader.readString(offsets[8]);
  return object;
}

P _eventDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_EventbusinessDayRuleValueEnumMap[
              reader.readByteOrNull(offset)] ??
          BusinessDayRule.none) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readDateTime(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _EventbusinessDayRuleEnumValueMap = {
  'none': 0,
  'moveToPrevious': 1,
  'moveToNext': 2,
};
const _EventbusinessDayRuleValueEnumMap = {
  0: BusinessDayRule.none,
  1: BusinessDayRule.moveToPrevious,
  2: BusinessDayRule.moveToNext,
};

Id _eventGetId(Event object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _eventGetLinks(Event object) {
  return [];
}

void _eventAttach(IsarCollection<dynamic> col, Id id, Event object) {
  object.id = id;
}

extension EventQueryWhereSort on QueryBuilder<Event, Event, QWhere> {
  QueryBuilder<Event, Event, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EventQueryWhere on QueryBuilder<Event, Event, QWhereClause> {
  QueryBuilder<Event, Event, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Event, Event, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Event, Event, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Event, Event, QAfterWhereClause> idBetween(
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

extension EventQueryFilter on QueryBuilder<Event, Event, QFilterCondition> {
  QueryBuilder<Event, Event, QAfterFilterCondition> businessDayRuleEqualTo(
      BusinessDayRule value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'businessDayRule',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> businessDayRuleGreaterThan(
    BusinessDayRule value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'businessDayRule',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> businessDayRuleLessThan(
    BusinessDayRule value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'businessDayRule',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> businessDayRuleBetween(
    BusinessDayRule lower,
    BusinessDayRule upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'businessDayRule',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'end',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'end',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'end',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> endBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'end',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Event, Event, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Event, Event, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Event, Event, QAfterFilterCondition>
      isBusinessDayAdjustedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBusinessDayAdjusted',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'recurrenceCount',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'recurrenceCount',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recurrenceCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recurrenceCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recurrenceCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recurrenceCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceEndDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'recurrenceEndDate',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      recurrenceEndDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'recurrenceEndDate',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceEndDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recurrenceEndDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      recurrenceEndDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recurrenceEndDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceEndDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recurrenceEndDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceEndDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recurrenceEndDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rruleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rrule',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rruleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rrule',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rruleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rrule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rruleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rrule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rruleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rrule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rruleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rrule',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rruleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rrule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rruleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rrule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rruleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rrule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rruleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rrule',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rruleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rrule',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> rruleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rrule',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'start',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'start',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'start',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> startBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'start',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension EventQueryObject on QueryBuilder<Event, Event, QFilterCondition> {}

extension EventQueryLinks on QueryBuilder<Event, Event, QFilterCondition> {}

extension EventQuerySortBy on QueryBuilder<Event, Event, QSortBy> {
  QueryBuilder<Event, Event, QAfterSortBy> sortByBusinessDayRule() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessDayRule', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByBusinessDayRuleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessDayRule', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'end', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'end', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByIsBusinessDayAdjusted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBusinessDayAdjusted', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByIsBusinessDayAdjustedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBusinessDayAdjusted', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRecurrenceCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceCount', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRecurrenceCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceCount', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRecurrenceEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceEndDate', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRecurrenceEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceEndDate', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRrule() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rrule', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRruleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rrule', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'start', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'start', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension EventQuerySortThenBy on QueryBuilder<Event, Event, QSortThenBy> {
  QueryBuilder<Event, Event, QAfterSortBy> thenByBusinessDayRule() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessDayRule', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByBusinessDayRuleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessDayRule', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'end', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'end', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByIsBusinessDayAdjusted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBusinessDayAdjusted', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByIsBusinessDayAdjustedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBusinessDayAdjusted', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRecurrenceCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceCount', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRecurrenceCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceCount', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRecurrenceEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceEndDate', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRecurrenceEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceEndDate', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRrule() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rrule', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRruleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rrule', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'start', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'start', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension EventQueryWhereDistinct on QueryBuilder<Event, Event, QDistinct> {
  QueryBuilder<Event, Event, QDistinct> distinctByBusinessDayRule() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'businessDayRule');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'end');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByIsBusinessDayAdjusted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBusinessDayAdjusted');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByRecurrenceCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recurrenceCount');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByRecurrenceEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recurrenceEndDate');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByRrule(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rrule', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'start');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension EventQueryProperty on QueryBuilder<Event, Event, QQueryProperty> {
  QueryBuilder<Event, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Event, BusinessDayRule, QQueryOperations>
      businessDayRuleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'businessDayRule');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Event, DateTime, QQueryOperations> endProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'end');
    });
  }

  QueryBuilder<Event, bool, QQueryOperations> isBusinessDayAdjustedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBusinessDayAdjusted');
    });
  }

  QueryBuilder<Event, int?, QQueryOperations> recurrenceCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recurrenceCount');
    });
  }

  QueryBuilder<Event, DateTime?, QQueryOperations> recurrenceEndDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recurrenceEndDate');
    });
  }

  QueryBuilder<Event, String?, QQueryOperations> rruleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rrule');
    });
  }

  QueryBuilder<Event, DateTime, QQueryOperations> startProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'start');
    });
  }

  QueryBuilder<Event, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
