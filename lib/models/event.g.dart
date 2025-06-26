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
      type: IsarType.string,
      enumMap: _EventbusinessDayRuleEnumValueMap,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 2,
      name: r'description',
      type: IsarType.string,
    ),
    r'end': PropertySchema(
      id: 3,
      name: r'end',
      type: IsarType.dateTime,
    ),
    r'isRecurring': PropertySchema(
      id: 4,
      name: r'isRecurring',
      type: IsarType.bool,
    ),
    r'recurrenceUntil': PropertySchema(
      id: 5,
      name: r'recurrenceUntil',
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
    ),
    r'updatedAt': PropertySchema(
      id: 9,
      name: r'updatedAt',
      type: IsarType.dateTime,
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
  bytesCount += 3 + object.businessDayRule.name.length * 3;
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
  writer.writeString(offsets[0], object.businessDayRule.name);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeString(offsets[2], object.description);
  writer.writeDateTime(offsets[3], object.end);
  writer.writeBool(offsets[4], object.isRecurring);
  writer.writeDateTime(offsets[5], object.recurrenceUntil);
  writer.writeString(offsets[6], object.rrule);
  writer.writeDateTime(offsets[7], object.start);
  writer.writeString(offsets[8], object.title);
  writer.writeDateTime(offsets[9], object.updatedAt);
}

Event _eventDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Event();
  object.businessDayRule =
      _EventbusinessDayRuleValueEnumMap[reader.readStringOrNull(offsets[0])] ??
          BusinessDayRule.none;
  object.createdAt = reader.readDateTime(offsets[1]);
  object.description = reader.readStringOrNull(offsets[2]);
  object.end = reader.readDateTime(offsets[3]);
  object.id = id;
  object.isRecurring = reader.readBool(offsets[4]);
  object.recurrenceUntil = reader.readDateTimeOrNull(offsets[5]);
  object.rrule = reader.readStringOrNull(offsets[6]);
  object.start = reader.readDateTime(offsets[7]);
  object.title = reader.readString(offsets[8]);
  object.updatedAt = reader.readDateTime(offsets[9]);
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
              reader.readStringOrNull(offset)] ??
          BusinessDayRule.none) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readDateTime(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _EventbusinessDayRuleEnumValueMap = {
  r'none': r'none',
  r'forward': r'forward',
  r'backward': r'backward',
};
const _EventbusinessDayRuleValueEnumMap = {
  r'none': BusinessDayRule.none,
  r'forward': BusinessDayRule.forward,
  r'backward': BusinessDayRule.backward,
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
    BusinessDayRule value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'businessDayRule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> businessDayRuleGreaterThan(
    BusinessDayRule value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'businessDayRule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> businessDayRuleLessThan(
    BusinessDayRule value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'businessDayRule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> businessDayRuleBetween(
    BusinessDayRule lower,
    BusinessDayRule upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'businessDayRule',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> businessDayRuleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'businessDayRule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> businessDayRuleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'businessDayRule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> businessDayRuleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'businessDayRule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> businessDayRuleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'businessDayRule',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> businessDayRuleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'businessDayRule',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition>
      businessDayRuleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'businessDayRule',
        value: '',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
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

  QueryBuilder<Event, Event, QAfterFilterCondition> isRecurringEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isRecurring',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceUntilIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'recurrenceUntil',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceUntilIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'recurrenceUntil',
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceUntilEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recurrenceUntil',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceUntilGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recurrenceUntil',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceUntilLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recurrenceUntil',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> recurrenceUntilBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recurrenceUntil',
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

  QueryBuilder<Event, Event, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Event, Event, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
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

  QueryBuilder<Event, Event, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
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

  QueryBuilder<Event, Event, QAfterSortBy> sortByIsRecurring() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecurring', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByIsRecurringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecurring', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRecurrenceUntil() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceUntil', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByRecurrenceUntilDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceUntil', Sort.desc);
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

  QueryBuilder<Event, Event, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
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

  QueryBuilder<Event, Event, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
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

  QueryBuilder<Event, Event, QAfterSortBy> thenByIsRecurring() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecurring', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByIsRecurringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecurring', Sort.desc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRecurrenceUntil() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceUntil', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByRecurrenceUntilDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recurrenceUntil', Sort.desc);
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

  QueryBuilder<Event, Event, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Event, Event, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension EventQueryWhereDistinct on QueryBuilder<Event, Event, QDistinct> {
  QueryBuilder<Event, Event, QDistinct> distinctByBusinessDayRule(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'businessDayRule',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
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

  QueryBuilder<Event, Event, QDistinct> distinctByIsRecurring() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isRecurring');
    });
  }

  QueryBuilder<Event, Event, QDistinct> distinctByRecurrenceUntil() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recurrenceUntil');
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

  QueryBuilder<Event, Event, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
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

  QueryBuilder<Event, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
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

  QueryBuilder<Event, bool, QQueryOperations> isRecurringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isRecurring');
    });
  }

  QueryBuilder<Event, DateTime?, QQueryOperations> recurrenceUntilProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recurrenceUntil');
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

  QueryBuilder<Event, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
