// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formula_ingredient.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFormulaIngredientCollection on Isar {
  IsarCollection<FormulaIngredient> get formulaIngredients => this.collection();
}

const FormulaIngredientSchema = CollectionSchema(
  name: r'FormulaIngredient',
  id: 4884974777189012693,
  properties: {
    r'ingredientAbsoluteAmount': PropertySchema(
      id: 0,
      name: r'ingredientAbsoluteAmount',
      type: IsarType.double,
    ),
    r'ingredientDilution': PropertySchema(
      id: 1,
      name: r'ingredientDilution',
      type: IsarType.double,
    ),
    r'ingredientName': PropertySchema(
      id: 2,
      name: r'ingredientName',
      type: IsarType.string,
    ),
    r'ingredientRelativeAmount': PropertySchema(
      id: 3,
      name: r'ingredientRelativeAmount',
      type: IsarType.double,
    )
  },
  estimateSize: _formulaIngredientEstimateSize,
  serialize: _formulaIngredientSerialize,
  deserialize: _formulaIngredientDeserialize,
  deserializeProp: _formulaIngredientDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _formulaIngredientGetId,
  getLinks: _formulaIngredientGetLinks,
  attach: _formulaIngredientAttach,
  version: '3.1.0+1',
);

int _formulaIngredientEstimateSize(
  FormulaIngredient object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.ingredientName.length * 3;
  return bytesCount;
}

void _formulaIngredientSerialize(
  FormulaIngredient object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.ingredientAbsoluteAmount);
  writer.writeDouble(offsets[1], object.ingredientDilution);
  writer.writeString(offsets[2], object.ingredientName);
  writer.writeDouble(offsets[3], object.ingredientRelativeAmount);
}

FormulaIngredient _formulaIngredientDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FormulaIngredient();
  object.id = id;
  object.ingredientAbsoluteAmount = reader.readDouble(offsets[0]);
  object.ingredientDilution = reader.readDouble(offsets[1]);
  object.ingredientName = reader.readString(offsets[2]);
  object.ingredientRelativeAmount = reader.readDouble(offsets[3]);
  return object;
}

P _formulaIngredientDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _formulaIngredientGetId(FormulaIngredient object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _formulaIngredientGetLinks(
    FormulaIngredient object) {
  return [];
}

void _formulaIngredientAttach(
    IsarCollection<dynamic> col, Id id, FormulaIngredient object) {
  object.id = id;
}

extension FormulaIngredientQueryWhereSort
    on QueryBuilder<FormulaIngredient, FormulaIngredient, QWhere> {
  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FormulaIngredientQueryWhere
    on QueryBuilder<FormulaIngredient, FormulaIngredient, QWhereClause> {
  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterWhereClause>
      idBetween(
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

extension FormulaIngredientQueryFilter
    on QueryBuilder<FormulaIngredient, FormulaIngredient, QFilterCondition> {
  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
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

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientAbsoluteAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredientAbsoluteAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientAbsoluteAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredientAbsoluteAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientAbsoluteAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredientAbsoluteAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientAbsoluteAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredientAbsoluteAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientDilutionEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredientDilution',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientDilutionGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredientDilution',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientDilutionLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredientDilution',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientDilutionBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredientDilution',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredientName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ingredientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ingredientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ingredientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ingredientName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredientName',
        value: '',
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ingredientName',
        value: '',
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientRelativeAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredientRelativeAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientRelativeAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredientRelativeAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientRelativeAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredientRelativeAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterFilterCondition>
      ingredientRelativeAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredientRelativeAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension FormulaIngredientQueryObject
    on QueryBuilder<FormulaIngredient, FormulaIngredient, QFilterCondition> {}

extension FormulaIngredientQueryLinks
    on QueryBuilder<FormulaIngredient, FormulaIngredient, QFilterCondition> {}

extension FormulaIngredientQuerySortBy
    on QueryBuilder<FormulaIngredient, FormulaIngredient, QSortBy> {
  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      sortByIngredientAbsoluteAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientAbsoluteAmount', Sort.asc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      sortByIngredientAbsoluteAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientAbsoluteAmount', Sort.desc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      sortByIngredientDilution() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientDilution', Sort.asc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      sortByIngredientDilutionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientDilution', Sort.desc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      sortByIngredientName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientName', Sort.asc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      sortByIngredientNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientName', Sort.desc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      sortByIngredientRelativeAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientRelativeAmount', Sort.asc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      sortByIngredientRelativeAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientRelativeAmount', Sort.desc);
    });
  }
}

extension FormulaIngredientQuerySortThenBy
    on QueryBuilder<FormulaIngredient, FormulaIngredient, QSortThenBy> {
  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      thenByIngredientAbsoluteAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientAbsoluteAmount', Sort.asc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      thenByIngredientAbsoluteAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientAbsoluteAmount', Sort.desc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      thenByIngredientDilution() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientDilution', Sort.asc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      thenByIngredientDilutionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientDilution', Sort.desc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      thenByIngredientName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientName', Sort.asc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      thenByIngredientNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientName', Sort.desc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      thenByIngredientRelativeAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientRelativeAmount', Sort.asc);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QAfterSortBy>
      thenByIngredientRelativeAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientRelativeAmount', Sort.desc);
    });
  }
}

extension FormulaIngredientQueryWhereDistinct
    on QueryBuilder<FormulaIngredient, FormulaIngredient, QDistinct> {
  QueryBuilder<FormulaIngredient, FormulaIngredient, QDistinct>
      distinctByIngredientAbsoluteAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredientAbsoluteAmount');
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QDistinct>
      distinctByIngredientDilution() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredientDilution');
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QDistinct>
      distinctByIngredientName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredientName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FormulaIngredient, FormulaIngredient, QDistinct>
      distinctByIngredientRelativeAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredientRelativeAmount');
    });
  }
}

extension FormulaIngredientQueryProperty
    on QueryBuilder<FormulaIngredient, FormulaIngredient, QQueryProperty> {
  QueryBuilder<FormulaIngredient, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FormulaIngredient, double, QQueryOperations>
      ingredientAbsoluteAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredientAbsoluteAmount');
    });
  }

  QueryBuilder<FormulaIngredient, double, QQueryOperations>
      ingredientDilutionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredientDilution');
    });
  }

  QueryBuilder<FormulaIngredient, String, QQueryOperations>
      ingredientNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredientName');
    });
  }

  QueryBuilder<FormulaIngredient, double, QQueryOperations>
      ingredientRelativeAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredientRelativeAmount');
    });
  }
}
