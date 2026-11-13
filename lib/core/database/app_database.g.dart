// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ExerciseTable extends Exercise
    with TableInfo<$ExerciseTable, ExerciseData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pictureMeta = const VerificationMeta(
    'picture',
  );
  @override
  late final GeneratedColumn<String> picture = GeneratedColumn<String>(
    'picture',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, picture, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exercise';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExerciseData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('picture')) {
      context.handle(
        _pictureMeta,
        picture.isAcceptableOrUnknown(data['picture']!, _pictureMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExerciseData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      picture: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}picture'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
    );
  }

  @override
  $ExerciseTable createAlias(String alias) {
    return $ExerciseTable(attachedDatabase, alias);
  }
}

class ExerciseData extends DataClass implements Insertable<ExerciseData> {
  final int id;
  final String name;
  final String? picture;
  final String? description;
  const ExerciseData({
    required this.id,
    required this.name,
    this.picture,
    this.description,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || picture != null) {
      map['picture'] = Variable<String>(picture);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  ExerciseCompanion toCompanion(bool nullToAbsent) {
    return ExerciseCompanion(
      id: Value(id),
      name: Value(name),
      picture: picture == null && nullToAbsent
          ? const Value.absent()
          : Value(picture),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory ExerciseData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      picture: serializer.fromJson<String?>(json['picture']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'picture': serializer.toJson<String?>(picture),
      'description': serializer.toJson<String?>(description),
    };
  }

  ExerciseData copyWith({
    int? id,
    String? name,
    Value<String?> picture = const Value.absent(),
    Value<String?> description = const Value.absent(),
  }) => ExerciseData(
    id: id ?? this.id,
    name: name ?? this.name,
    picture: picture.present ? picture.value : this.picture,
    description: description.present ? description.value : this.description,
  );
  ExerciseData copyWithCompanion(ExerciseCompanion data) {
    return ExerciseData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      picture: data.picture.present ? data.picture.value : this.picture,
      description: data.description.present
          ? data.description.value
          : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('picture: $picture, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, picture, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseData &&
          other.id == this.id &&
          other.name == this.name &&
          other.picture == this.picture &&
          other.description == this.description);
}

class ExerciseCompanion extends UpdateCompanion<ExerciseData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> picture;
  final Value<String?> description;
  const ExerciseCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.picture = const Value.absent(),
    this.description = const Value.absent(),
  });
  ExerciseCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.picture = const Value.absent(),
    this.description = const Value.absent(),
  }) : name = Value(name);
  static Insertable<ExerciseData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? picture,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (picture != null) 'picture': picture,
      if (description != null) 'description': description,
    });
  }

  ExerciseCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? picture,
    Value<String?>? description,
  }) {
    return ExerciseCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      picture: picture ?? this.picture,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (picture.present) {
      map['picture'] = Variable<String>(picture.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('picture: $picture, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $MetricTable extends Metric with TableInfo<$MetricTable, MetricData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MetricTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _slugMeta = const VerificationMeta('slug');
  @override
  late final GeneratedColumn<String> slug = GeneratedColumn<String>(
    'slug',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, slug];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'metric';
  @override
  VerificationContext validateIntegrity(
    Insertable<MetricData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('slug')) {
      context.handle(
        _slugMeta,
        slug.isAcceptableOrUnknown(data['slug']!, _slugMeta),
      );
    } else if (isInserting) {
      context.missing(_slugMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MetricData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MetricData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      slug: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}slug'],
      )!,
    );
  }

  @override
  $MetricTable createAlias(String alias) {
    return $MetricTable(attachedDatabase, alias);
  }
}

class MetricData extends DataClass implements Insertable<MetricData> {
  final int id;
  final String name;
  final String slug;
  const MetricData({required this.id, required this.name, required this.slug});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['slug'] = Variable<String>(slug);
    return map;
  }

  MetricCompanion toCompanion(bool nullToAbsent) {
    return MetricCompanion(id: Value(id), name: Value(name), slug: Value(slug));
  }

  factory MetricData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MetricData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      slug: serializer.fromJson<String>(json['slug']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'slug': serializer.toJson<String>(slug),
    };
  }

  MetricData copyWith({int? id, String? name, String? slug}) => MetricData(
    id: id ?? this.id,
    name: name ?? this.name,
    slug: slug ?? this.slug,
  );
  MetricData copyWithCompanion(MetricCompanion data) {
    return MetricData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      slug: data.slug.present ? data.slug.value : this.slug,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MetricData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('slug: $slug')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, slug);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MetricData &&
          other.id == this.id &&
          other.name == this.name &&
          other.slug == this.slug);
}

class MetricCompanion extends UpdateCompanion<MetricData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> slug;
  const MetricCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.slug = const Value.absent(),
  });
  MetricCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String slug,
  }) : name = Value(name),
       slug = Value(slug);
  static Insertable<MetricData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? slug,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (slug != null) 'slug': slug,
    });
  }

  MetricCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? slug,
  }) {
    return MetricCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (slug.present) {
      map['slug'] = Variable<String>(slug.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MetricCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('slug: $slug')
          ..write(')'))
        .toString();
  }
}

class $ExerciseMetricTable extends ExerciseMetric
    with TableInfo<$ExerciseMetricTable, ExerciseMetricData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseMetricTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _exerciseIdMeta = const VerificationMeta(
    'exerciseId',
  );
  @override
  late final GeneratedColumn<int> exerciseId = GeneratedColumn<int>(
    'exercise_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES exercise (id)',
    ),
  );
  static const VerificationMeta _metricIdMeta = const VerificationMeta(
    'metricId',
  );
  @override
  late final GeneratedColumn<int> metricId = GeneratedColumn<int>(
    'metric_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES metric (id)',
    ),
  );
  static const VerificationMeta _metricOrderMeta = const VerificationMeta(
    'metricOrder',
  );
  @override
  late final GeneratedColumn<int> metricOrder = GeneratedColumn<int>(
    'metric_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, exerciseId, metricId, metricOrder];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exercise_metric';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExerciseMetricData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('exercise_id')) {
      context.handle(
        _exerciseIdMeta,
        exerciseId.isAcceptableOrUnknown(data['exercise_id']!, _exerciseIdMeta),
      );
    } else if (isInserting) {
      context.missing(_exerciseIdMeta);
    }
    if (data.containsKey('metric_id')) {
      context.handle(
        _metricIdMeta,
        metricId.isAcceptableOrUnknown(data['metric_id']!, _metricIdMeta),
      );
    } else if (isInserting) {
      context.missing(_metricIdMeta);
    }
    if (data.containsKey('metric_order')) {
      context.handle(
        _metricOrderMeta,
        metricOrder.isAcceptableOrUnknown(
          data['metric_order']!,
          _metricOrderMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_metricOrderMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExerciseMetricData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseMetricData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      exerciseId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}exercise_id'],
      )!,
      metricId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}metric_id'],
      )!,
      metricOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}metric_order'],
      )!,
    );
  }

  @override
  $ExerciseMetricTable createAlias(String alias) {
    return $ExerciseMetricTable(attachedDatabase, alias);
  }
}

class ExerciseMetricData extends DataClass
    implements Insertable<ExerciseMetricData> {
  final int id;
  final int exerciseId;
  final int metricId;
  final int metricOrder;
  const ExerciseMetricData({
    required this.id,
    required this.exerciseId,
    required this.metricId,
    required this.metricOrder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['exercise_id'] = Variable<int>(exerciseId);
    map['metric_id'] = Variable<int>(metricId);
    map['metric_order'] = Variable<int>(metricOrder);
    return map;
  }

  ExerciseMetricCompanion toCompanion(bool nullToAbsent) {
    return ExerciseMetricCompanion(
      id: Value(id),
      exerciseId: Value(exerciseId),
      metricId: Value(metricId),
      metricOrder: Value(metricOrder),
    );
  }

  factory ExerciseMetricData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseMetricData(
      id: serializer.fromJson<int>(json['id']),
      exerciseId: serializer.fromJson<int>(json['exerciseId']),
      metricId: serializer.fromJson<int>(json['metricId']),
      metricOrder: serializer.fromJson<int>(json['metricOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'exerciseId': serializer.toJson<int>(exerciseId),
      'metricId': serializer.toJson<int>(metricId),
      'metricOrder': serializer.toJson<int>(metricOrder),
    };
  }

  ExerciseMetricData copyWith({
    int? id,
    int? exerciseId,
    int? metricId,
    int? metricOrder,
  }) => ExerciseMetricData(
    id: id ?? this.id,
    exerciseId: exerciseId ?? this.exerciseId,
    metricId: metricId ?? this.metricId,
    metricOrder: metricOrder ?? this.metricOrder,
  );
  ExerciseMetricData copyWithCompanion(ExerciseMetricCompanion data) {
    return ExerciseMetricData(
      id: data.id.present ? data.id.value : this.id,
      exerciseId: data.exerciseId.present
          ? data.exerciseId.value
          : this.exerciseId,
      metricId: data.metricId.present ? data.metricId.value : this.metricId,
      metricOrder: data.metricOrder.present
          ? data.metricOrder.value
          : this.metricOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseMetricData(')
          ..write('id: $id, ')
          ..write('exerciseId: $exerciseId, ')
          ..write('metricId: $metricId, ')
          ..write('metricOrder: $metricOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, exerciseId, metricId, metricOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseMetricData &&
          other.id == this.id &&
          other.exerciseId == this.exerciseId &&
          other.metricId == this.metricId &&
          other.metricOrder == this.metricOrder);
}

class ExerciseMetricCompanion extends UpdateCompanion<ExerciseMetricData> {
  final Value<int> id;
  final Value<int> exerciseId;
  final Value<int> metricId;
  final Value<int> metricOrder;
  const ExerciseMetricCompanion({
    this.id = const Value.absent(),
    this.exerciseId = const Value.absent(),
    this.metricId = const Value.absent(),
    this.metricOrder = const Value.absent(),
  });
  ExerciseMetricCompanion.insert({
    this.id = const Value.absent(),
    required int exerciseId,
    required int metricId,
    required int metricOrder,
  }) : exerciseId = Value(exerciseId),
       metricId = Value(metricId),
       metricOrder = Value(metricOrder);
  static Insertable<ExerciseMetricData> custom({
    Expression<int>? id,
    Expression<int>? exerciseId,
    Expression<int>? metricId,
    Expression<int>? metricOrder,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (exerciseId != null) 'exercise_id': exerciseId,
      if (metricId != null) 'metric_id': metricId,
      if (metricOrder != null) 'metric_order': metricOrder,
    });
  }

  ExerciseMetricCompanion copyWith({
    Value<int>? id,
    Value<int>? exerciseId,
    Value<int>? metricId,
    Value<int>? metricOrder,
  }) {
    return ExerciseMetricCompanion(
      id: id ?? this.id,
      exerciseId: exerciseId ?? this.exerciseId,
      metricId: metricId ?? this.metricId,
      metricOrder: metricOrder ?? this.metricOrder,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (exerciseId.present) {
      map['exercise_id'] = Variable<int>(exerciseId.value);
    }
    if (metricId.present) {
      map['metric_id'] = Variable<int>(metricId.value);
    }
    if (metricOrder.present) {
      map['metric_order'] = Variable<int>(metricOrder.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseMetricCompanion(')
          ..write('id: $id, ')
          ..write('exerciseId: $exerciseId, ')
          ..write('metricId: $metricId, ')
          ..write('metricOrder: $metricOrder')
          ..write(')'))
        .toString();
  }
}

class $MuscleTable extends Muscle with TableInfo<$MuscleTable, MuscleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MuscleTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _muscleGroupMeta = const VerificationMeta(
    'muscleGroup',
  );
  @override
  late final GeneratedColumn<String> muscleGroup = GeneratedColumn<String>(
    'muscle_group',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, muscleGroup];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'muscle';
  @override
  VerificationContext validateIntegrity(
    Insertable<MuscleData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('muscle_group')) {
      context.handle(
        _muscleGroupMeta,
        muscleGroup.isAcceptableOrUnknown(
          data['muscle_group']!,
          _muscleGroupMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MuscleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MuscleData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      muscleGroup: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}muscle_group'],
      ),
    );
  }

  @override
  $MuscleTable createAlias(String alias) {
    return $MuscleTable(attachedDatabase, alias);
  }
}

class MuscleData extends DataClass implements Insertable<MuscleData> {
  final int id;
  final String name;
  final String? muscleGroup;
  const MuscleData({required this.id, required this.name, this.muscleGroup});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || muscleGroup != null) {
      map['muscle_group'] = Variable<String>(muscleGroup);
    }
    return map;
  }

  MuscleCompanion toCompanion(bool nullToAbsent) {
    return MuscleCompanion(
      id: Value(id),
      name: Value(name),
      muscleGroup: muscleGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(muscleGroup),
    );
  }

  factory MuscleData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MuscleData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      muscleGroup: serializer.fromJson<String?>(json['muscleGroup']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'muscleGroup': serializer.toJson<String?>(muscleGroup),
    };
  }

  MuscleData copyWith({
    int? id,
    String? name,
    Value<String?> muscleGroup = const Value.absent(),
  }) => MuscleData(
    id: id ?? this.id,
    name: name ?? this.name,
    muscleGroup: muscleGroup.present ? muscleGroup.value : this.muscleGroup,
  );
  MuscleData copyWithCompanion(MuscleCompanion data) {
    return MuscleData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      muscleGroup: data.muscleGroup.present
          ? data.muscleGroup.value
          : this.muscleGroup,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MuscleData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('muscleGroup: $muscleGroup')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, muscleGroup);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MuscleData &&
          other.id == this.id &&
          other.name == this.name &&
          other.muscleGroup == this.muscleGroup);
}

class MuscleCompanion extends UpdateCompanion<MuscleData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> muscleGroup;
  const MuscleCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.muscleGroup = const Value.absent(),
  });
  MuscleCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.muscleGroup = const Value.absent(),
  }) : name = Value(name);
  static Insertable<MuscleData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? muscleGroup,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (muscleGroup != null) 'muscle_group': muscleGroup,
    });
  }

  MuscleCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? muscleGroup,
  }) {
    return MuscleCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      muscleGroup: muscleGroup ?? this.muscleGroup,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (muscleGroup.present) {
      map['muscle_group'] = Variable<String>(muscleGroup.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MuscleCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('muscleGroup: $muscleGroup')
          ..write(')'))
        .toString();
  }
}

class $ExerciseMuscleTable extends ExerciseMuscle
    with TableInfo<$ExerciseMuscleTable, ExerciseMuscleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseMuscleTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _exerciseIdMeta = const VerificationMeta(
    'exerciseId',
  );
  @override
  late final GeneratedColumn<int> exerciseId = GeneratedColumn<int>(
    'exercise_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES exercise (id)',
    ),
  );
  static const VerificationMeta _muscleIdMeta = const VerificationMeta(
    'muscleId',
  );
  @override
  late final GeneratedColumn<int> muscleId = GeneratedColumn<int>(
    'muscle_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES muscle (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [exerciseId, muscleId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exercise_muscle';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExerciseMuscleData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('exercise_id')) {
      context.handle(
        _exerciseIdMeta,
        exerciseId.isAcceptableOrUnknown(data['exercise_id']!, _exerciseIdMeta),
      );
    } else if (isInserting) {
      context.missing(_exerciseIdMeta);
    }
    if (data.containsKey('muscle_id')) {
      context.handle(
        _muscleIdMeta,
        muscleId.isAcceptableOrUnknown(data['muscle_id']!, _muscleIdMeta),
      );
    } else if (isInserting) {
      context.missing(_muscleIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {exerciseId, muscleId};
  @override
  ExerciseMuscleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseMuscleData(
      exerciseId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}exercise_id'],
      )!,
      muscleId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}muscle_id'],
      )!,
    );
  }

  @override
  $ExerciseMuscleTable createAlias(String alias) {
    return $ExerciseMuscleTable(attachedDatabase, alias);
  }
}

class ExerciseMuscleData extends DataClass
    implements Insertable<ExerciseMuscleData> {
  final int exerciseId;
  final int muscleId;
  const ExerciseMuscleData({required this.exerciseId, required this.muscleId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['exercise_id'] = Variable<int>(exerciseId);
    map['muscle_id'] = Variable<int>(muscleId);
    return map;
  }

  ExerciseMuscleCompanion toCompanion(bool nullToAbsent) {
    return ExerciseMuscleCompanion(
      exerciseId: Value(exerciseId),
      muscleId: Value(muscleId),
    );
  }

  factory ExerciseMuscleData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseMuscleData(
      exerciseId: serializer.fromJson<int>(json['exerciseId']),
      muscleId: serializer.fromJson<int>(json['muscleId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'exerciseId': serializer.toJson<int>(exerciseId),
      'muscleId': serializer.toJson<int>(muscleId),
    };
  }

  ExerciseMuscleData copyWith({int? exerciseId, int? muscleId}) =>
      ExerciseMuscleData(
        exerciseId: exerciseId ?? this.exerciseId,
        muscleId: muscleId ?? this.muscleId,
      );
  ExerciseMuscleData copyWithCompanion(ExerciseMuscleCompanion data) {
    return ExerciseMuscleData(
      exerciseId: data.exerciseId.present
          ? data.exerciseId.value
          : this.exerciseId,
      muscleId: data.muscleId.present ? data.muscleId.value : this.muscleId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseMuscleData(')
          ..write('exerciseId: $exerciseId, ')
          ..write('muscleId: $muscleId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(exerciseId, muscleId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseMuscleData &&
          other.exerciseId == this.exerciseId &&
          other.muscleId == this.muscleId);
}

class ExerciseMuscleCompanion extends UpdateCompanion<ExerciseMuscleData> {
  final Value<int> exerciseId;
  final Value<int> muscleId;
  final Value<int> rowid;
  const ExerciseMuscleCompanion({
    this.exerciseId = const Value.absent(),
    this.muscleId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExerciseMuscleCompanion.insert({
    required int exerciseId,
    required int muscleId,
    this.rowid = const Value.absent(),
  }) : exerciseId = Value(exerciseId),
       muscleId = Value(muscleId);
  static Insertable<ExerciseMuscleData> custom({
    Expression<int>? exerciseId,
    Expression<int>? muscleId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (exerciseId != null) 'exercise_id': exerciseId,
      if (muscleId != null) 'muscle_id': muscleId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExerciseMuscleCompanion copyWith({
    Value<int>? exerciseId,
    Value<int>? muscleId,
    Value<int>? rowid,
  }) {
    return ExerciseMuscleCompanion(
      exerciseId: exerciseId ?? this.exerciseId,
      muscleId: muscleId ?? this.muscleId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (exerciseId.present) {
      map['exercise_id'] = Variable<int>(exerciseId.value);
    }
    if (muscleId.present) {
      map['muscle_id'] = Variable<int>(muscleId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseMuscleCompanion(')
          ..write('exerciseId: $exerciseId, ')
          ..write('muscleId: $muscleId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $WorkoutTable extends Workout with TableInfo<$WorkoutTable, WorkoutData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'workout';
  @override
  VerificationContext validateIntegrity(
    Insertable<WorkoutData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorkoutData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkoutData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
    );
  }

  @override
  $WorkoutTable createAlias(String alias) {
    return $WorkoutTable(attachedDatabase, alias);
  }
}

class WorkoutData extends DataClass implements Insertable<WorkoutData> {
  final int id;
  final String name;
  final String? description;
  const WorkoutData({required this.id, required this.name, this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  WorkoutCompanion toCompanion(bool nullToAbsent) {
    return WorkoutCompanion(
      id: Value(id),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory WorkoutData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
    };
  }

  WorkoutData copyWith({
    int? id,
    String? name,
    Value<String?> description = const Value.absent(),
  }) => WorkoutData(
    id: id ?? this.id,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
  );
  WorkoutData copyWithCompanion(WorkoutCompanion data) {
    return WorkoutData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description);
}

class WorkoutCompanion extends UpdateCompanion<WorkoutData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> description;
  const WorkoutCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
  });
  WorkoutCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.description = const Value.absent(),
  }) : name = Value(name);
  static Insertable<WorkoutData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
    });
  }

  WorkoutCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? description,
  }) {
    return WorkoutCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $WorkoutLogTable extends WorkoutLog
    with TableInfo<$WorkoutLogTable, WorkoutLogData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutLogTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _beginningTimeMeta = const VerificationMeta(
    'beginningTime',
  );
  @override
  late final GeneratedColumn<DateTime> beginningTime =
      GeneratedColumn<DateTime>(
        'beginning_time',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _endingTimeMeta = const VerificationMeta(
    'endingTime',
  );
  @override
  late final GeneratedColumn<DateTime> endingTime = GeneratedColumn<DateTime>(
    'ending_time',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _workoutIdMeta = const VerificationMeta(
    'workoutId',
  );
  @override
  late final GeneratedColumn<int> workoutId = GeneratedColumn<int>(
    'workout_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES workout (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    beginningTime,
    endingTime,
    workoutId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'workout_log';
  @override
  VerificationContext validateIntegrity(
    Insertable<WorkoutLogData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('beginning_time')) {
      context.handle(
        _beginningTimeMeta,
        beginningTime.isAcceptableOrUnknown(
          data['beginning_time']!,
          _beginningTimeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_beginningTimeMeta);
    }
    if (data.containsKey('ending_time')) {
      context.handle(
        _endingTimeMeta,
        endingTime.isAcceptableOrUnknown(data['ending_time']!, _endingTimeMeta),
      );
    }
    if (data.containsKey('workout_id')) {
      context.handle(
        _workoutIdMeta,
        workoutId.isAcceptableOrUnknown(data['workout_id']!, _workoutIdMeta),
      );
    } else if (isInserting) {
      context.missing(_workoutIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorkoutLogData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkoutLogData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      beginningTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}beginning_time'],
      )!,
      endingTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}ending_time'],
      ),
      workoutId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}workout_id'],
      )!,
    );
  }

  @override
  $WorkoutLogTable createAlias(String alias) {
    return $WorkoutLogTable(attachedDatabase, alias);
  }
}

class WorkoutLogData extends DataClass implements Insertable<WorkoutLogData> {
  final int id;
  final DateTime beginningTime;
  final DateTime? endingTime;
  final int workoutId;
  const WorkoutLogData({
    required this.id,
    required this.beginningTime,
    this.endingTime,
    required this.workoutId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['beginning_time'] = Variable<DateTime>(beginningTime);
    if (!nullToAbsent || endingTime != null) {
      map['ending_time'] = Variable<DateTime>(endingTime);
    }
    map['workout_id'] = Variable<int>(workoutId);
    return map;
  }

  WorkoutLogCompanion toCompanion(bool nullToAbsent) {
    return WorkoutLogCompanion(
      id: Value(id),
      beginningTime: Value(beginningTime),
      endingTime: endingTime == null && nullToAbsent
          ? const Value.absent()
          : Value(endingTime),
      workoutId: Value(workoutId),
    );
  }

  factory WorkoutLogData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutLogData(
      id: serializer.fromJson<int>(json['id']),
      beginningTime: serializer.fromJson<DateTime>(json['beginningTime']),
      endingTime: serializer.fromJson<DateTime?>(json['endingTime']),
      workoutId: serializer.fromJson<int>(json['workoutId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'beginningTime': serializer.toJson<DateTime>(beginningTime),
      'endingTime': serializer.toJson<DateTime?>(endingTime),
      'workoutId': serializer.toJson<int>(workoutId),
    };
  }

  WorkoutLogData copyWith({
    int? id,
    DateTime? beginningTime,
    Value<DateTime?> endingTime = const Value.absent(),
    int? workoutId,
  }) => WorkoutLogData(
    id: id ?? this.id,
    beginningTime: beginningTime ?? this.beginningTime,
    endingTime: endingTime.present ? endingTime.value : this.endingTime,
    workoutId: workoutId ?? this.workoutId,
  );
  WorkoutLogData copyWithCompanion(WorkoutLogCompanion data) {
    return WorkoutLogData(
      id: data.id.present ? data.id.value : this.id,
      beginningTime: data.beginningTime.present
          ? data.beginningTime.value
          : this.beginningTime,
      endingTime: data.endingTime.present
          ? data.endingTime.value
          : this.endingTime,
      workoutId: data.workoutId.present ? data.workoutId.value : this.workoutId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutLogData(')
          ..write('id: $id, ')
          ..write('beginningTime: $beginningTime, ')
          ..write('endingTime: $endingTime, ')
          ..write('workoutId: $workoutId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, beginningTime, endingTime, workoutId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutLogData &&
          other.id == this.id &&
          other.beginningTime == this.beginningTime &&
          other.endingTime == this.endingTime &&
          other.workoutId == this.workoutId);
}

class WorkoutLogCompanion extends UpdateCompanion<WorkoutLogData> {
  final Value<int> id;
  final Value<DateTime> beginningTime;
  final Value<DateTime?> endingTime;
  final Value<int> workoutId;
  const WorkoutLogCompanion({
    this.id = const Value.absent(),
    this.beginningTime = const Value.absent(),
    this.endingTime = const Value.absent(),
    this.workoutId = const Value.absent(),
  });
  WorkoutLogCompanion.insert({
    this.id = const Value.absent(),
    required DateTime beginningTime,
    this.endingTime = const Value.absent(),
    required int workoutId,
  }) : beginningTime = Value(beginningTime),
       workoutId = Value(workoutId);
  static Insertable<WorkoutLogData> custom({
    Expression<int>? id,
    Expression<DateTime>? beginningTime,
    Expression<DateTime>? endingTime,
    Expression<int>? workoutId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (beginningTime != null) 'beginning_time': beginningTime,
      if (endingTime != null) 'ending_time': endingTime,
      if (workoutId != null) 'workout_id': workoutId,
    });
  }

  WorkoutLogCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? beginningTime,
    Value<DateTime?>? endingTime,
    Value<int>? workoutId,
  }) {
    return WorkoutLogCompanion(
      id: id ?? this.id,
      beginningTime: beginningTime ?? this.beginningTime,
      endingTime: endingTime ?? this.endingTime,
      workoutId: workoutId ?? this.workoutId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (beginningTime.present) {
      map['beginning_time'] = Variable<DateTime>(beginningTime.value);
    }
    if (endingTime.present) {
      map['ending_time'] = Variable<DateTime>(endingTime.value);
    }
    if (workoutId.present) {
      map['workout_id'] = Variable<int>(workoutId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutLogCompanion(')
          ..write('id: $id, ')
          ..write('beginningTime: $beginningTime, ')
          ..write('endingTime: $endingTime, ')
          ..write('workoutId: $workoutId')
          ..write(')'))
        .toString();
  }
}

class $ExerciseLogTable extends ExerciseLog
    with TableInfo<$ExerciseLogTable, ExerciseLogData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseLogTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int> order = GeneratedColumn<int>(
    'order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _beginningTimeMeta = const VerificationMeta(
    'beginningTime',
  );
  @override
  late final GeneratedColumn<DateTime> beginningTime =
      GeneratedColumn<DateTime>(
        'beginning_time',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _endingTimeMeta = const VerificationMeta(
    'endingTime',
  );
  @override
  late final GeneratedColumn<DateTime> endingTime = GeneratedColumn<DateTime>(
    'ending_time',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _commentMeta = const VerificationMeta(
    'comment',
  );
  @override
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
    'comment',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _exerciseIdMeta = const VerificationMeta(
    'exerciseId',
  );
  @override
  late final GeneratedColumn<int> exerciseId = GeneratedColumn<int>(
    'exercise_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES exercise (id)',
    ),
  );
  static const VerificationMeta _workoutLogIdMeta = const VerificationMeta(
    'workoutLogId',
  );
  @override
  late final GeneratedColumn<int> workoutLogId = GeneratedColumn<int>(
    'workout_log_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES workout_log (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    order,
    beginningTime,
    endingTime,
    comment,
    exerciseId,
    workoutLogId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exercise_log';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExerciseLogData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('order')) {
      context.handle(
        _orderMeta,
        order.isAcceptableOrUnknown(data['order']!, _orderMeta),
      );
    } else if (isInserting) {
      context.missing(_orderMeta);
    }
    if (data.containsKey('beginning_time')) {
      context.handle(
        _beginningTimeMeta,
        beginningTime.isAcceptableOrUnknown(
          data['beginning_time']!,
          _beginningTimeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_beginningTimeMeta);
    }
    if (data.containsKey('ending_time')) {
      context.handle(
        _endingTimeMeta,
        endingTime.isAcceptableOrUnknown(data['ending_time']!, _endingTimeMeta),
      );
    }
    if (data.containsKey('comment')) {
      context.handle(
        _commentMeta,
        comment.isAcceptableOrUnknown(data['comment']!, _commentMeta),
      );
    }
    if (data.containsKey('exercise_id')) {
      context.handle(
        _exerciseIdMeta,
        exerciseId.isAcceptableOrUnknown(data['exercise_id']!, _exerciseIdMeta),
      );
    } else if (isInserting) {
      context.missing(_exerciseIdMeta);
    }
    if (data.containsKey('workout_log_id')) {
      context.handle(
        _workoutLogIdMeta,
        workoutLogId.isAcceptableOrUnknown(
          data['workout_log_id']!,
          _workoutLogIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_workoutLogIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExerciseLogData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseLogData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      order: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}order'],
      )!,
      beginningTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}beginning_time'],
      )!,
      endingTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}ending_time'],
      ),
      comment: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}comment'],
      ),
      exerciseId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}exercise_id'],
      )!,
      workoutLogId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}workout_log_id'],
      )!,
    );
  }

  @override
  $ExerciseLogTable createAlias(String alias) {
    return $ExerciseLogTable(attachedDatabase, alias);
  }
}

class ExerciseLogData extends DataClass implements Insertable<ExerciseLogData> {
  final int id;
  final int order;
  final DateTime beginningTime;
  final DateTime? endingTime;
  final String? comment;
  final int exerciseId;
  final int workoutLogId;
  const ExerciseLogData({
    required this.id,
    required this.order,
    required this.beginningTime,
    this.endingTime,
    this.comment,
    required this.exerciseId,
    required this.workoutLogId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['order'] = Variable<int>(order);
    map['beginning_time'] = Variable<DateTime>(beginningTime);
    if (!nullToAbsent || endingTime != null) {
      map['ending_time'] = Variable<DateTime>(endingTime);
    }
    if (!nullToAbsent || comment != null) {
      map['comment'] = Variable<String>(comment);
    }
    map['exercise_id'] = Variable<int>(exerciseId);
    map['workout_log_id'] = Variable<int>(workoutLogId);
    return map;
  }

  ExerciseLogCompanion toCompanion(bool nullToAbsent) {
    return ExerciseLogCompanion(
      id: Value(id),
      order: Value(order),
      beginningTime: Value(beginningTime),
      endingTime: endingTime == null && nullToAbsent
          ? const Value.absent()
          : Value(endingTime),
      comment: comment == null && nullToAbsent
          ? const Value.absent()
          : Value(comment),
      exerciseId: Value(exerciseId),
      workoutLogId: Value(workoutLogId),
    );
  }

  factory ExerciseLogData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseLogData(
      id: serializer.fromJson<int>(json['id']),
      order: serializer.fromJson<int>(json['order']),
      beginningTime: serializer.fromJson<DateTime>(json['beginningTime']),
      endingTime: serializer.fromJson<DateTime?>(json['endingTime']),
      comment: serializer.fromJson<String?>(json['comment']),
      exerciseId: serializer.fromJson<int>(json['exerciseId']),
      workoutLogId: serializer.fromJson<int>(json['workoutLogId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'order': serializer.toJson<int>(order),
      'beginningTime': serializer.toJson<DateTime>(beginningTime),
      'endingTime': serializer.toJson<DateTime?>(endingTime),
      'comment': serializer.toJson<String?>(comment),
      'exerciseId': serializer.toJson<int>(exerciseId),
      'workoutLogId': serializer.toJson<int>(workoutLogId),
    };
  }

  ExerciseLogData copyWith({
    int? id,
    int? order,
    DateTime? beginningTime,
    Value<DateTime?> endingTime = const Value.absent(),
    Value<String?> comment = const Value.absent(),
    int? exerciseId,
    int? workoutLogId,
  }) => ExerciseLogData(
    id: id ?? this.id,
    order: order ?? this.order,
    beginningTime: beginningTime ?? this.beginningTime,
    endingTime: endingTime.present ? endingTime.value : this.endingTime,
    comment: comment.present ? comment.value : this.comment,
    exerciseId: exerciseId ?? this.exerciseId,
    workoutLogId: workoutLogId ?? this.workoutLogId,
  );
  ExerciseLogData copyWithCompanion(ExerciseLogCompanion data) {
    return ExerciseLogData(
      id: data.id.present ? data.id.value : this.id,
      order: data.order.present ? data.order.value : this.order,
      beginningTime: data.beginningTime.present
          ? data.beginningTime.value
          : this.beginningTime,
      endingTime: data.endingTime.present
          ? data.endingTime.value
          : this.endingTime,
      comment: data.comment.present ? data.comment.value : this.comment,
      exerciseId: data.exerciseId.present
          ? data.exerciseId.value
          : this.exerciseId,
      workoutLogId: data.workoutLogId.present
          ? data.workoutLogId.value
          : this.workoutLogId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseLogData(')
          ..write('id: $id, ')
          ..write('order: $order, ')
          ..write('beginningTime: $beginningTime, ')
          ..write('endingTime: $endingTime, ')
          ..write('comment: $comment, ')
          ..write('exerciseId: $exerciseId, ')
          ..write('workoutLogId: $workoutLogId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    order,
    beginningTime,
    endingTime,
    comment,
    exerciseId,
    workoutLogId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseLogData &&
          other.id == this.id &&
          other.order == this.order &&
          other.beginningTime == this.beginningTime &&
          other.endingTime == this.endingTime &&
          other.comment == this.comment &&
          other.exerciseId == this.exerciseId &&
          other.workoutLogId == this.workoutLogId);
}

class ExerciseLogCompanion extends UpdateCompanion<ExerciseLogData> {
  final Value<int> id;
  final Value<int> order;
  final Value<DateTime> beginningTime;
  final Value<DateTime?> endingTime;
  final Value<String?> comment;
  final Value<int> exerciseId;
  final Value<int> workoutLogId;
  const ExerciseLogCompanion({
    this.id = const Value.absent(),
    this.order = const Value.absent(),
    this.beginningTime = const Value.absent(),
    this.endingTime = const Value.absent(),
    this.comment = const Value.absent(),
    this.exerciseId = const Value.absent(),
    this.workoutLogId = const Value.absent(),
  });
  ExerciseLogCompanion.insert({
    this.id = const Value.absent(),
    required int order,
    required DateTime beginningTime,
    this.endingTime = const Value.absent(),
    this.comment = const Value.absent(),
    required int exerciseId,
    required int workoutLogId,
  }) : order = Value(order),
       beginningTime = Value(beginningTime),
       exerciseId = Value(exerciseId),
       workoutLogId = Value(workoutLogId);
  static Insertable<ExerciseLogData> custom({
    Expression<int>? id,
    Expression<int>? order,
    Expression<DateTime>? beginningTime,
    Expression<DateTime>? endingTime,
    Expression<String>? comment,
    Expression<int>? exerciseId,
    Expression<int>? workoutLogId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (order != null) 'order': order,
      if (beginningTime != null) 'beginning_time': beginningTime,
      if (endingTime != null) 'ending_time': endingTime,
      if (comment != null) 'comment': comment,
      if (exerciseId != null) 'exercise_id': exerciseId,
      if (workoutLogId != null) 'workout_log_id': workoutLogId,
    });
  }

  ExerciseLogCompanion copyWith({
    Value<int>? id,
    Value<int>? order,
    Value<DateTime>? beginningTime,
    Value<DateTime?>? endingTime,
    Value<String?>? comment,
    Value<int>? exerciseId,
    Value<int>? workoutLogId,
  }) {
    return ExerciseLogCompanion(
      id: id ?? this.id,
      order: order ?? this.order,
      beginningTime: beginningTime ?? this.beginningTime,
      endingTime: endingTime ?? this.endingTime,
      comment: comment ?? this.comment,
      exerciseId: exerciseId ?? this.exerciseId,
      workoutLogId: workoutLogId ?? this.workoutLogId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
    }
    if (beginningTime.present) {
      map['beginning_time'] = Variable<DateTime>(beginningTime.value);
    }
    if (endingTime.present) {
      map['ending_time'] = Variable<DateTime>(endingTime.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    if (exerciseId.present) {
      map['exercise_id'] = Variable<int>(exerciseId.value);
    }
    if (workoutLogId.present) {
      map['workout_log_id'] = Variable<int>(workoutLogId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseLogCompanion(')
          ..write('id: $id, ')
          ..write('order: $order, ')
          ..write('beginningTime: $beginningTime, ')
          ..write('endingTime: $endingTime, ')
          ..write('comment: $comment, ')
          ..write('exerciseId: $exerciseId, ')
          ..write('workoutLogId: $workoutLogId')
          ..write(')'))
        .toString();
  }
}

class $ExerciseSetTable extends ExerciseSet
    with TableInfo<$ExerciseSetTable, ExerciseSetData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseSetTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _setOrderMeta = const VerificationMeta(
    'setOrder',
  );
  @override
  late final GeneratedColumn<int> setOrder = GeneratedColumn<int>(
    'set_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _warmupMeta = const VerificationMeta('warmup');
  @override
  late final GeneratedColumn<bool> warmup = GeneratedColumn<bool>(
    'warmup',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("warmup" IN (0, 1))',
    ),
  );
  static const VerificationMeta _commentMeta = const VerificationMeta(
    'comment',
  );
  @override
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
    'comment',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _beginningTimeMeta = const VerificationMeta(
    'beginningTime',
  );
  @override
  late final GeneratedColumn<DateTime> beginningTime =
      GeneratedColumn<DateTime>(
        'beginning_time',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _endingTimeMeta = const VerificationMeta(
    'endingTime',
  );
  @override
  late final GeneratedColumn<DateTime> endingTime = GeneratedColumn<DateTime>(
    'ending_time',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _exerciseLogIdMeta = const VerificationMeta(
    'exerciseLogId',
  );
  @override
  late final GeneratedColumn<int> exerciseLogId = GeneratedColumn<int>(
    'exercise_log_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES exercise_log (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    setOrder,
    warmup,
    comment,
    beginningTime,
    endingTime,
    exerciseLogId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exercise_set';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExerciseSetData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('set_order')) {
      context.handle(
        _setOrderMeta,
        setOrder.isAcceptableOrUnknown(data['set_order']!, _setOrderMeta),
      );
    } else if (isInserting) {
      context.missing(_setOrderMeta);
    }
    if (data.containsKey('warmup')) {
      context.handle(
        _warmupMeta,
        warmup.isAcceptableOrUnknown(data['warmup']!, _warmupMeta),
      );
    } else if (isInserting) {
      context.missing(_warmupMeta);
    }
    if (data.containsKey('comment')) {
      context.handle(
        _commentMeta,
        comment.isAcceptableOrUnknown(data['comment']!, _commentMeta),
      );
    }
    if (data.containsKey('beginning_time')) {
      context.handle(
        _beginningTimeMeta,
        beginningTime.isAcceptableOrUnknown(
          data['beginning_time']!,
          _beginningTimeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_beginningTimeMeta);
    }
    if (data.containsKey('ending_time')) {
      context.handle(
        _endingTimeMeta,
        endingTime.isAcceptableOrUnknown(data['ending_time']!, _endingTimeMeta),
      );
    }
    if (data.containsKey('exercise_log_id')) {
      context.handle(
        _exerciseLogIdMeta,
        exerciseLogId.isAcceptableOrUnknown(
          data['exercise_log_id']!,
          _exerciseLogIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_exerciseLogIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExerciseSetData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseSetData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      setOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}set_order'],
      )!,
      warmup: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}warmup'],
      )!,
      comment: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}comment'],
      ),
      beginningTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}beginning_time'],
      )!,
      endingTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}ending_time'],
      ),
      exerciseLogId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}exercise_log_id'],
      )!,
    );
  }

  @override
  $ExerciseSetTable createAlias(String alias) {
    return $ExerciseSetTable(attachedDatabase, alias);
  }
}

class ExerciseSetData extends DataClass implements Insertable<ExerciseSetData> {
  final int id;
  final int setOrder;
  final bool warmup;
  final String? comment;
  final DateTime beginningTime;
  final DateTime? endingTime;
  final int exerciseLogId;
  const ExerciseSetData({
    required this.id,
    required this.setOrder,
    required this.warmup,
    this.comment,
    required this.beginningTime,
    this.endingTime,
    required this.exerciseLogId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['set_order'] = Variable<int>(setOrder);
    map['warmup'] = Variable<bool>(warmup);
    if (!nullToAbsent || comment != null) {
      map['comment'] = Variable<String>(comment);
    }
    map['beginning_time'] = Variable<DateTime>(beginningTime);
    if (!nullToAbsent || endingTime != null) {
      map['ending_time'] = Variable<DateTime>(endingTime);
    }
    map['exercise_log_id'] = Variable<int>(exerciseLogId);
    return map;
  }

  ExerciseSetCompanion toCompanion(bool nullToAbsent) {
    return ExerciseSetCompanion(
      id: Value(id),
      setOrder: Value(setOrder),
      warmup: Value(warmup),
      comment: comment == null && nullToAbsent
          ? const Value.absent()
          : Value(comment),
      beginningTime: Value(beginningTime),
      endingTime: endingTime == null && nullToAbsent
          ? const Value.absent()
          : Value(endingTime),
      exerciseLogId: Value(exerciseLogId),
    );
  }

  factory ExerciseSetData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseSetData(
      id: serializer.fromJson<int>(json['id']),
      setOrder: serializer.fromJson<int>(json['setOrder']),
      warmup: serializer.fromJson<bool>(json['warmup']),
      comment: serializer.fromJson<String?>(json['comment']),
      beginningTime: serializer.fromJson<DateTime>(json['beginningTime']),
      endingTime: serializer.fromJson<DateTime?>(json['endingTime']),
      exerciseLogId: serializer.fromJson<int>(json['exerciseLogId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'setOrder': serializer.toJson<int>(setOrder),
      'warmup': serializer.toJson<bool>(warmup),
      'comment': serializer.toJson<String?>(comment),
      'beginningTime': serializer.toJson<DateTime>(beginningTime),
      'endingTime': serializer.toJson<DateTime?>(endingTime),
      'exerciseLogId': serializer.toJson<int>(exerciseLogId),
    };
  }

  ExerciseSetData copyWith({
    int? id,
    int? setOrder,
    bool? warmup,
    Value<String?> comment = const Value.absent(),
    DateTime? beginningTime,
    Value<DateTime?> endingTime = const Value.absent(),
    int? exerciseLogId,
  }) => ExerciseSetData(
    id: id ?? this.id,
    setOrder: setOrder ?? this.setOrder,
    warmup: warmup ?? this.warmup,
    comment: comment.present ? comment.value : this.comment,
    beginningTime: beginningTime ?? this.beginningTime,
    endingTime: endingTime.present ? endingTime.value : this.endingTime,
    exerciseLogId: exerciseLogId ?? this.exerciseLogId,
  );
  ExerciseSetData copyWithCompanion(ExerciseSetCompanion data) {
    return ExerciseSetData(
      id: data.id.present ? data.id.value : this.id,
      setOrder: data.setOrder.present ? data.setOrder.value : this.setOrder,
      warmup: data.warmup.present ? data.warmup.value : this.warmup,
      comment: data.comment.present ? data.comment.value : this.comment,
      beginningTime: data.beginningTime.present
          ? data.beginningTime.value
          : this.beginningTime,
      endingTime: data.endingTime.present
          ? data.endingTime.value
          : this.endingTime,
      exerciseLogId: data.exerciseLogId.present
          ? data.exerciseLogId.value
          : this.exerciseLogId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseSetData(')
          ..write('id: $id, ')
          ..write('setOrder: $setOrder, ')
          ..write('warmup: $warmup, ')
          ..write('comment: $comment, ')
          ..write('beginningTime: $beginningTime, ')
          ..write('endingTime: $endingTime, ')
          ..write('exerciseLogId: $exerciseLogId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    setOrder,
    warmup,
    comment,
    beginningTime,
    endingTime,
    exerciseLogId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseSetData &&
          other.id == this.id &&
          other.setOrder == this.setOrder &&
          other.warmup == this.warmup &&
          other.comment == this.comment &&
          other.beginningTime == this.beginningTime &&
          other.endingTime == this.endingTime &&
          other.exerciseLogId == this.exerciseLogId);
}

class ExerciseSetCompanion extends UpdateCompanion<ExerciseSetData> {
  final Value<int> id;
  final Value<int> setOrder;
  final Value<bool> warmup;
  final Value<String?> comment;
  final Value<DateTime> beginningTime;
  final Value<DateTime?> endingTime;
  final Value<int> exerciseLogId;
  const ExerciseSetCompanion({
    this.id = const Value.absent(),
    this.setOrder = const Value.absent(),
    this.warmup = const Value.absent(),
    this.comment = const Value.absent(),
    this.beginningTime = const Value.absent(),
    this.endingTime = const Value.absent(),
    this.exerciseLogId = const Value.absent(),
  });
  ExerciseSetCompanion.insert({
    this.id = const Value.absent(),
    required int setOrder,
    required bool warmup,
    this.comment = const Value.absent(),
    required DateTime beginningTime,
    this.endingTime = const Value.absent(),
    required int exerciseLogId,
  }) : setOrder = Value(setOrder),
       warmup = Value(warmup),
       beginningTime = Value(beginningTime),
       exerciseLogId = Value(exerciseLogId);
  static Insertable<ExerciseSetData> custom({
    Expression<int>? id,
    Expression<int>? setOrder,
    Expression<bool>? warmup,
    Expression<String>? comment,
    Expression<DateTime>? beginningTime,
    Expression<DateTime>? endingTime,
    Expression<int>? exerciseLogId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (setOrder != null) 'set_order': setOrder,
      if (warmup != null) 'warmup': warmup,
      if (comment != null) 'comment': comment,
      if (beginningTime != null) 'beginning_time': beginningTime,
      if (endingTime != null) 'ending_time': endingTime,
      if (exerciseLogId != null) 'exercise_log_id': exerciseLogId,
    });
  }

  ExerciseSetCompanion copyWith({
    Value<int>? id,
    Value<int>? setOrder,
    Value<bool>? warmup,
    Value<String?>? comment,
    Value<DateTime>? beginningTime,
    Value<DateTime?>? endingTime,
    Value<int>? exerciseLogId,
  }) {
    return ExerciseSetCompanion(
      id: id ?? this.id,
      setOrder: setOrder ?? this.setOrder,
      warmup: warmup ?? this.warmup,
      comment: comment ?? this.comment,
      beginningTime: beginningTime ?? this.beginningTime,
      endingTime: endingTime ?? this.endingTime,
      exerciseLogId: exerciseLogId ?? this.exerciseLogId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (setOrder.present) {
      map['set_order'] = Variable<int>(setOrder.value);
    }
    if (warmup.present) {
      map['warmup'] = Variable<bool>(warmup.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    if (beginningTime.present) {
      map['beginning_time'] = Variable<DateTime>(beginningTime.value);
    }
    if (endingTime.present) {
      map['ending_time'] = Variable<DateTime>(endingTime.value);
    }
    if (exerciseLogId.present) {
      map['exercise_log_id'] = Variable<int>(exerciseLogId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseSetCompanion(')
          ..write('id: $id, ')
          ..write('setOrder: $setOrder, ')
          ..write('warmup: $warmup, ')
          ..write('comment: $comment, ')
          ..write('beginningTime: $beginningTime, ')
          ..write('endingTime: $endingTime, ')
          ..write('exerciseLogId: $exerciseLogId')
          ..write(')'))
        .toString();
  }
}

class $ESEMTable extends ESEM with TableInfo<$ESEMTable, ESEMData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ESEMTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _exerciseMetricIdMeta = const VerificationMeta(
    'exerciseMetricId',
  );
  @override
  late final GeneratedColumn<int> exerciseMetricId = GeneratedColumn<int>(
    'exercise_metric_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES exercise_metric (id)',
    ),
  );
  static const VerificationMeta _exerciseSetIdMeta = const VerificationMeta(
    'exerciseSetId',
  );
  @override
  late final GeneratedColumn<int> exerciseSetId = GeneratedColumn<int>(
    'exercise_set_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES exercise_set (id)',
    ),
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    exerciseMetricId,
    exerciseSetId,
    value,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'es_em';
  @override
  VerificationContext validateIntegrity(
    Insertable<ESEMData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('exercise_metric_id')) {
      context.handle(
        _exerciseMetricIdMeta,
        exerciseMetricId.isAcceptableOrUnknown(
          data['exercise_metric_id']!,
          _exerciseMetricIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_exerciseMetricIdMeta);
    }
    if (data.containsKey('exercise_set_id')) {
      context.handle(
        _exerciseSetIdMeta,
        exerciseSetId.isAcceptableOrUnknown(
          data['exercise_set_id']!,
          _exerciseSetIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_exerciseSetIdMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {exerciseMetricId, exerciseSetId};
  @override
  ESEMData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ESEMData(
      exerciseMetricId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}exercise_metric_id'],
      )!,
      exerciseSetId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}exercise_set_id'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $ESEMTable createAlias(String alias) {
    return $ESEMTable(attachedDatabase, alias);
  }
}

class ESEMData extends DataClass implements Insertable<ESEMData> {
  final int exerciseMetricId;
  final int exerciseSetId;
  final String value;
  const ESEMData({
    required this.exerciseMetricId,
    required this.exerciseSetId,
    required this.value,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['exercise_metric_id'] = Variable<int>(exerciseMetricId);
    map['exercise_set_id'] = Variable<int>(exerciseSetId);
    map['value'] = Variable<String>(value);
    return map;
  }

  ESEMCompanion toCompanion(bool nullToAbsent) {
    return ESEMCompanion(
      exerciseMetricId: Value(exerciseMetricId),
      exerciseSetId: Value(exerciseSetId),
      value: Value(value),
    );
  }

  factory ESEMData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ESEMData(
      exerciseMetricId: serializer.fromJson<int>(json['exerciseMetricId']),
      exerciseSetId: serializer.fromJson<int>(json['exerciseSetId']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'exerciseMetricId': serializer.toJson<int>(exerciseMetricId),
      'exerciseSetId': serializer.toJson<int>(exerciseSetId),
      'value': serializer.toJson<String>(value),
    };
  }

  ESEMData copyWith({
    int? exerciseMetricId,
    int? exerciseSetId,
    String? value,
  }) => ESEMData(
    exerciseMetricId: exerciseMetricId ?? this.exerciseMetricId,
    exerciseSetId: exerciseSetId ?? this.exerciseSetId,
    value: value ?? this.value,
  );
  ESEMData copyWithCompanion(ESEMCompanion data) {
    return ESEMData(
      exerciseMetricId: data.exerciseMetricId.present
          ? data.exerciseMetricId.value
          : this.exerciseMetricId,
      exerciseSetId: data.exerciseSetId.present
          ? data.exerciseSetId.value
          : this.exerciseSetId,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ESEMData(')
          ..write('exerciseMetricId: $exerciseMetricId, ')
          ..write('exerciseSetId: $exerciseSetId, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(exerciseMetricId, exerciseSetId, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ESEMData &&
          other.exerciseMetricId == this.exerciseMetricId &&
          other.exerciseSetId == this.exerciseSetId &&
          other.value == this.value);
}

class ESEMCompanion extends UpdateCompanion<ESEMData> {
  final Value<int> exerciseMetricId;
  final Value<int> exerciseSetId;
  final Value<String> value;
  final Value<int> rowid;
  const ESEMCompanion({
    this.exerciseMetricId = const Value.absent(),
    this.exerciseSetId = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ESEMCompanion.insert({
    required int exerciseMetricId,
    required int exerciseSetId,
    required String value,
    this.rowid = const Value.absent(),
  }) : exerciseMetricId = Value(exerciseMetricId),
       exerciseSetId = Value(exerciseSetId),
       value = Value(value);
  static Insertable<ESEMData> custom({
    Expression<int>? exerciseMetricId,
    Expression<int>? exerciseSetId,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (exerciseMetricId != null) 'exercise_metric_id': exerciseMetricId,
      if (exerciseSetId != null) 'exercise_set_id': exerciseSetId,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ESEMCompanion copyWith({
    Value<int>? exerciseMetricId,
    Value<int>? exerciseSetId,
    Value<String>? value,
    Value<int>? rowid,
  }) {
    return ESEMCompanion(
      exerciseMetricId: exerciseMetricId ?? this.exerciseMetricId,
      exerciseSetId: exerciseSetId ?? this.exerciseSetId,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (exerciseMetricId.present) {
      map['exercise_metric_id'] = Variable<int>(exerciseMetricId.value);
    }
    if (exerciseSetId.present) {
      map['exercise_set_id'] = Variable<int>(exerciseSetId.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ESEMCompanion(')
          ..write('exerciseMetricId: $exerciseMetricId, ')
          ..write('exerciseSetId: $exerciseSetId, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MachineTable extends Machine with TableInfo<$MachineTable, MachineData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MachineTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
    'brand',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<WeightUnit, int> unit =
      GeneratedColumn<int>(
        'unit',
        aliasedName,
        false,
        type: DriftSqlType.int,
        requiredDuringInsert: true,
      ).withConverter<WeightUnit>($MachineTable.$converterunit);
  @override
  List<GeneratedColumn> get $columns => [id, name, brand, unit];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'machine';
  @override
  VerificationContext validateIntegrity(
    Insertable<MachineData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('brand')) {
      context.handle(
        _brandMeta,
        brand.isAcceptableOrUnknown(data['brand']!, _brandMeta),
      );
    } else if (isInserting) {
      context.missing(_brandMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MachineData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MachineData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      brand: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}brand'],
      )!,
      unit: $MachineTable.$converterunit.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}unit'],
        )!,
      ),
    );
  }

  @override
  $MachineTable createAlias(String alias) {
    return $MachineTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<WeightUnit, int, int> $converterunit =
      const EnumIndexConverter<WeightUnit>(WeightUnit.values);
}

class MachineData extends DataClass implements Insertable<MachineData> {
  final int id;
  final String name;
  final String brand;
  final WeightUnit unit;
  const MachineData({
    required this.id,
    required this.name,
    required this.brand,
    required this.unit,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['brand'] = Variable<String>(brand);
    {
      map['unit'] = Variable<int>($MachineTable.$converterunit.toSql(unit));
    }
    return map;
  }

  MachineCompanion toCompanion(bool nullToAbsent) {
    return MachineCompanion(
      id: Value(id),
      name: Value(name),
      brand: Value(brand),
      unit: Value(unit),
    );
  }

  factory MachineData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MachineData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      brand: serializer.fromJson<String>(json['brand']),
      unit: $MachineTable.$converterunit.fromJson(
        serializer.fromJson<int>(json['unit']),
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'brand': serializer.toJson<String>(brand),
      'unit': serializer.toJson<int>($MachineTable.$converterunit.toJson(unit)),
    };
  }

  MachineData copyWith({
    int? id,
    String? name,
    String? brand,
    WeightUnit? unit,
  }) => MachineData(
    id: id ?? this.id,
    name: name ?? this.name,
    brand: brand ?? this.brand,
    unit: unit ?? this.unit,
  );
  MachineData copyWithCompanion(MachineCompanion data) {
    return MachineData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      brand: data.brand.present ? data.brand.value : this.brand,
      unit: data.unit.present ? data.unit.value : this.unit,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MachineData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('brand: $brand, ')
          ..write('unit: $unit')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, brand, unit);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MachineData &&
          other.id == this.id &&
          other.name == this.name &&
          other.brand == this.brand &&
          other.unit == this.unit);
}

class MachineCompanion extends UpdateCompanion<MachineData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> brand;
  final Value<WeightUnit> unit;
  const MachineCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.brand = const Value.absent(),
    this.unit = const Value.absent(),
  });
  MachineCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String brand,
    required WeightUnit unit,
  }) : name = Value(name),
       brand = Value(brand),
       unit = Value(unit);
  static Insertable<MachineData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? brand,
    Expression<int>? unit,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (brand != null) 'brand': brand,
      if (unit != null) 'unit': unit,
    });
  }

  MachineCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? brand,
    Value<WeightUnit>? unit,
  }) {
    return MachineCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      brand: brand ?? this.brand,
      unit: unit ?? this.unit,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (unit.present) {
      map['unit'] = Variable<int>(
        $MachineTable.$converterunit.toSql(unit.value),
      );
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MachineCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('brand: $brand, ')
          ..write('unit: $unit')
          ..write(')'))
        .toString();
  }
}

class $MachineSettingTable extends MachineSetting
    with TableInfo<$MachineSettingTable, MachineSettingData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MachineSettingTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
    'label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minPositionMeta = const VerificationMeta(
    'minPosition',
  );
  @override
  late final GeneratedColumn<double> minPosition = GeneratedColumn<double>(
    'min_position',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _maxPositionMeta = const VerificationMeta(
    'maxPosition',
  );
  @override
  late final GeneratedColumn<double> maxPosition = GeneratedColumn<double>(
    'max_position',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _stepMeta = const VerificationMeta('step');
  @override
  late final GeneratedColumn<int> step = GeneratedColumn<int>(
    'step',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _machineIdMeta = const VerificationMeta(
    'machineId',
  );
  @override
  late final GeneratedColumn<int> machineId = GeneratedColumn<int>(
    'machine_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES machine (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    label,
    minPosition,
    maxPosition,
    step,
    machineId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'machine_setting';
  @override
  VerificationContext validateIntegrity(
    Insertable<MachineSettingData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
        _labelMeta,
        label.isAcceptableOrUnknown(data['label']!, _labelMeta),
      );
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('min_position')) {
      context.handle(
        _minPositionMeta,
        minPosition.isAcceptableOrUnknown(
          data['min_position']!,
          _minPositionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minPositionMeta);
    }
    if (data.containsKey('max_position')) {
      context.handle(
        _maxPositionMeta,
        maxPosition.isAcceptableOrUnknown(
          data['max_position']!,
          _maxPositionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_maxPositionMeta);
    }
    if (data.containsKey('step')) {
      context.handle(
        _stepMeta,
        step.isAcceptableOrUnknown(data['step']!, _stepMeta),
      );
    } else if (isInserting) {
      context.missing(_stepMeta);
    }
    if (data.containsKey('machine_id')) {
      context.handle(
        _machineIdMeta,
        machineId.isAcceptableOrUnknown(data['machine_id']!, _machineIdMeta),
      );
    } else if (isInserting) {
      context.missing(_machineIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MachineSettingData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MachineSettingData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      label: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}label'],
      )!,
      minPosition: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}min_position'],
      )!,
      maxPosition: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}max_position'],
      )!,
      step: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}step'],
      )!,
      machineId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}machine_id'],
      )!,
    );
  }

  @override
  $MachineSettingTable createAlias(String alias) {
    return $MachineSettingTable(attachedDatabase, alias);
  }
}

class MachineSettingData extends DataClass
    implements Insertable<MachineSettingData> {
  final int id;
  final String label;
  final double minPosition;
  final double maxPosition;
  final int step;
  final int machineId;
  const MachineSettingData({
    required this.id,
    required this.label,
    required this.minPosition,
    required this.maxPosition,
    required this.step,
    required this.machineId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['label'] = Variable<String>(label);
    map['min_position'] = Variable<double>(minPosition);
    map['max_position'] = Variable<double>(maxPosition);
    map['step'] = Variable<int>(step);
    map['machine_id'] = Variable<int>(machineId);
    return map;
  }

  MachineSettingCompanion toCompanion(bool nullToAbsent) {
    return MachineSettingCompanion(
      id: Value(id),
      label: Value(label),
      minPosition: Value(minPosition),
      maxPosition: Value(maxPosition),
      step: Value(step),
      machineId: Value(machineId),
    );
  }

  factory MachineSettingData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MachineSettingData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String>(json['label']),
      minPosition: serializer.fromJson<double>(json['minPosition']),
      maxPosition: serializer.fromJson<double>(json['maxPosition']),
      step: serializer.fromJson<int>(json['step']),
      machineId: serializer.fromJson<int>(json['machineId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String>(label),
      'minPosition': serializer.toJson<double>(minPosition),
      'maxPosition': serializer.toJson<double>(maxPosition),
      'step': serializer.toJson<int>(step),
      'machineId': serializer.toJson<int>(machineId),
    };
  }

  MachineSettingData copyWith({
    int? id,
    String? label,
    double? minPosition,
    double? maxPosition,
    int? step,
    int? machineId,
  }) => MachineSettingData(
    id: id ?? this.id,
    label: label ?? this.label,
    minPosition: minPosition ?? this.minPosition,
    maxPosition: maxPosition ?? this.maxPosition,
    step: step ?? this.step,
    machineId: machineId ?? this.machineId,
  );
  MachineSettingData copyWithCompanion(MachineSettingCompanion data) {
    return MachineSettingData(
      id: data.id.present ? data.id.value : this.id,
      label: data.label.present ? data.label.value : this.label,
      minPosition: data.minPosition.present
          ? data.minPosition.value
          : this.minPosition,
      maxPosition: data.maxPosition.present
          ? data.maxPosition.value
          : this.maxPosition,
      step: data.step.present ? data.step.value : this.step,
      machineId: data.machineId.present ? data.machineId.value : this.machineId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MachineSettingData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('minPosition: $minPosition, ')
          ..write('maxPosition: $maxPosition, ')
          ..write('step: $step, ')
          ..write('machineId: $machineId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, label, minPosition, maxPosition, step, machineId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MachineSettingData &&
          other.id == this.id &&
          other.label == this.label &&
          other.minPosition == this.minPosition &&
          other.maxPosition == this.maxPosition &&
          other.step == this.step &&
          other.machineId == this.machineId);
}

class MachineSettingCompanion extends UpdateCompanion<MachineSettingData> {
  final Value<int> id;
  final Value<String> label;
  final Value<double> minPosition;
  final Value<double> maxPosition;
  final Value<int> step;
  final Value<int> machineId;
  const MachineSettingCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.minPosition = const Value.absent(),
    this.maxPosition = const Value.absent(),
    this.step = const Value.absent(),
    this.machineId = const Value.absent(),
  });
  MachineSettingCompanion.insert({
    this.id = const Value.absent(),
    required String label,
    required double minPosition,
    required double maxPosition,
    required int step,
    required int machineId,
  }) : label = Value(label),
       minPosition = Value(minPosition),
       maxPosition = Value(maxPosition),
       step = Value(step),
       machineId = Value(machineId);
  static Insertable<MachineSettingData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? minPosition,
    Expression<double>? maxPosition,
    Expression<int>? step,
    Expression<int>? machineId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (minPosition != null) 'min_position': minPosition,
      if (maxPosition != null) 'max_position': maxPosition,
      if (step != null) 'step': step,
      if (machineId != null) 'machine_id': machineId,
    });
  }

  MachineSettingCompanion copyWith({
    Value<int>? id,
    Value<String>? label,
    Value<double>? minPosition,
    Value<double>? maxPosition,
    Value<int>? step,
    Value<int>? machineId,
  }) {
    return MachineSettingCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      minPosition: minPosition ?? this.minPosition,
      maxPosition: maxPosition ?? this.maxPosition,
      step: step ?? this.step,
      machineId: machineId ?? this.machineId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (minPosition.present) {
      map['min_position'] = Variable<double>(minPosition.value);
    }
    if (maxPosition.present) {
      map['max_position'] = Variable<double>(maxPosition.value);
    }
    if (step.present) {
      map['step'] = Variable<int>(step.value);
    }
    if (machineId.present) {
      map['machine_id'] = Variable<int>(machineId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MachineSettingCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('minPosition: $minPosition, ')
          ..write('maxPosition: $maxPosition, ')
          ..write('step: $step, ')
          ..write('machineId: $machineId')
          ..write(')'))
        .toString();
  }
}

class $SelectedSettingTable extends SelectedSetting
    with TableInfo<$SelectedSettingTable, SelectedSettingData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SelectedSettingTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _exerciseLogIdMeta = const VerificationMeta(
    'exerciseLogId',
  );
  @override
  late final GeneratedColumn<int> exerciseLogId = GeneratedColumn<int>(
    'exercise_log_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES exercise_log (id)',
    ),
  );
  static const VerificationMeta _machineSettingIdMeta = const VerificationMeta(
    'machineSettingId',
  );
  @override
  late final GeneratedColumn<int> machineSettingId = GeneratedColumn<int>(
    'machine_setting_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES machine_setting (id)',
    ),
  );
  static const VerificationMeta _selectedPositionMeta = const VerificationMeta(
    'selectedPosition',
  );
  @override
  late final GeneratedColumn<int> selectedPosition = GeneratedColumn<int>(
    'selected_position',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    exerciseLogId,
    machineSettingId,
    selectedPosition,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'selected_setting';
  @override
  VerificationContext validateIntegrity(
    Insertable<SelectedSettingData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('exercise_log_id')) {
      context.handle(
        _exerciseLogIdMeta,
        exerciseLogId.isAcceptableOrUnknown(
          data['exercise_log_id']!,
          _exerciseLogIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_exerciseLogIdMeta);
    }
    if (data.containsKey('machine_setting_id')) {
      context.handle(
        _machineSettingIdMeta,
        machineSettingId.isAcceptableOrUnknown(
          data['machine_setting_id']!,
          _machineSettingIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_machineSettingIdMeta);
    }
    if (data.containsKey('selected_position')) {
      context.handle(
        _selectedPositionMeta,
        selectedPosition.isAcceptableOrUnknown(
          data['selected_position']!,
          _selectedPositionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_selectedPositionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {exerciseLogId, machineSettingId};
  @override
  SelectedSettingData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SelectedSettingData(
      exerciseLogId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}exercise_log_id'],
      )!,
      machineSettingId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}machine_setting_id'],
      )!,
      selectedPosition: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}selected_position'],
      )!,
    );
  }

  @override
  $SelectedSettingTable createAlias(String alias) {
    return $SelectedSettingTable(attachedDatabase, alias);
  }
}

class SelectedSettingData extends DataClass
    implements Insertable<SelectedSettingData> {
  final int exerciseLogId;
  final int machineSettingId;
  final int selectedPosition;
  const SelectedSettingData({
    required this.exerciseLogId,
    required this.machineSettingId,
    required this.selectedPosition,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['exercise_log_id'] = Variable<int>(exerciseLogId);
    map['machine_setting_id'] = Variable<int>(machineSettingId);
    map['selected_position'] = Variable<int>(selectedPosition);
    return map;
  }

  SelectedSettingCompanion toCompanion(bool nullToAbsent) {
    return SelectedSettingCompanion(
      exerciseLogId: Value(exerciseLogId),
      machineSettingId: Value(machineSettingId),
      selectedPosition: Value(selectedPosition),
    );
  }

  factory SelectedSettingData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SelectedSettingData(
      exerciseLogId: serializer.fromJson<int>(json['exerciseLogId']),
      machineSettingId: serializer.fromJson<int>(json['machineSettingId']),
      selectedPosition: serializer.fromJson<int>(json['selectedPosition']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'exerciseLogId': serializer.toJson<int>(exerciseLogId),
      'machineSettingId': serializer.toJson<int>(machineSettingId),
      'selectedPosition': serializer.toJson<int>(selectedPosition),
    };
  }

  SelectedSettingData copyWith({
    int? exerciseLogId,
    int? machineSettingId,
    int? selectedPosition,
  }) => SelectedSettingData(
    exerciseLogId: exerciseLogId ?? this.exerciseLogId,
    machineSettingId: machineSettingId ?? this.machineSettingId,
    selectedPosition: selectedPosition ?? this.selectedPosition,
  );
  SelectedSettingData copyWithCompanion(SelectedSettingCompanion data) {
    return SelectedSettingData(
      exerciseLogId: data.exerciseLogId.present
          ? data.exerciseLogId.value
          : this.exerciseLogId,
      machineSettingId: data.machineSettingId.present
          ? data.machineSettingId.value
          : this.machineSettingId,
      selectedPosition: data.selectedPosition.present
          ? data.selectedPosition.value
          : this.selectedPosition,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SelectedSettingData(')
          ..write('exerciseLogId: $exerciseLogId, ')
          ..write('machineSettingId: $machineSettingId, ')
          ..write('selectedPosition: $selectedPosition')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(exerciseLogId, machineSettingId, selectedPosition);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SelectedSettingData &&
          other.exerciseLogId == this.exerciseLogId &&
          other.machineSettingId == this.machineSettingId &&
          other.selectedPosition == this.selectedPosition);
}

class SelectedSettingCompanion extends UpdateCompanion<SelectedSettingData> {
  final Value<int> exerciseLogId;
  final Value<int> machineSettingId;
  final Value<int> selectedPosition;
  final Value<int> rowid;
  const SelectedSettingCompanion({
    this.exerciseLogId = const Value.absent(),
    this.machineSettingId = const Value.absent(),
    this.selectedPosition = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SelectedSettingCompanion.insert({
    required int exerciseLogId,
    required int machineSettingId,
    required int selectedPosition,
    this.rowid = const Value.absent(),
  }) : exerciseLogId = Value(exerciseLogId),
       machineSettingId = Value(machineSettingId),
       selectedPosition = Value(selectedPosition);
  static Insertable<SelectedSettingData> custom({
    Expression<int>? exerciseLogId,
    Expression<int>? machineSettingId,
    Expression<int>? selectedPosition,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (exerciseLogId != null) 'exercise_log_id': exerciseLogId,
      if (machineSettingId != null) 'machine_setting_id': machineSettingId,
      if (selectedPosition != null) 'selected_position': selectedPosition,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SelectedSettingCompanion copyWith({
    Value<int>? exerciseLogId,
    Value<int>? machineSettingId,
    Value<int>? selectedPosition,
    Value<int>? rowid,
  }) {
    return SelectedSettingCompanion(
      exerciseLogId: exerciseLogId ?? this.exerciseLogId,
      machineSettingId: machineSettingId ?? this.machineSettingId,
      selectedPosition: selectedPosition ?? this.selectedPosition,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (exerciseLogId.present) {
      map['exercise_log_id'] = Variable<int>(exerciseLogId.value);
    }
    if (machineSettingId.present) {
      map['machine_setting_id'] = Variable<int>(machineSettingId.value);
    }
    if (selectedPosition.present) {
      map['selected_position'] = Variable<int>(selectedPosition.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SelectedSettingCompanion(')
          ..write('exerciseLogId: $exerciseLogId, ')
          ..write('machineSettingId: $machineSettingId, ')
          ..write('selectedPosition: $selectedPosition, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RoutineTable extends Routine with TableInfo<$RoutineTable, RoutineData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RoutineTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'routine';
  @override
  VerificationContext validateIntegrity(
    Insertable<RoutineData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RoutineData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RoutineData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $RoutineTable createAlias(String alias) {
    return $RoutineTable(attachedDatabase, alias);
  }
}

class RoutineData extends DataClass implements Insertable<RoutineData> {
  final int id;
  final String name;
  const RoutineData({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  RoutineCompanion toCompanion(bool nullToAbsent) {
    return RoutineCompanion(id: Value(id), name: Value(name));
  }

  factory RoutineData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RoutineData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  RoutineData copyWith({int? id, String? name}) =>
      RoutineData(id: id ?? this.id, name: name ?? this.name);
  RoutineData copyWithCompanion(RoutineCompanion data) {
    return RoutineData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RoutineData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RoutineData && other.id == this.id && other.name == this.name);
}

class RoutineCompanion extends UpdateCompanion<RoutineData> {
  final Value<int> id;
  final Value<String> name;
  const RoutineCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  RoutineCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<RoutineData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  RoutineCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return RoutineCompanion(id: id ?? this.id, name: name ?? this.name);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoutineCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $RoutinePeriodTable extends RoutinePeriod
    with TableInfo<$RoutinePeriodTable, RoutinePeriodData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RoutinePeriodTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _beginningDateMeta = const VerificationMeta(
    'beginningDate',
  );
  @override
  late final GeneratedColumn<DateTime> beginningDate =
      GeneratedColumn<DateTime>(
        'beginning_date',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _endingDateMeta = const VerificationMeta(
    'endingDate',
  );
  @override
  late final GeneratedColumn<DateTime> endingDate = GeneratedColumn<DateTime>(
    'ending_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _routineIdMeta = const VerificationMeta(
    'routineId',
  );
  @override
  late final GeneratedColumn<int> routineId = GeneratedColumn<int>(
    'routine_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES routine (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    beginningDate,
    endingDate,
    routineId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'routine_period';
  @override
  VerificationContext validateIntegrity(
    Insertable<RoutinePeriodData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('beginning_date')) {
      context.handle(
        _beginningDateMeta,
        beginningDate.isAcceptableOrUnknown(
          data['beginning_date']!,
          _beginningDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_beginningDateMeta);
    }
    if (data.containsKey('ending_date')) {
      context.handle(
        _endingDateMeta,
        endingDate.isAcceptableOrUnknown(data['ending_date']!, _endingDateMeta),
      );
    }
    if (data.containsKey('routine_id')) {
      context.handle(
        _routineIdMeta,
        routineId.isAcceptableOrUnknown(data['routine_id']!, _routineIdMeta),
      );
    } else if (isInserting) {
      context.missing(_routineIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RoutinePeriodData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RoutinePeriodData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      beginningDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}beginning_date'],
      )!,
      endingDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}ending_date'],
      ),
      routineId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}routine_id'],
      )!,
    );
  }

  @override
  $RoutinePeriodTable createAlias(String alias) {
    return $RoutinePeriodTable(attachedDatabase, alias);
  }
}

class RoutinePeriodData extends DataClass
    implements Insertable<RoutinePeriodData> {
  final int id;
  final DateTime beginningDate;
  final DateTime? endingDate;
  final int routineId;
  const RoutinePeriodData({
    required this.id,
    required this.beginningDate,
    this.endingDate,
    required this.routineId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['beginning_date'] = Variable<DateTime>(beginningDate);
    if (!nullToAbsent || endingDate != null) {
      map['ending_date'] = Variable<DateTime>(endingDate);
    }
    map['routine_id'] = Variable<int>(routineId);
    return map;
  }

  RoutinePeriodCompanion toCompanion(bool nullToAbsent) {
    return RoutinePeriodCompanion(
      id: Value(id),
      beginningDate: Value(beginningDate),
      endingDate: endingDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endingDate),
      routineId: Value(routineId),
    );
  }

  factory RoutinePeriodData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RoutinePeriodData(
      id: serializer.fromJson<int>(json['id']),
      beginningDate: serializer.fromJson<DateTime>(json['beginningDate']),
      endingDate: serializer.fromJson<DateTime?>(json['endingDate']),
      routineId: serializer.fromJson<int>(json['routineId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'beginningDate': serializer.toJson<DateTime>(beginningDate),
      'endingDate': serializer.toJson<DateTime?>(endingDate),
      'routineId': serializer.toJson<int>(routineId),
    };
  }

  RoutinePeriodData copyWith({
    int? id,
    DateTime? beginningDate,
    Value<DateTime?> endingDate = const Value.absent(),
    int? routineId,
  }) => RoutinePeriodData(
    id: id ?? this.id,
    beginningDate: beginningDate ?? this.beginningDate,
    endingDate: endingDate.present ? endingDate.value : this.endingDate,
    routineId: routineId ?? this.routineId,
  );
  RoutinePeriodData copyWithCompanion(RoutinePeriodCompanion data) {
    return RoutinePeriodData(
      id: data.id.present ? data.id.value : this.id,
      beginningDate: data.beginningDate.present
          ? data.beginningDate.value
          : this.beginningDate,
      endingDate: data.endingDate.present
          ? data.endingDate.value
          : this.endingDate,
      routineId: data.routineId.present ? data.routineId.value : this.routineId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RoutinePeriodData(')
          ..write('id: $id, ')
          ..write('beginningDate: $beginningDate, ')
          ..write('endingDate: $endingDate, ')
          ..write('routineId: $routineId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, beginningDate, endingDate, routineId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RoutinePeriodData &&
          other.id == this.id &&
          other.beginningDate == this.beginningDate &&
          other.endingDate == this.endingDate &&
          other.routineId == this.routineId);
}

class RoutinePeriodCompanion extends UpdateCompanion<RoutinePeriodData> {
  final Value<int> id;
  final Value<DateTime> beginningDate;
  final Value<DateTime?> endingDate;
  final Value<int> routineId;
  const RoutinePeriodCompanion({
    this.id = const Value.absent(),
    this.beginningDate = const Value.absent(),
    this.endingDate = const Value.absent(),
    this.routineId = const Value.absent(),
  });
  RoutinePeriodCompanion.insert({
    this.id = const Value.absent(),
    required DateTime beginningDate,
    this.endingDate = const Value.absent(),
    required int routineId,
  }) : beginningDate = Value(beginningDate),
       routineId = Value(routineId);
  static Insertable<RoutinePeriodData> custom({
    Expression<int>? id,
    Expression<DateTime>? beginningDate,
    Expression<DateTime>? endingDate,
    Expression<int>? routineId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (beginningDate != null) 'beginning_date': beginningDate,
      if (endingDate != null) 'ending_date': endingDate,
      if (routineId != null) 'routine_id': routineId,
    });
  }

  RoutinePeriodCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? beginningDate,
    Value<DateTime?>? endingDate,
    Value<int>? routineId,
  }) {
    return RoutinePeriodCompanion(
      id: id ?? this.id,
      beginningDate: beginningDate ?? this.beginningDate,
      endingDate: endingDate ?? this.endingDate,
      routineId: routineId ?? this.routineId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (beginningDate.present) {
      map['beginning_date'] = Variable<DateTime>(beginningDate.value);
    }
    if (endingDate.present) {
      map['ending_date'] = Variable<DateTime>(endingDate.value);
    }
    if (routineId.present) {
      map['routine_id'] = Variable<int>(routineId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoutinePeriodCompanion(')
          ..write('id: $id, ')
          ..write('beginningDate: $beginningDate, ')
          ..write('endingDate: $endingDate, ')
          ..write('routineId: $routineId')
          ..write(')'))
        .toString();
  }
}

class $RoutineWorkoutTable extends RoutineWorkout
    with TableInfo<$RoutineWorkoutTable, RoutineWorkoutData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RoutineWorkoutTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _plannedWorkoutOrderMeta =
      const VerificationMeta('plannedWorkoutOrder');
  @override
  late final GeneratedColumn<int> plannedWorkoutOrder = GeneratedColumn<int>(
    'planned_workout_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _routineIdMeta = const VerificationMeta(
    'routineId',
  );
  @override
  late final GeneratedColumn<int> routineId = GeneratedColumn<int>(
    'routine_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES routine (id)',
    ),
  );
  static const VerificationMeta _workoutIdMeta = const VerificationMeta(
    'workoutId',
  );
  @override
  late final GeneratedColumn<int> workoutId = GeneratedColumn<int>(
    'workout_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES workout (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    plannedWorkoutOrder,
    routineId,
    workoutId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'routine_workout';
  @override
  VerificationContext validateIntegrity(
    Insertable<RoutineWorkoutData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('planned_workout_order')) {
      context.handle(
        _plannedWorkoutOrderMeta,
        plannedWorkoutOrder.isAcceptableOrUnknown(
          data['planned_workout_order']!,
          _plannedWorkoutOrderMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_plannedWorkoutOrderMeta);
    }
    if (data.containsKey('routine_id')) {
      context.handle(
        _routineIdMeta,
        routineId.isAcceptableOrUnknown(data['routine_id']!, _routineIdMeta),
      );
    } else if (isInserting) {
      context.missing(_routineIdMeta);
    }
    if (data.containsKey('workout_id')) {
      context.handle(
        _workoutIdMeta,
        workoutId.isAcceptableOrUnknown(data['workout_id']!, _workoutIdMeta),
      );
    } else if (isInserting) {
      context.missing(_workoutIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RoutineWorkoutData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RoutineWorkoutData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      plannedWorkoutOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}planned_workout_order'],
      )!,
      routineId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}routine_id'],
      )!,
      workoutId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}workout_id'],
      )!,
    );
  }

  @override
  $RoutineWorkoutTable createAlias(String alias) {
    return $RoutineWorkoutTable(attachedDatabase, alias);
  }
}

class RoutineWorkoutData extends DataClass
    implements Insertable<RoutineWorkoutData> {
  final int id;
  final int plannedWorkoutOrder;
  final int routineId;
  final int workoutId;
  const RoutineWorkoutData({
    required this.id,
    required this.plannedWorkoutOrder,
    required this.routineId,
    required this.workoutId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['planned_workout_order'] = Variable<int>(plannedWorkoutOrder);
    map['routine_id'] = Variable<int>(routineId);
    map['workout_id'] = Variable<int>(workoutId);
    return map;
  }

  RoutineWorkoutCompanion toCompanion(bool nullToAbsent) {
    return RoutineWorkoutCompanion(
      id: Value(id),
      plannedWorkoutOrder: Value(plannedWorkoutOrder),
      routineId: Value(routineId),
      workoutId: Value(workoutId),
    );
  }

  factory RoutineWorkoutData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RoutineWorkoutData(
      id: serializer.fromJson<int>(json['id']),
      plannedWorkoutOrder: serializer.fromJson<int>(
        json['plannedWorkoutOrder'],
      ),
      routineId: serializer.fromJson<int>(json['routineId']),
      workoutId: serializer.fromJson<int>(json['workoutId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'plannedWorkoutOrder': serializer.toJson<int>(plannedWorkoutOrder),
      'routineId': serializer.toJson<int>(routineId),
      'workoutId': serializer.toJson<int>(workoutId),
    };
  }

  RoutineWorkoutData copyWith({
    int? id,
    int? plannedWorkoutOrder,
    int? routineId,
    int? workoutId,
  }) => RoutineWorkoutData(
    id: id ?? this.id,
    plannedWorkoutOrder: plannedWorkoutOrder ?? this.plannedWorkoutOrder,
    routineId: routineId ?? this.routineId,
    workoutId: workoutId ?? this.workoutId,
  );
  RoutineWorkoutData copyWithCompanion(RoutineWorkoutCompanion data) {
    return RoutineWorkoutData(
      id: data.id.present ? data.id.value : this.id,
      plannedWorkoutOrder: data.plannedWorkoutOrder.present
          ? data.plannedWorkoutOrder.value
          : this.plannedWorkoutOrder,
      routineId: data.routineId.present ? data.routineId.value : this.routineId,
      workoutId: data.workoutId.present ? data.workoutId.value : this.workoutId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RoutineWorkoutData(')
          ..write('id: $id, ')
          ..write('plannedWorkoutOrder: $plannedWorkoutOrder, ')
          ..write('routineId: $routineId, ')
          ..write('workoutId: $workoutId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, plannedWorkoutOrder, routineId, workoutId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RoutineWorkoutData &&
          other.id == this.id &&
          other.plannedWorkoutOrder == this.plannedWorkoutOrder &&
          other.routineId == this.routineId &&
          other.workoutId == this.workoutId);
}

class RoutineWorkoutCompanion extends UpdateCompanion<RoutineWorkoutData> {
  final Value<int> id;
  final Value<int> plannedWorkoutOrder;
  final Value<int> routineId;
  final Value<int> workoutId;
  const RoutineWorkoutCompanion({
    this.id = const Value.absent(),
    this.plannedWorkoutOrder = const Value.absent(),
    this.routineId = const Value.absent(),
    this.workoutId = const Value.absent(),
  });
  RoutineWorkoutCompanion.insert({
    this.id = const Value.absent(),
    required int plannedWorkoutOrder,
    required int routineId,
    required int workoutId,
  }) : plannedWorkoutOrder = Value(plannedWorkoutOrder),
       routineId = Value(routineId),
       workoutId = Value(workoutId);
  static Insertable<RoutineWorkoutData> custom({
    Expression<int>? id,
    Expression<int>? plannedWorkoutOrder,
    Expression<int>? routineId,
    Expression<int>? workoutId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (plannedWorkoutOrder != null)
        'planned_workout_order': plannedWorkoutOrder,
      if (routineId != null) 'routine_id': routineId,
      if (workoutId != null) 'workout_id': workoutId,
    });
  }

  RoutineWorkoutCompanion copyWith({
    Value<int>? id,
    Value<int>? plannedWorkoutOrder,
    Value<int>? routineId,
    Value<int>? workoutId,
  }) {
    return RoutineWorkoutCompanion(
      id: id ?? this.id,
      plannedWorkoutOrder: plannedWorkoutOrder ?? this.plannedWorkoutOrder,
      routineId: routineId ?? this.routineId,
      workoutId: workoutId ?? this.workoutId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (plannedWorkoutOrder.present) {
      map['planned_workout_order'] = Variable<int>(plannedWorkoutOrder.value);
    }
    if (routineId.present) {
      map['routine_id'] = Variable<int>(routineId.value);
    }
    if (workoutId.present) {
      map['workout_id'] = Variable<int>(workoutId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoutineWorkoutCompanion(')
          ..write('id: $id, ')
          ..write('plannedWorkoutOrder: $plannedWorkoutOrder, ')
          ..write('routineId: $routineId, ')
          ..write('workoutId: $workoutId')
          ..write(')'))
        .toString();
  }
}

class $WorkoutExerciseTable extends WorkoutExercise
    with TableInfo<$WorkoutExerciseTable, WorkoutExerciseData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutExerciseTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _plannedExerciseOrderMeta =
      const VerificationMeta('plannedExerciseOrder');
  @override
  late final GeneratedColumn<int> plannedExerciseOrder = GeneratedColumn<int>(
    'planned_exercise_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _workoutIdMeta = const VerificationMeta(
    'workoutId',
  );
  @override
  late final GeneratedColumn<int> workoutId = GeneratedColumn<int>(
    'workout_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES workout (id)',
    ),
  );
  static const VerificationMeta _exerciseIdMeta = const VerificationMeta(
    'exerciseId',
  );
  @override
  late final GeneratedColumn<int> exerciseId = GeneratedColumn<int>(
    'exercise_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES exercise (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    plannedExerciseOrder,
    workoutId,
    exerciseId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'workout_exercise';
  @override
  VerificationContext validateIntegrity(
    Insertable<WorkoutExerciseData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('planned_exercise_order')) {
      context.handle(
        _plannedExerciseOrderMeta,
        plannedExerciseOrder.isAcceptableOrUnknown(
          data['planned_exercise_order']!,
          _plannedExerciseOrderMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_plannedExerciseOrderMeta);
    }
    if (data.containsKey('workout_id')) {
      context.handle(
        _workoutIdMeta,
        workoutId.isAcceptableOrUnknown(data['workout_id']!, _workoutIdMeta),
      );
    } else if (isInserting) {
      context.missing(_workoutIdMeta);
    }
    if (data.containsKey('exercise_id')) {
      context.handle(
        _exerciseIdMeta,
        exerciseId.isAcceptableOrUnknown(data['exercise_id']!, _exerciseIdMeta),
      );
    } else if (isInserting) {
      context.missing(_exerciseIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorkoutExerciseData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkoutExerciseData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      plannedExerciseOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}planned_exercise_order'],
      )!,
      workoutId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}workout_id'],
      )!,
      exerciseId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}exercise_id'],
      )!,
    );
  }

  @override
  $WorkoutExerciseTable createAlias(String alias) {
    return $WorkoutExerciseTable(attachedDatabase, alias);
  }
}

class WorkoutExerciseData extends DataClass
    implements Insertable<WorkoutExerciseData> {
  final int id;
  final int plannedExerciseOrder;
  final int workoutId;
  final int exerciseId;
  const WorkoutExerciseData({
    required this.id,
    required this.plannedExerciseOrder,
    required this.workoutId,
    required this.exerciseId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['planned_exercise_order'] = Variable<int>(plannedExerciseOrder);
    map['workout_id'] = Variable<int>(workoutId);
    map['exercise_id'] = Variable<int>(exerciseId);
    return map;
  }

  WorkoutExerciseCompanion toCompanion(bool nullToAbsent) {
    return WorkoutExerciseCompanion(
      id: Value(id),
      plannedExerciseOrder: Value(plannedExerciseOrder),
      workoutId: Value(workoutId),
      exerciseId: Value(exerciseId),
    );
  }

  factory WorkoutExerciseData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutExerciseData(
      id: serializer.fromJson<int>(json['id']),
      plannedExerciseOrder: serializer.fromJson<int>(
        json['plannedExerciseOrder'],
      ),
      workoutId: serializer.fromJson<int>(json['workoutId']),
      exerciseId: serializer.fromJson<int>(json['exerciseId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'plannedExerciseOrder': serializer.toJson<int>(plannedExerciseOrder),
      'workoutId': serializer.toJson<int>(workoutId),
      'exerciseId': serializer.toJson<int>(exerciseId),
    };
  }

  WorkoutExerciseData copyWith({
    int? id,
    int? plannedExerciseOrder,
    int? workoutId,
    int? exerciseId,
  }) => WorkoutExerciseData(
    id: id ?? this.id,
    plannedExerciseOrder: plannedExerciseOrder ?? this.plannedExerciseOrder,
    workoutId: workoutId ?? this.workoutId,
    exerciseId: exerciseId ?? this.exerciseId,
  );
  WorkoutExerciseData copyWithCompanion(WorkoutExerciseCompanion data) {
    return WorkoutExerciseData(
      id: data.id.present ? data.id.value : this.id,
      plannedExerciseOrder: data.plannedExerciseOrder.present
          ? data.plannedExerciseOrder.value
          : this.plannedExerciseOrder,
      workoutId: data.workoutId.present ? data.workoutId.value : this.workoutId,
      exerciseId: data.exerciseId.present
          ? data.exerciseId.value
          : this.exerciseId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutExerciseData(')
          ..write('id: $id, ')
          ..write('plannedExerciseOrder: $plannedExerciseOrder, ')
          ..write('workoutId: $workoutId, ')
          ..write('exerciseId: $exerciseId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, plannedExerciseOrder, workoutId, exerciseId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutExerciseData &&
          other.id == this.id &&
          other.plannedExerciseOrder == this.plannedExerciseOrder &&
          other.workoutId == this.workoutId &&
          other.exerciseId == this.exerciseId);
}

class WorkoutExerciseCompanion extends UpdateCompanion<WorkoutExerciseData> {
  final Value<int> id;
  final Value<int> plannedExerciseOrder;
  final Value<int> workoutId;
  final Value<int> exerciseId;
  const WorkoutExerciseCompanion({
    this.id = const Value.absent(),
    this.plannedExerciseOrder = const Value.absent(),
    this.workoutId = const Value.absent(),
    this.exerciseId = const Value.absent(),
  });
  WorkoutExerciseCompanion.insert({
    this.id = const Value.absent(),
    required int plannedExerciseOrder,
    required int workoutId,
    required int exerciseId,
  }) : plannedExerciseOrder = Value(plannedExerciseOrder),
       workoutId = Value(workoutId),
       exerciseId = Value(exerciseId);
  static Insertable<WorkoutExerciseData> custom({
    Expression<int>? id,
    Expression<int>? plannedExerciseOrder,
    Expression<int>? workoutId,
    Expression<int>? exerciseId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (plannedExerciseOrder != null)
        'planned_exercise_order': plannedExerciseOrder,
      if (workoutId != null) 'workout_id': workoutId,
      if (exerciseId != null) 'exercise_id': exerciseId,
    });
  }

  WorkoutExerciseCompanion copyWith({
    Value<int>? id,
    Value<int>? plannedExerciseOrder,
    Value<int>? workoutId,
    Value<int>? exerciseId,
  }) {
    return WorkoutExerciseCompanion(
      id: id ?? this.id,
      plannedExerciseOrder: plannedExerciseOrder ?? this.plannedExerciseOrder,
      workoutId: workoutId ?? this.workoutId,
      exerciseId: exerciseId ?? this.exerciseId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (plannedExerciseOrder.present) {
      map['planned_exercise_order'] = Variable<int>(plannedExerciseOrder.value);
    }
    if (workoutId.present) {
      map['workout_id'] = Variable<int>(workoutId.value);
    }
    if (exerciseId.present) {
      map['exercise_id'] = Variable<int>(exerciseId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutExerciseCompanion(')
          ..write('id: $id, ')
          ..write('plannedExerciseOrder: $plannedExerciseOrder, ')
          ..write('workoutId: $workoutId, ')
          ..write('exerciseId: $exerciseId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ExerciseTable exercise = $ExerciseTable(this);
  late final $MetricTable metric = $MetricTable(this);
  late final $ExerciseMetricTable exerciseMetric = $ExerciseMetricTable(this);
  late final $MuscleTable muscle = $MuscleTable(this);
  late final $ExerciseMuscleTable exerciseMuscle = $ExerciseMuscleTable(this);
  late final $WorkoutTable workout = $WorkoutTable(this);
  late final $WorkoutLogTable workoutLog = $WorkoutLogTable(this);
  late final $ExerciseLogTable exerciseLog = $ExerciseLogTable(this);
  late final $ExerciseSetTable exerciseSet = $ExerciseSetTable(this);
  late final $ESEMTable esem = $ESEMTable(this);
  late final $MachineTable machine = $MachineTable(this);
  late final $MachineSettingTable machineSetting = $MachineSettingTable(this);
  late final $SelectedSettingTable selectedSetting = $SelectedSettingTable(
    this,
  );
  late final $RoutineTable routine = $RoutineTable(this);
  late final $RoutinePeriodTable routinePeriod = $RoutinePeriodTable(this);
  late final $RoutineWorkoutTable routineWorkout = $RoutineWorkoutTable(this);
  late final $WorkoutExerciseTable workoutExercise = $WorkoutExerciseTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    exercise,
    metric,
    exerciseMetric,
    muscle,
    exerciseMuscle,
    workout,
    workoutLog,
    exerciseLog,
    exerciseSet,
    esem,
    machine,
    machineSetting,
    selectedSetting,
    routine,
    routinePeriod,
    routineWorkout,
    workoutExercise,
  ];
}

typedef $$ExerciseTableCreateCompanionBuilder = ExerciseCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> picture,
  Value<String?> description,
});
typedef $$ExerciseTableUpdateCompanionBuilder = ExerciseCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> picture,
  Value<String?> description,
});

final class $$ExerciseTableReferences
    extends BaseReferences<_$AppDatabase, $ExerciseTable, ExerciseData> {
  $$ExerciseTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ExerciseMetricTable, List<ExerciseMetricData>>
  _exerciseMetricRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.exerciseMetric,
    aliasName: 'exercise__id__exercise_metric__exercise_id',
  );

  $$ExerciseMetricTableProcessedTableManager get exerciseMetricRefs {
    final manager = $$ExerciseMetricTableTableManager(
      $_db,
      $_db.exerciseMetric,
    ).filter((f) => f.exerciseId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_exerciseMetricRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ExerciseMuscleTable, List<ExerciseMuscleData>>
  _exerciseMuscleRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.exerciseMuscle,
    aliasName: 'exercise__id__exercise_muscle__exercise_id',
  );

  $$ExerciseMuscleTableProcessedTableManager get exerciseMuscleRefs {
    final manager = $$ExerciseMuscleTableTableManager(
      $_db,
      $_db.exerciseMuscle,
    ).filter((f) => f.exerciseId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_exerciseMuscleRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ExerciseLogTable, List<ExerciseLogData>>
  _exerciseLogRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.exerciseLog,
    aliasName: 'exercise__id__exercise_log__exercise_id',
  );

  $$ExerciseLogTableProcessedTableManager get exerciseLogRefs {
    final manager = $$ExerciseLogTableTableManager(
      $_db,
      $_db.exerciseLog,
    ).filter((f) => f.exerciseId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_exerciseLogRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$WorkoutExerciseTable, List<WorkoutExerciseData>>
  _workoutExerciseRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.workoutExercise,
    aliasName: 'exercise__id__workout_exercise__exercise_id',
  );

  $$WorkoutExerciseTableProcessedTableManager get workoutExerciseRefs {
    final manager = $$WorkoutExerciseTableTableManager(
      $_db,
      $_db.workoutExercise,
    ).filter((f) => f.exerciseId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _workoutExerciseRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ExerciseTableFilterComposer
    extends Composer<_$AppDatabase, $ExerciseTable> {
  $$ExerciseTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get picture => $composableBuilder(
    column: $table.picture,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> exerciseMetricRefs(
    Expression<bool> Function($$ExerciseMetricTableFilterComposer f) f,
  ) {
    final $$ExerciseMetricTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseMetric,
      getReferencedColumn: (t) => t.exerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseMetricTableFilterComposer(
            $db: $db,
            $table: $db.exerciseMetric,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> exerciseMuscleRefs(
    Expression<bool> Function($$ExerciseMuscleTableFilterComposer f) f,
  ) {
    final $$ExerciseMuscleTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseMuscle,
      getReferencedColumn: (t) => t.exerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseMuscleTableFilterComposer(
            $db: $db,
            $table: $db.exerciseMuscle,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> exerciseLogRefs(
    Expression<bool> Function($$ExerciseLogTableFilterComposer f) f,
  ) {
    final $$ExerciseLogTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseLog,
      getReferencedColumn: (t) => t.exerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseLogTableFilterComposer(
            $db: $db,
            $table: $db.exerciseLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> workoutExerciseRefs(
    Expression<bool> Function($$WorkoutExerciseTableFilterComposer f) f,
  ) {
    final $$WorkoutExerciseTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.workoutExercise,
      getReferencedColumn: (t) => t.exerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutExerciseTableFilterComposer(
            $db: $db,
            $table: $db.workoutExercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ExerciseTableOrderingComposer
    extends Composer<_$AppDatabase, $ExerciseTable> {
  $$ExerciseTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get picture => $composableBuilder(
    column: $table.picture,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExerciseTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExerciseTable> {
  $$ExerciseTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get picture =>
      $composableBuilder(column: $table.picture, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  Expression<T> exerciseMetricRefs<T extends Object>(
    Expression<T> Function($$ExerciseMetricTableAnnotationComposer a) f,
  ) {
    final $$ExerciseMetricTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseMetric,
      getReferencedColumn: (t) => t.exerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseMetricTableAnnotationComposer(
            $db: $db,
            $table: $db.exerciseMetric,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> exerciseMuscleRefs<T extends Object>(
    Expression<T> Function($$ExerciseMuscleTableAnnotationComposer a) f,
  ) {
    final $$ExerciseMuscleTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseMuscle,
      getReferencedColumn: (t) => t.exerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseMuscleTableAnnotationComposer(
            $db: $db,
            $table: $db.exerciseMuscle,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> exerciseLogRefs<T extends Object>(
    Expression<T> Function($$ExerciseLogTableAnnotationComposer a) f,
  ) {
    final $$ExerciseLogTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseLog,
      getReferencedColumn: (t) => t.exerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseLogTableAnnotationComposer(
            $db: $db,
            $table: $db.exerciseLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> workoutExerciseRefs<T extends Object>(
    Expression<T> Function($$WorkoutExerciseTableAnnotationComposer a) f,
  ) {
    final $$WorkoutExerciseTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.workoutExercise,
      getReferencedColumn: (t) => t.exerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutExerciseTableAnnotationComposer(
            $db: $db,
            $table: $db.workoutExercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ExerciseTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExerciseTable,
          ExerciseData,
          $$ExerciseTableFilterComposer,
          $$ExerciseTableOrderingComposer,
          $$ExerciseTableAnnotationComposer,
          $$ExerciseTableCreateCompanionBuilder,
          $$ExerciseTableUpdateCompanionBuilder,
          (ExerciseData, $$ExerciseTableReferences),
          ExerciseData,
          PrefetchHooks Function({
            bool exerciseMetricRefs,
            bool exerciseMuscleRefs,
            bool exerciseLogRefs,
            bool workoutExerciseRefs,
          })
        > {
  $$ExerciseTableTableManager(_$AppDatabase db, $ExerciseTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExerciseTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExerciseTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExerciseTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> picture = const Value.absent(),
                Value<String?> description = const Value.absent(),
              }) => ExerciseCompanion(
                id: id,
                name: name,
                picture: picture,
                description: description,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> picture = const Value.absent(),
                Value<String?> description = const Value.absent(),
              }) => ExerciseCompanion.insert(
                id: id,
                name: name,
                picture: picture,
                description: description,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ExerciseTable, ExerciseData>(table),
                  $$ExerciseTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                exerciseMetricRefs = false,
                exerciseMuscleRefs = false,
                exerciseLogRefs = false,
                workoutExerciseRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (exerciseMetricRefs) db.exerciseMetric,
                    if (exerciseMuscleRefs) db.exerciseMuscle,
                    if (exerciseLogRefs) db.exerciseLog,
                    if (workoutExerciseRefs) db.workoutExercise,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (exerciseMetricRefs)
                        await $_getPrefetchedDataByColumns<
                          ExerciseData,
                          $ExerciseTable,
                          ExerciseMetricData,
                          $ExerciseMetricTable
                        >(
                          currentTable: table,
                          referencedTable: $$ExerciseTableReferences
                              ._exerciseMetricRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ExerciseTableReferences(
                                db,
                                table,
                                p0,
                              ).exerciseMetricRefs,
                          currentColumn: 'id',
                          referencedColumn: 'exercise_id',
                          typedResults: items,
                        ),
                      if (exerciseMuscleRefs)
                        await $_getPrefetchedDataByColumns<
                          ExerciseData,
                          $ExerciseTable,
                          ExerciseMuscleData,
                          $ExerciseMuscleTable
                        >(
                          currentTable: table,
                          referencedTable: $$ExerciseTableReferences
                              ._exerciseMuscleRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ExerciseTableReferences(
                                db,
                                table,
                                p0,
                              ).exerciseMuscleRefs,
                          currentColumn: 'id',
                          referencedColumn: 'exercise_id',
                          typedResults: items,
                        ),
                      if (exerciseLogRefs)
                        await $_getPrefetchedDataByColumns<
                          ExerciseData,
                          $ExerciseTable,
                          ExerciseLogData,
                          $ExerciseLogTable
                        >(
                          currentTable: table,
                          referencedTable: $$ExerciseTableReferences
                              ._exerciseLogRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ExerciseTableReferences(
                                db,
                                table,
                                p0,
                              ).exerciseLogRefs,
                          currentColumn: 'id',
                          referencedColumn: 'exercise_id',
                          typedResults: items,
                        ),
                      if (workoutExerciseRefs)
                        await $_getPrefetchedDataByColumns<
                          ExerciseData,
                          $ExerciseTable,
                          WorkoutExerciseData,
                          $WorkoutExerciseTable
                        >(
                          currentTable: table,
                          referencedTable: $$ExerciseTableReferences
                              ._workoutExerciseRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ExerciseTableReferences(
                                db,
                                table,
                                p0,
                              ).workoutExerciseRefs,
                          currentColumn: 'id',
                          referencedColumn: 'exercise_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ExerciseTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExerciseTable,
      ExerciseData,
      $$ExerciseTableFilterComposer,
      $$ExerciseTableOrderingComposer,
      $$ExerciseTableAnnotationComposer,
      $$ExerciseTableCreateCompanionBuilder,
      $$ExerciseTableUpdateCompanionBuilder,
      (ExerciseData, $$ExerciseTableReferences),
      ExerciseData,
      PrefetchHooks Function({
        bool exerciseMetricRefs,
        bool exerciseMuscleRefs,
        bool exerciseLogRefs,
        bool workoutExerciseRefs,
      })
    >;
typedef $$MetricTableCreateCompanionBuilder = MetricCompanion Function({
  Value<int> id,
  required String name,
  required String slug,
});
typedef $$MetricTableUpdateCompanionBuilder = MetricCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> slug,
});

final class $$MetricTableReferences
    extends BaseReferences<_$AppDatabase, $MetricTable, MetricData> {
  $$MetricTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ExerciseMetricTable, List<ExerciseMetricData>>
  _exerciseMetricRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.exerciseMetric,
    aliasName: 'metric__id__exercise_metric__metric_id',
  );

  $$ExerciseMetricTableProcessedTableManager get exerciseMetricRefs {
    final manager = $$ExerciseMetricTableTableManager(
      $_db,
      $_db.exerciseMetric,
    ).filter((f) => f.metricId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_exerciseMetricRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$MetricTableFilterComposer
    extends Composer<_$AppDatabase, $MetricTable> {
  $$MetricTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> exerciseMetricRefs(
    Expression<bool> Function($$ExerciseMetricTableFilterComposer f) f,
  ) {
    final $$ExerciseMetricTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseMetric,
      getReferencedColumn: (t) => t.metricId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseMetricTableFilterComposer(
            $db: $db,
            $table: $db.exerciseMetric,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MetricTableOrderingComposer
    extends Composer<_$AppDatabase, $MetricTable> {
  $$MetricTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MetricTableAnnotationComposer
    extends Composer<_$AppDatabase, $MetricTable> {
  $$MetricTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get slug =>
      $composableBuilder(column: $table.slug, builder: (column) => column);

  Expression<T> exerciseMetricRefs<T extends Object>(
    Expression<T> Function($$ExerciseMetricTableAnnotationComposer a) f,
  ) {
    final $$ExerciseMetricTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseMetric,
      getReferencedColumn: (t) => t.metricId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseMetricTableAnnotationComposer(
            $db: $db,
            $table: $db.exerciseMetric,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MetricTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MetricTable,
          MetricData,
          $$MetricTableFilterComposer,
          $$MetricTableOrderingComposer,
          $$MetricTableAnnotationComposer,
          $$MetricTableCreateCompanionBuilder,
          $$MetricTableUpdateCompanionBuilder,
          (MetricData, $$MetricTableReferences),
          MetricData,
          PrefetchHooks Function({bool exerciseMetricRefs})
        > {
  $$MetricTableTableManager(_$AppDatabase db, $MetricTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MetricTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MetricTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MetricTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> slug = const Value.absent(),
          }) => MetricCompanion(id: id, name: name, slug: slug),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String slug,
          }) => MetricCompanion.insert(id: id, name: name, slug: slug),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$MetricTable, MetricData>(table),
                  $$MetricTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({exerciseMetricRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (exerciseMetricRefs) db.exerciseMetric,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (exerciseMetricRefs)
                    await $_getPrefetchedDataByColumns<
                      MetricData,
                      $MetricTable,
                      ExerciseMetricData,
                      $ExerciseMetricTable
                    >(
                      currentTable: table,
                      referencedTable: $$MetricTableReferences
                          ._exerciseMetricRefsTable(db),
                      managerFromTypedResult: (p0) => $$MetricTableReferences(
                        db,
                        table,
                        p0,
                      ).exerciseMetricRefs,
                      currentColumn: 'id',
                      referencedColumn: 'metric_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$MetricTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MetricTable,
      MetricData,
      $$MetricTableFilterComposer,
      $$MetricTableOrderingComposer,
      $$MetricTableAnnotationComposer,
      $$MetricTableCreateCompanionBuilder,
      $$MetricTableUpdateCompanionBuilder,
      (MetricData, $$MetricTableReferences),
      MetricData,
      PrefetchHooks Function({bool exerciseMetricRefs})
    >;
typedef $$ExerciseMetricTableCreateCompanionBuilder =
    ExerciseMetricCompanion Function({
      Value<int> id,
      required int exerciseId,
      required int metricId,
      required int metricOrder,
    });
typedef $$ExerciseMetricTableUpdateCompanionBuilder =
    ExerciseMetricCompanion Function({
      Value<int> id,
      Value<int> exerciseId,
      Value<int> metricId,
      Value<int> metricOrder,
    });

final class $$ExerciseMetricTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $ExerciseMetricTable,
          ExerciseMetricData
        > {
  $$ExerciseMetricTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ExerciseTable _exerciseIdTable(_$AppDatabase db) =>
      db.exercise.createAlias('exercise_metric__exercise_id__exercise__id');

  $$ExerciseTableProcessedTableManager get exerciseId {
    final $_column = $_itemColumn<int>('exercise_id')!;

    final manager = $$ExerciseTableTableManager(
      $_db,
      $_db.exercise,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_exerciseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $MetricTable _metricIdTable(_$AppDatabase db) =>
      db.metric.createAlias('exercise_metric__metric_id__metric__id');

  $$MetricTableProcessedTableManager get metricId {
    final $_column = $_itemColumn<int>('metric_id')!;

    final manager = $$MetricTableTableManager(
      $_db,
      $_db.metric,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_metricIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$ESEMTable, List<ESEMData>> _esemRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.esem,
    aliasName: 'exercise_metric__id__es_em__exercise_metric_id',
  );

  $$ESEMTableProcessedTableManager get esemRefs {
    final manager = $$ESEMTableTableManager(
      $_db,
      $_db.esem,
    ).filter((f) => f.exerciseMetricId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_esemRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ExerciseMetricTableFilterComposer
    extends Composer<_$AppDatabase, $ExerciseMetricTable> {
  $$ExerciseMetricTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get metricOrder => $composableBuilder(
    column: $table.metricOrder,
    builder: (column) => ColumnFilters(column),
  );

  $$ExerciseTableFilterComposer get exerciseId {
    final $$ExerciseTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercise,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseTableFilterComposer(
            $db: $db,
            $table: $db.exercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MetricTableFilterComposer get metricId {
    final $$MetricTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.metricId,
      referencedTable: $db.metric,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MetricTableFilterComposer(
            $db: $db,
            $table: $db.metric,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> esemRefs(
    Expression<bool> Function($$ESEMTableFilterComposer f) f,
  ) {
    final $$ESEMTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.esem,
      getReferencedColumn: (t) => t.exerciseMetricId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ESEMTableFilterComposer(
            $db: $db,
            $table: $db.esem,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ExerciseMetricTableOrderingComposer
    extends Composer<_$AppDatabase, $ExerciseMetricTable> {
  $$ExerciseMetricTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get metricOrder => $composableBuilder(
    column: $table.metricOrder,
    builder: (column) => ColumnOrderings(column),
  );

  $$ExerciseTableOrderingComposer get exerciseId {
    final $$ExerciseTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercise,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseTableOrderingComposer(
            $db: $db,
            $table: $db.exercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MetricTableOrderingComposer get metricId {
    final $$MetricTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.metricId,
      referencedTable: $db.metric,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MetricTableOrderingComposer(
            $db: $db,
            $table: $db.metric,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ExerciseMetricTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExerciseMetricTable> {
  $$ExerciseMetricTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get metricOrder => $composableBuilder(
    column: $table.metricOrder,
    builder: (column) => column,
  );

  $$ExerciseTableAnnotationComposer get exerciseId {
    final $$ExerciseTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercise,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseTableAnnotationComposer(
            $db: $db,
            $table: $db.exercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MetricTableAnnotationComposer get metricId {
    final $$MetricTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.metricId,
      referencedTable: $db.metric,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MetricTableAnnotationComposer(
            $db: $db,
            $table: $db.metric,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> esemRefs<T extends Object>(
    Expression<T> Function($$ESEMTableAnnotationComposer a) f,
  ) {
    final $$ESEMTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.esem,
      getReferencedColumn: (t) => t.exerciseMetricId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ESEMTableAnnotationComposer(
            $db: $db,
            $table: $db.esem,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ExerciseMetricTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExerciseMetricTable,
          ExerciseMetricData,
          $$ExerciseMetricTableFilterComposer,
          $$ExerciseMetricTableOrderingComposer,
          $$ExerciseMetricTableAnnotationComposer,
          $$ExerciseMetricTableCreateCompanionBuilder,
          $$ExerciseMetricTableUpdateCompanionBuilder,
          (ExerciseMetricData, $$ExerciseMetricTableReferences),
          ExerciseMetricData,
          PrefetchHooks Function({
            bool exerciseId,
            bool metricId,
            bool esemRefs,
          })
        > {
  $$ExerciseMetricTableTableManager(
    _$AppDatabase db,
    $ExerciseMetricTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExerciseMetricTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExerciseMetricTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExerciseMetricTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> exerciseId = const Value.absent(),
                Value<int> metricId = const Value.absent(),
                Value<int> metricOrder = const Value.absent(),
              }) => ExerciseMetricCompanion(
                id: id,
                exerciseId: exerciseId,
                metricId: metricId,
                metricOrder: metricOrder,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int exerciseId,
                required int metricId,
                required int metricOrder,
              }) => ExerciseMetricCompanion.insert(
                id: id,
                exerciseId: exerciseId,
                metricId: metricId,
                metricOrder: metricOrder,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ExerciseMetricTable, ExerciseMetricData>(table),
                  $$ExerciseMetricTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({exerciseId = false, metricId = false, esemRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [if (esemRefs) db.esem],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (exerciseId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.exerciseId,
                            referencedTable: $$ExerciseMetricTableReferences
                                ._exerciseIdTable(db),
                            referencedColumn: $$ExerciseMetricTableReferences
                                ._exerciseIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (metricId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.metricId,
                            referencedTable: $$ExerciseMetricTableReferences
                                ._metricIdTable(db),
                            referencedColumn: $$ExerciseMetricTableReferences
                                ._metricIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (esemRefs)
                        await $_getPrefetchedDataByColumns<
                          ExerciseMetricData,
                          $ExerciseMetricTable,
                          ESEMData,
                          $ESEMTable
                        >(
                          currentTable: table,
                          referencedTable: $$ExerciseMetricTableReferences
                              ._esemRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ExerciseMetricTableReferences(
                                db,
                                table,
                                p0,
                              ).esemRefs,
                          currentColumn: 'id',
                          referencedColumn: 'exercise_metric_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ExerciseMetricTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExerciseMetricTable,
      ExerciseMetricData,
      $$ExerciseMetricTableFilterComposer,
      $$ExerciseMetricTableOrderingComposer,
      $$ExerciseMetricTableAnnotationComposer,
      $$ExerciseMetricTableCreateCompanionBuilder,
      $$ExerciseMetricTableUpdateCompanionBuilder,
      (ExerciseMetricData, $$ExerciseMetricTableReferences),
      ExerciseMetricData,
      PrefetchHooks Function({bool exerciseId, bool metricId, bool esemRefs})
    >;
typedef $$MuscleTableCreateCompanionBuilder = MuscleCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> muscleGroup,
});
typedef $$MuscleTableUpdateCompanionBuilder = MuscleCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> muscleGroup,
});

final class $$MuscleTableReferences
    extends BaseReferences<_$AppDatabase, $MuscleTable, MuscleData> {
  $$MuscleTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ExerciseMuscleTable, List<ExerciseMuscleData>>
  _exerciseMuscleRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.exerciseMuscle,
    aliasName: 'muscle__id__exercise_muscle__muscle_id',
  );

  $$ExerciseMuscleTableProcessedTableManager get exerciseMuscleRefs {
    final manager = $$ExerciseMuscleTableTableManager(
      $_db,
      $_db.exerciseMuscle,
    ).filter((f) => f.muscleId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_exerciseMuscleRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$MuscleTableFilterComposer
    extends Composer<_$AppDatabase, $MuscleTable> {
  $$MuscleTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get muscleGroup => $composableBuilder(
    column: $table.muscleGroup,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> exerciseMuscleRefs(
    Expression<bool> Function($$ExerciseMuscleTableFilterComposer f) f,
  ) {
    final $$ExerciseMuscleTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseMuscle,
      getReferencedColumn: (t) => t.muscleId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseMuscleTableFilterComposer(
            $db: $db,
            $table: $db.exerciseMuscle,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MuscleTableOrderingComposer
    extends Composer<_$AppDatabase, $MuscleTable> {
  $$MuscleTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get muscleGroup => $composableBuilder(
    column: $table.muscleGroup,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MuscleTableAnnotationComposer
    extends Composer<_$AppDatabase, $MuscleTable> {
  $$MuscleTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get muscleGroup => $composableBuilder(
    column: $table.muscleGroup,
    builder: (column) => column,
  );

  Expression<T> exerciseMuscleRefs<T extends Object>(
    Expression<T> Function($$ExerciseMuscleTableAnnotationComposer a) f,
  ) {
    final $$ExerciseMuscleTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseMuscle,
      getReferencedColumn: (t) => t.muscleId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseMuscleTableAnnotationComposer(
            $db: $db,
            $table: $db.exerciseMuscle,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MuscleTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MuscleTable,
          MuscleData,
          $$MuscleTableFilterComposer,
          $$MuscleTableOrderingComposer,
          $$MuscleTableAnnotationComposer,
          $$MuscleTableCreateCompanionBuilder,
          $$MuscleTableUpdateCompanionBuilder,
          (MuscleData, $$MuscleTableReferences),
          MuscleData,
          PrefetchHooks Function({bool exerciseMuscleRefs})
        > {
  $$MuscleTableTableManager(_$AppDatabase db, $MuscleTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MuscleTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MuscleTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MuscleTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> muscleGroup = const Value.absent(),
          }) => MuscleCompanion(id: id, name: name, muscleGroup: muscleGroup),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> muscleGroup = const Value.absent(),
              }) => MuscleCompanion.insert(
                id: id,
                name: name,
                muscleGroup: muscleGroup,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$MuscleTable, MuscleData>(table),
                  $$MuscleTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({exerciseMuscleRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (exerciseMuscleRefs) db.exerciseMuscle,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (exerciseMuscleRefs)
                    await $_getPrefetchedDataByColumns<
                      MuscleData,
                      $MuscleTable,
                      ExerciseMuscleData,
                      $ExerciseMuscleTable
                    >(
                      currentTable: table,
                      referencedTable: $$MuscleTableReferences
                          ._exerciseMuscleRefsTable(db),
                      managerFromTypedResult: (p0) => $$MuscleTableReferences(
                        db,
                        table,
                        p0,
                      ).exerciseMuscleRefs,
                      currentColumn: 'id',
                      referencedColumn: 'muscle_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$MuscleTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MuscleTable,
      MuscleData,
      $$MuscleTableFilterComposer,
      $$MuscleTableOrderingComposer,
      $$MuscleTableAnnotationComposer,
      $$MuscleTableCreateCompanionBuilder,
      $$MuscleTableUpdateCompanionBuilder,
      (MuscleData, $$MuscleTableReferences),
      MuscleData,
      PrefetchHooks Function({bool exerciseMuscleRefs})
    >;
typedef $$ExerciseMuscleTableCreateCompanionBuilder =
    ExerciseMuscleCompanion Function({
      required int exerciseId,
      required int muscleId,
      Value<int> rowid,
    });
typedef $$ExerciseMuscleTableUpdateCompanionBuilder =
    ExerciseMuscleCompanion Function({
      Value<int> exerciseId,
      Value<int> muscleId,
      Value<int> rowid,
    });

final class $$ExerciseMuscleTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $ExerciseMuscleTable,
          ExerciseMuscleData
        > {
  $$ExerciseMuscleTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ExerciseTable _exerciseIdTable(_$AppDatabase db) =>
      db.exercise.createAlias('exercise_muscle__exercise_id__exercise__id');

  $$ExerciseTableProcessedTableManager get exerciseId {
    final $_column = $_itemColumn<int>('exercise_id')!;

    final manager = $$ExerciseTableTableManager(
      $_db,
      $_db.exercise,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_exerciseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $MuscleTable _muscleIdTable(_$AppDatabase db) =>
      db.muscle.createAlias('exercise_muscle__muscle_id__muscle__id');

  $$MuscleTableProcessedTableManager get muscleId {
    final $_column = $_itemColumn<int>('muscle_id')!;

    final manager = $$MuscleTableTableManager(
      $_db,
      $_db.muscle,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_muscleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ExerciseMuscleTableFilterComposer
    extends Composer<_$AppDatabase, $ExerciseMuscleTable> {
  $$ExerciseMuscleTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$ExerciseTableFilterComposer get exerciseId {
    final $$ExerciseTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercise,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseTableFilterComposer(
            $db: $db,
            $table: $db.exercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MuscleTableFilterComposer get muscleId {
    final $$MuscleTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.muscleId,
      referencedTable: $db.muscle,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MuscleTableFilterComposer(
            $db: $db,
            $table: $db.muscle,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ExerciseMuscleTableOrderingComposer
    extends Composer<_$AppDatabase, $ExerciseMuscleTable> {
  $$ExerciseMuscleTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$ExerciseTableOrderingComposer get exerciseId {
    final $$ExerciseTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercise,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseTableOrderingComposer(
            $db: $db,
            $table: $db.exercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MuscleTableOrderingComposer get muscleId {
    final $$MuscleTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.muscleId,
      referencedTable: $db.muscle,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MuscleTableOrderingComposer(
            $db: $db,
            $table: $db.muscle,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ExerciseMuscleTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExerciseMuscleTable> {
  $$ExerciseMuscleTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$ExerciseTableAnnotationComposer get exerciseId {
    final $$ExerciseTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercise,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseTableAnnotationComposer(
            $db: $db,
            $table: $db.exercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MuscleTableAnnotationComposer get muscleId {
    final $$MuscleTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.muscleId,
      referencedTable: $db.muscle,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MuscleTableAnnotationComposer(
            $db: $db,
            $table: $db.muscle,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ExerciseMuscleTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExerciseMuscleTable,
          ExerciseMuscleData,
          $$ExerciseMuscleTableFilterComposer,
          $$ExerciseMuscleTableOrderingComposer,
          $$ExerciseMuscleTableAnnotationComposer,
          $$ExerciseMuscleTableCreateCompanionBuilder,
          $$ExerciseMuscleTableUpdateCompanionBuilder,
          (ExerciseMuscleData, $$ExerciseMuscleTableReferences),
          ExerciseMuscleData,
          PrefetchHooks Function({bool exerciseId, bool muscleId})
        > {
  $$ExerciseMuscleTableTableManager(
    _$AppDatabase db,
    $ExerciseMuscleTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExerciseMuscleTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExerciseMuscleTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExerciseMuscleTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> exerciseId = const Value.absent(),
                Value<int> muscleId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ExerciseMuscleCompanion(
                exerciseId: exerciseId,
                muscleId: muscleId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int exerciseId,
                required int muscleId,
                Value<int> rowid = const Value.absent(),
              }) => ExerciseMuscleCompanion.insert(
                exerciseId: exerciseId,
                muscleId: muscleId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ExerciseMuscleTable, ExerciseMuscleData>(table),
                  $$ExerciseMuscleTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({exerciseId = false, muscleId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (exerciseId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.exerciseId,
                        referencedTable: $$ExerciseMuscleTableReferences
                            ._exerciseIdTable(db),
                        referencedColumn: $$ExerciseMuscleTableReferences
                            ._exerciseIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (muscleId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.muscleId,
                        referencedTable: $$ExerciseMuscleTableReferences
                            ._muscleIdTable(db),
                        referencedColumn: $$ExerciseMuscleTableReferences
                            ._muscleIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ExerciseMuscleTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExerciseMuscleTable,
      ExerciseMuscleData,
      $$ExerciseMuscleTableFilterComposer,
      $$ExerciseMuscleTableOrderingComposer,
      $$ExerciseMuscleTableAnnotationComposer,
      $$ExerciseMuscleTableCreateCompanionBuilder,
      $$ExerciseMuscleTableUpdateCompanionBuilder,
      (ExerciseMuscleData, $$ExerciseMuscleTableReferences),
      ExerciseMuscleData,
      PrefetchHooks Function({bool exerciseId, bool muscleId})
    >;
typedef $$WorkoutTableCreateCompanionBuilder = WorkoutCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> description,
});
typedef $$WorkoutTableUpdateCompanionBuilder = WorkoutCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> description,
});

final class $$WorkoutTableReferences
    extends BaseReferences<_$AppDatabase, $WorkoutTable, WorkoutData> {
  $$WorkoutTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$WorkoutLogTable, List<WorkoutLogData>>
  _workoutLogRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.workoutLog,
    aliasName: 'workout__id__workout_log__workout_id',
  );

  $$WorkoutLogTableProcessedTableManager get workoutLogRefs {
    final manager = $$WorkoutLogTableTableManager(
      $_db,
      $_db.workoutLog,
    ).filter((f) => f.workoutId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_workoutLogRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RoutineWorkoutTable, List<RoutineWorkoutData>>
  _routineWorkoutRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.routineWorkout,
    aliasName: 'workout__id__routine_workout__workout_id',
  );

  $$RoutineWorkoutTableProcessedTableManager get routineWorkoutRefs {
    final manager = $$RoutineWorkoutTableTableManager(
      $_db,
      $_db.routineWorkout,
    ).filter((f) => f.workoutId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_routineWorkoutRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$WorkoutExerciseTable, List<WorkoutExerciseData>>
  _workoutExerciseRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.workoutExercise,
    aliasName: 'workout__id__workout_exercise__workout_id',
  );

  $$WorkoutExerciseTableProcessedTableManager get workoutExerciseRefs {
    final manager = $$WorkoutExerciseTableTableManager(
      $_db,
      $_db.workoutExercise,
    ).filter((f) => f.workoutId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _workoutExerciseRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$WorkoutTableFilterComposer
    extends Composer<_$AppDatabase, $WorkoutTable> {
  $$WorkoutTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> workoutLogRefs(
    Expression<bool> Function($$WorkoutLogTableFilterComposer f) f,
  ) {
    final $$WorkoutLogTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.workoutLog,
      getReferencedColumn: (t) => t.workoutId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutLogTableFilterComposer(
            $db: $db,
            $table: $db.workoutLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> routineWorkoutRefs(
    Expression<bool> Function($$RoutineWorkoutTableFilterComposer f) f,
  ) {
    final $$RoutineWorkoutTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.routineWorkout,
      getReferencedColumn: (t) => t.workoutId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutineWorkoutTableFilterComposer(
            $db: $db,
            $table: $db.routineWorkout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> workoutExerciseRefs(
    Expression<bool> Function($$WorkoutExerciseTableFilterComposer f) f,
  ) {
    final $$WorkoutExerciseTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.workoutExercise,
      getReferencedColumn: (t) => t.workoutId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutExerciseTableFilterComposer(
            $db: $db,
            $table: $db.workoutExercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WorkoutTableOrderingComposer
    extends Composer<_$AppDatabase, $WorkoutTable> {
  $$WorkoutTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WorkoutTableAnnotationComposer
    extends Composer<_$AppDatabase, $WorkoutTable> {
  $$WorkoutTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  Expression<T> workoutLogRefs<T extends Object>(
    Expression<T> Function($$WorkoutLogTableAnnotationComposer a) f,
  ) {
    final $$WorkoutLogTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.workoutLog,
      getReferencedColumn: (t) => t.workoutId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutLogTableAnnotationComposer(
            $db: $db,
            $table: $db.workoutLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> routineWorkoutRefs<T extends Object>(
    Expression<T> Function($$RoutineWorkoutTableAnnotationComposer a) f,
  ) {
    final $$RoutineWorkoutTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.routineWorkout,
      getReferencedColumn: (t) => t.workoutId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutineWorkoutTableAnnotationComposer(
            $db: $db,
            $table: $db.routineWorkout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> workoutExerciseRefs<T extends Object>(
    Expression<T> Function($$WorkoutExerciseTableAnnotationComposer a) f,
  ) {
    final $$WorkoutExerciseTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.workoutExercise,
      getReferencedColumn: (t) => t.workoutId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutExerciseTableAnnotationComposer(
            $db: $db,
            $table: $db.workoutExercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WorkoutTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WorkoutTable,
          WorkoutData,
          $$WorkoutTableFilterComposer,
          $$WorkoutTableOrderingComposer,
          $$WorkoutTableAnnotationComposer,
          $$WorkoutTableCreateCompanionBuilder,
          $$WorkoutTableUpdateCompanionBuilder,
          (WorkoutData, $$WorkoutTableReferences),
          WorkoutData,
          PrefetchHooks Function({
            bool workoutLogRefs,
            bool routineWorkoutRefs,
            bool workoutExerciseRefs,
          })
        > {
  $$WorkoutTableTableManager(_$AppDatabase db, $WorkoutTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WorkoutTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WorkoutTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WorkoutTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> description = const Value.absent(),
          }) => WorkoutCompanion(id: id, name: name, description: description),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> description = const Value.absent(),
              }) => WorkoutCompanion.insert(
                id: id,
                name: name,
                description: description,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$WorkoutTable, WorkoutData>(table),
                  $$WorkoutTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                workoutLogRefs = false,
                routineWorkoutRefs = false,
                workoutExerciseRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (workoutLogRefs) db.workoutLog,
                    if (routineWorkoutRefs) db.routineWorkout,
                    if (workoutExerciseRefs) db.workoutExercise,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (workoutLogRefs)
                        await $_getPrefetchedDataByColumns<
                          WorkoutData,
                          $WorkoutTable,
                          WorkoutLogData,
                          $WorkoutLogTable
                        >(
                          currentTable: table,
                          referencedTable: $$WorkoutTableReferences
                              ._workoutLogRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$WorkoutTableReferences(
                                db,
                                table,
                                p0,
                              ).workoutLogRefs,
                          currentColumn: 'id',
                          referencedColumn: 'workout_id',
                          typedResults: items,
                        ),
                      if (routineWorkoutRefs)
                        await $_getPrefetchedDataByColumns<
                          WorkoutData,
                          $WorkoutTable,
                          RoutineWorkoutData,
                          $RoutineWorkoutTable
                        >(
                          currentTable: table,
                          referencedTable: $$WorkoutTableReferences
                              ._routineWorkoutRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$WorkoutTableReferences(
                                db,
                                table,
                                p0,
                              ).routineWorkoutRefs,
                          currentColumn: 'id',
                          referencedColumn: 'workout_id',
                          typedResults: items,
                        ),
                      if (workoutExerciseRefs)
                        await $_getPrefetchedDataByColumns<
                          WorkoutData,
                          $WorkoutTable,
                          WorkoutExerciseData,
                          $WorkoutExerciseTable
                        >(
                          currentTable: table,
                          referencedTable: $$WorkoutTableReferences
                              ._workoutExerciseRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$WorkoutTableReferences(
                                db,
                                table,
                                p0,
                              ).workoutExerciseRefs,
                          currentColumn: 'id',
                          referencedColumn: 'workout_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$WorkoutTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WorkoutTable,
      WorkoutData,
      $$WorkoutTableFilterComposer,
      $$WorkoutTableOrderingComposer,
      $$WorkoutTableAnnotationComposer,
      $$WorkoutTableCreateCompanionBuilder,
      $$WorkoutTableUpdateCompanionBuilder,
      (WorkoutData, $$WorkoutTableReferences),
      WorkoutData,
      PrefetchHooks Function({
        bool workoutLogRefs,
        bool routineWorkoutRefs,
        bool workoutExerciseRefs,
      })
    >;
typedef $$WorkoutLogTableCreateCompanionBuilder = WorkoutLogCompanion Function({
  Value<int> id,
  required DateTime beginningTime,
  Value<DateTime?> endingTime,
  required int workoutId,
});
typedef $$WorkoutLogTableUpdateCompanionBuilder = WorkoutLogCompanion Function({
  Value<int> id,
  Value<DateTime> beginningTime,
  Value<DateTime?> endingTime,
  Value<int> workoutId,
});

final class $$WorkoutLogTableReferences
    extends BaseReferences<_$AppDatabase, $WorkoutLogTable, WorkoutLogData> {
  $$WorkoutLogTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $WorkoutTable _workoutIdTable(_$AppDatabase db) =>
      db.workout.createAlias('workout_log__workout_id__workout__id');

  $$WorkoutTableProcessedTableManager get workoutId {
    final $_column = $_itemColumn<int>('workout_id')!;

    final manager = $$WorkoutTableTableManager(
      $_db,
      $_db.workout,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_workoutIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$ExerciseLogTable, List<ExerciseLogData>>
  _exerciseLogRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.exerciseLog,
    aliasName: 'workout_log__id__exercise_log__workout_log_id',
  );

  $$ExerciseLogTableProcessedTableManager get exerciseLogRefs {
    final manager = $$ExerciseLogTableTableManager(
      $_db,
      $_db.exerciseLog,
    ).filter((f) => f.workoutLogId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_exerciseLogRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$WorkoutLogTableFilterComposer
    extends Composer<_$AppDatabase, $WorkoutLogTable> {
  $$WorkoutLogTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get beginningTime => $composableBuilder(
    column: $table.beginningTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endingTime => $composableBuilder(
    column: $table.endingTime,
    builder: (column) => ColumnFilters(column),
  );

  $$WorkoutTableFilterComposer get workoutId {
    final $$WorkoutTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workout,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTableFilterComposer(
            $db: $db,
            $table: $db.workout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> exerciseLogRefs(
    Expression<bool> Function($$ExerciseLogTableFilterComposer f) f,
  ) {
    final $$ExerciseLogTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseLog,
      getReferencedColumn: (t) => t.workoutLogId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseLogTableFilterComposer(
            $db: $db,
            $table: $db.exerciseLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WorkoutLogTableOrderingComposer
    extends Composer<_$AppDatabase, $WorkoutLogTable> {
  $$WorkoutLogTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get beginningTime => $composableBuilder(
    column: $table.beginningTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endingTime => $composableBuilder(
    column: $table.endingTime,
    builder: (column) => ColumnOrderings(column),
  );

  $$WorkoutTableOrderingComposer get workoutId {
    final $$WorkoutTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workout,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTableOrderingComposer(
            $db: $db,
            $table: $db.workout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WorkoutLogTableAnnotationComposer
    extends Composer<_$AppDatabase, $WorkoutLogTable> {
  $$WorkoutLogTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get beginningTime => $composableBuilder(
    column: $table.beginningTime,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get endingTime => $composableBuilder(
    column: $table.endingTime,
    builder: (column) => column,
  );

  $$WorkoutTableAnnotationComposer get workoutId {
    final $$WorkoutTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workout,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTableAnnotationComposer(
            $db: $db,
            $table: $db.workout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> exerciseLogRefs<T extends Object>(
    Expression<T> Function($$ExerciseLogTableAnnotationComposer a) f,
  ) {
    final $$ExerciseLogTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseLog,
      getReferencedColumn: (t) => t.workoutLogId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseLogTableAnnotationComposer(
            $db: $db,
            $table: $db.exerciseLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WorkoutLogTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WorkoutLogTable,
          WorkoutLogData,
          $$WorkoutLogTableFilterComposer,
          $$WorkoutLogTableOrderingComposer,
          $$WorkoutLogTableAnnotationComposer,
          $$WorkoutLogTableCreateCompanionBuilder,
          $$WorkoutLogTableUpdateCompanionBuilder,
          (WorkoutLogData, $$WorkoutLogTableReferences),
          WorkoutLogData,
          PrefetchHooks Function({bool workoutId, bool exerciseLogRefs})
        > {
  $$WorkoutLogTableTableManager(_$AppDatabase db, $WorkoutLogTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WorkoutLogTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WorkoutLogTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WorkoutLogTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> beginningTime = const Value.absent(),
                Value<DateTime?> endingTime = const Value.absent(),
                Value<int> workoutId = const Value.absent(),
              }) => WorkoutLogCompanion(
                id: id,
                beginningTime: beginningTime,
                endingTime: endingTime,
                workoutId: workoutId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required DateTime beginningTime,
                Value<DateTime?> endingTime = const Value.absent(),
                required int workoutId,
              }) => WorkoutLogCompanion.insert(
                id: id,
                beginningTime: beginningTime,
                endingTime: endingTime,
                workoutId: workoutId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$WorkoutLogTable, WorkoutLogData>(table),
                  $$WorkoutLogTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({workoutId = false, exerciseLogRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (exerciseLogRefs) db.exerciseLog,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (workoutId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.workoutId,
                            referencedTable: $$WorkoutLogTableReferences
                                ._workoutIdTable(db),
                            referencedColumn: $$WorkoutLogTableReferences
                                ._workoutIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (exerciseLogRefs)
                        await $_getPrefetchedDataByColumns<
                          WorkoutLogData,
                          $WorkoutLogTable,
                          ExerciseLogData,
                          $ExerciseLogTable
                        >(
                          currentTable: table,
                          referencedTable: $$WorkoutLogTableReferences
                              ._exerciseLogRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$WorkoutLogTableReferences(
                                db,
                                table,
                                p0,
                              ).exerciseLogRefs,
                          currentColumn: 'id',
                          referencedColumn: 'workout_log_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$WorkoutLogTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WorkoutLogTable,
      WorkoutLogData,
      $$WorkoutLogTableFilterComposer,
      $$WorkoutLogTableOrderingComposer,
      $$WorkoutLogTableAnnotationComposer,
      $$WorkoutLogTableCreateCompanionBuilder,
      $$WorkoutLogTableUpdateCompanionBuilder,
      (WorkoutLogData, $$WorkoutLogTableReferences),
      WorkoutLogData,
      PrefetchHooks Function({bool workoutId, bool exerciseLogRefs})
    >;
typedef $$ExerciseLogTableCreateCompanionBuilder =
    ExerciseLogCompanion Function({
      Value<int> id,
      required int order,
      required DateTime beginningTime,
      Value<DateTime?> endingTime,
      Value<String?> comment,
      required int exerciseId,
      required int workoutLogId,
    });
typedef $$ExerciseLogTableUpdateCompanionBuilder =
    ExerciseLogCompanion Function({
      Value<int> id,
      Value<int> order,
      Value<DateTime> beginningTime,
      Value<DateTime?> endingTime,
      Value<String?> comment,
      Value<int> exerciseId,
      Value<int> workoutLogId,
    });

final class $$ExerciseLogTableReferences
    extends BaseReferences<_$AppDatabase, $ExerciseLogTable, ExerciseLogData> {
  $$ExerciseLogTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ExerciseTable _exerciseIdTable(_$AppDatabase db) =>
      db.exercise.createAlias('exercise_log__exercise_id__exercise__id');

  $$ExerciseTableProcessedTableManager get exerciseId {
    final $_column = $_itemColumn<int>('exercise_id')!;

    final manager = $$ExerciseTableTableManager(
      $_db,
      $_db.exercise,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_exerciseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $WorkoutLogTable _workoutLogIdTable(_$AppDatabase db) => db.workoutLog
      .createAlias('exercise_log__workout_log_id__workout_log__id');

  $$WorkoutLogTableProcessedTableManager get workoutLogId {
    final $_column = $_itemColumn<int>('workout_log_id')!;

    final manager = $$WorkoutLogTableTableManager(
      $_db,
      $_db.workoutLog,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_workoutLogIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$ExerciseSetTable, List<ExerciseSetData>>
  _exerciseSetRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.exerciseSet,
    aliasName: 'exercise_log__id__exercise_set__exercise_log_id',
  );

  $$ExerciseSetTableProcessedTableManager get exerciseSetRefs {
    final manager = $$ExerciseSetTableTableManager(
      $_db,
      $_db.exerciseSet,
    ).filter((f) => f.exerciseLogId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_exerciseSetRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$SelectedSettingTable, List<SelectedSettingData>>
  _selectedSettingRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.selectedSetting,
    aliasName: 'exercise_log__id__selected_setting__exercise_log_id',
  );

  $$SelectedSettingTableProcessedTableManager get selectedSettingRefs {
    final manager = $$SelectedSettingTableTableManager(
      $_db,
      $_db.selectedSetting,
    ).filter((f) => f.exerciseLogId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _selectedSettingRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ExerciseLogTableFilterComposer
    extends Composer<_$AppDatabase, $ExerciseLogTable> {
  $$ExerciseLogTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get order => $composableBuilder(
    column: $table.order,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get beginningTime => $composableBuilder(
    column: $table.beginningTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endingTime => $composableBuilder(
    column: $table.endingTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnFilters(column),
  );

  $$ExerciseTableFilterComposer get exerciseId {
    final $$ExerciseTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercise,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseTableFilterComposer(
            $db: $db,
            $table: $db.exercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$WorkoutLogTableFilterComposer get workoutLogId {
    final $$WorkoutLogTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutLogId,
      referencedTable: $db.workoutLog,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutLogTableFilterComposer(
            $db: $db,
            $table: $db.workoutLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> exerciseSetRefs(
    Expression<bool> Function($$ExerciseSetTableFilterComposer f) f,
  ) {
    final $$ExerciseSetTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseSet,
      getReferencedColumn: (t) => t.exerciseLogId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseSetTableFilterComposer(
            $db: $db,
            $table: $db.exerciseSet,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> selectedSettingRefs(
    Expression<bool> Function($$SelectedSettingTableFilterComposer f) f,
  ) {
    final $$SelectedSettingTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.selectedSetting,
      getReferencedColumn: (t) => t.exerciseLogId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SelectedSettingTableFilterComposer(
            $db: $db,
            $table: $db.selectedSetting,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ExerciseLogTableOrderingComposer
    extends Composer<_$AppDatabase, $ExerciseLogTable> {
  $$ExerciseLogTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get order => $composableBuilder(
    column: $table.order,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get beginningTime => $composableBuilder(
    column: $table.beginningTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endingTime => $composableBuilder(
    column: $table.endingTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnOrderings(column),
  );

  $$ExerciseTableOrderingComposer get exerciseId {
    final $$ExerciseTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercise,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseTableOrderingComposer(
            $db: $db,
            $table: $db.exercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$WorkoutLogTableOrderingComposer get workoutLogId {
    final $$WorkoutLogTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutLogId,
      referencedTable: $db.workoutLog,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutLogTableOrderingComposer(
            $db: $db,
            $table: $db.workoutLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ExerciseLogTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExerciseLogTable> {
  $$ExerciseLogTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get order =>
      $composableBuilder(column: $table.order, builder: (column) => column);

  GeneratedColumn<DateTime> get beginningTime => $composableBuilder(
    column: $table.beginningTime,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get endingTime => $composableBuilder(
    column: $table.endingTime,
    builder: (column) => column,
  );

  GeneratedColumn<String> get comment =>
      $composableBuilder(column: $table.comment, builder: (column) => column);

  $$ExerciseTableAnnotationComposer get exerciseId {
    final $$ExerciseTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercise,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseTableAnnotationComposer(
            $db: $db,
            $table: $db.exercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$WorkoutLogTableAnnotationComposer get workoutLogId {
    final $$WorkoutLogTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutLogId,
      referencedTable: $db.workoutLog,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutLogTableAnnotationComposer(
            $db: $db,
            $table: $db.workoutLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> exerciseSetRefs<T extends Object>(
    Expression<T> Function($$ExerciseSetTableAnnotationComposer a) f,
  ) {
    final $$ExerciseSetTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseSet,
      getReferencedColumn: (t) => t.exerciseLogId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseSetTableAnnotationComposer(
            $db: $db,
            $table: $db.exerciseSet,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> selectedSettingRefs<T extends Object>(
    Expression<T> Function($$SelectedSettingTableAnnotationComposer a) f,
  ) {
    final $$SelectedSettingTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.selectedSetting,
      getReferencedColumn: (t) => t.exerciseLogId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SelectedSettingTableAnnotationComposer(
            $db: $db,
            $table: $db.selectedSetting,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ExerciseLogTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExerciseLogTable,
          ExerciseLogData,
          $$ExerciseLogTableFilterComposer,
          $$ExerciseLogTableOrderingComposer,
          $$ExerciseLogTableAnnotationComposer,
          $$ExerciseLogTableCreateCompanionBuilder,
          $$ExerciseLogTableUpdateCompanionBuilder,
          (ExerciseLogData, $$ExerciseLogTableReferences),
          ExerciseLogData,
          PrefetchHooks Function({
            bool exerciseId,
            bool workoutLogId,
            bool exerciseSetRefs,
            bool selectedSettingRefs,
          })
        > {
  $$ExerciseLogTableTableManager(_$AppDatabase db, $ExerciseLogTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExerciseLogTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExerciseLogTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExerciseLogTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> order = const Value.absent(),
                Value<DateTime> beginningTime = const Value.absent(),
                Value<DateTime?> endingTime = const Value.absent(),
                Value<String?> comment = const Value.absent(),
                Value<int> exerciseId = const Value.absent(),
                Value<int> workoutLogId = const Value.absent(),
              }) => ExerciseLogCompanion(
                id: id,
                order: order,
                beginningTime: beginningTime,
                endingTime: endingTime,
                comment: comment,
                exerciseId: exerciseId,
                workoutLogId: workoutLogId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int order,
                required DateTime beginningTime,
                Value<DateTime?> endingTime = const Value.absent(),
                Value<String?> comment = const Value.absent(),
                required int exerciseId,
                required int workoutLogId,
              }) => ExerciseLogCompanion.insert(
                id: id,
                order: order,
                beginningTime: beginningTime,
                endingTime: endingTime,
                comment: comment,
                exerciseId: exerciseId,
                workoutLogId: workoutLogId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ExerciseLogTable, ExerciseLogData>(table),
                  $$ExerciseLogTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                exerciseId = false,
                workoutLogId = false,
                exerciseSetRefs = false,
                selectedSettingRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (exerciseSetRefs) db.exerciseSet,
                    if (selectedSettingRefs) db.selectedSetting,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (exerciseId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.exerciseId,
                            referencedTable: $$ExerciseLogTableReferences
                                ._exerciseIdTable(db),
                            referencedColumn: $$ExerciseLogTableReferences
                                ._exerciseIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (workoutLogId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.workoutLogId,
                            referencedTable: $$ExerciseLogTableReferences
                                ._workoutLogIdTable(db),
                            referencedColumn: $$ExerciseLogTableReferences
                                ._workoutLogIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (exerciseSetRefs)
                        await $_getPrefetchedDataByColumns<
                          ExerciseLogData,
                          $ExerciseLogTable,
                          ExerciseSetData,
                          $ExerciseSetTable
                        >(
                          currentTable: table,
                          referencedTable: $$ExerciseLogTableReferences
                              ._exerciseSetRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ExerciseLogTableReferences(
                                db,
                                table,
                                p0,
                              ).exerciseSetRefs,
                          currentColumn: 'id',
                          referencedColumn: 'exercise_log_id',
                          typedResults: items,
                        ),
                      if (selectedSettingRefs)
                        await $_getPrefetchedDataByColumns<
                          ExerciseLogData,
                          $ExerciseLogTable,
                          SelectedSettingData,
                          $SelectedSettingTable
                        >(
                          currentTable: table,
                          referencedTable: $$ExerciseLogTableReferences
                              ._selectedSettingRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ExerciseLogTableReferences(
                                db,
                                table,
                                p0,
                              ).selectedSettingRefs,
                          currentColumn: 'id',
                          referencedColumn: 'exercise_log_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ExerciseLogTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExerciseLogTable,
      ExerciseLogData,
      $$ExerciseLogTableFilterComposer,
      $$ExerciseLogTableOrderingComposer,
      $$ExerciseLogTableAnnotationComposer,
      $$ExerciseLogTableCreateCompanionBuilder,
      $$ExerciseLogTableUpdateCompanionBuilder,
      (ExerciseLogData, $$ExerciseLogTableReferences),
      ExerciseLogData,
      PrefetchHooks Function({
        bool exerciseId,
        bool workoutLogId,
        bool exerciseSetRefs,
        bool selectedSettingRefs,
      })
    >;
typedef $$ExerciseSetTableCreateCompanionBuilder =
    ExerciseSetCompanion Function({
      Value<int> id,
      required int setOrder,
      required bool warmup,
      Value<String?> comment,
      required DateTime beginningTime,
      Value<DateTime?> endingTime,
      required int exerciseLogId,
    });
typedef $$ExerciseSetTableUpdateCompanionBuilder =
    ExerciseSetCompanion Function({
      Value<int> id,
      Value<int> setOrder,
      Value<bool> warmup,
      Value<String?> comment,
      Value<DateTime> beginningTime,
      Value<DateTime?> endingTime,
      Value<int> exerciseLogId,
    });

final class $$ExerciseSetTableReferences
    extends BaseReferences<_$AppDatabase, $ExerciseSetTable, ExerciseSetData> {
  $$ExerciseSetTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ExerciseLogTable _exerciseLogIdTable(_$AppDatabase db) => db
      .exerciseLog
      .createAlias('exercise_set__exercise_log_id__exercise_log__id');

  $$ExerciseLogTableProcessedTableManager get exerciseLogId {
    final $_column = $_itemColumn<int>('exercise_log_id')!;

    final manager = $$ExerciseLogTableTableManager(
      $_db,
      $_db.exerciseLog,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_exerciseLogIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$ESEMTable, List<ESEMData>> _esemRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.esem,
    aliasName: 'exercise_set__id__es_em__exercise_set_id',
  );

  $$ESEMTableProcessedTableManager get esemRefs {
    final manager = $$ESEMTableTableManager(
      $_db,
      $_db.esem,
    ).filter((f) => f.exerciseSetId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_esemRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ExerciseSetTableFilterComposer
    extends Composer<_$AppDatabase, $ExerciseSetTable> {
  $$ExerciseSetTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get setOrder => $composableBuilder(
    column: $table.setOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get warmup => $composableBuilder(
    column: $table.warmup,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get beginningTime => $composableBuilder(
    column: $table.beginningTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endingTime => $composableBuilder(
    column: $table.endingTime,
    builder: (column) => ColumnFilters(column),
  );

  $$ExerciseLogTableFilterComposer get exerciseLogId {
    final $$ExerciseLogTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseLogId,
      referencedTable: $db.exerciseLog,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseLogTableFilterComposer(
            $db: $db,
            $table: $db.exerciseLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> esemRefs(
    Expression<bool> Function($$ESEMTableFilterComposer f) f,
  ) {
    final $$ESEMTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.esem,
      getReferencedColumn: (t) => t.exerciseSetId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ESEMTableFilterComposer(
            $db: $db,
            $table: $db.esem,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ExerciseSetTableOrderingComposer
    extends Composer<_$AppDatabase, $ExerciseSetTable> {
  $$ExerciseSetTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get setOrder => $composableBuilder(
    column: $table.setOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get warmup => $composableBuilder(
    column: $table.warmup,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get comment => $composableBuilder(
    column: $table.comment,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get beginningTime => $composableBuilder(
    column: $table.beginningTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endingTime => $composableBuilder(
    column: $table.endingTime,
    builder: (column) => ColumnOrderings(column),
  );

  $$ExerciseLogTableOrderingComposer get exerciseLogId {
    final $$ExerciseLogTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseLogId,
      referencedTable: $db.exerciseLog,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseLogTableOrderingComposer(
            $db: $db,
            $table: $db.exerciseLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ExerciseSetTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExerciseSetTable> {
  $$ExerciseSetTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get setOrder =>
      $composableBuilder(column: $table.setOrder, builder: (column) => column);

  GeneratedColumn<bool> get warmup =>
      $composableBuilder(column: $table.warmup, builder: (column) => column);

  GeneratedColumn<String> get comment =>
      $composableBuilder(column: $table.comment, builder: (column) => column);

  GeneratedColumn<DateTime> get beginningTime => $composableBuilder(
    column: $table.beginningTime,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get endingTime => $composableBuilder(
    column: $table.endingTime,
    builder: (column) => column,
  );

  $$ExerciseLogTableAnnotationComposer get exerciseLogId {
    final $$ExerciseLogTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseLogId,
      referencedTable: $db.exerciseLog,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseLogTableAnnotationComposer(
            $db: $db,
            $table: $db.exerciseLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> esemRefs<T extends Object>(
    Expression<T> Function($$ESEMTableAnnotationComposer a) f,
  ) {
    final $$ESEMTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.esem,
      getReferencedColumn: (t) => t.exerciseSetId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ESEMTableAnnotationComposer(
            $db: $db,
            $table: $db.esem,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ExerciseSetTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExerciseSetTable,
          ExerciseSetData,
          $$ExerciseSetTableFilterComposer,
          $$ExerciseSetTableOrderingComposer,
          $$ExerciseSetTableAnnotationComposer,
          $$ExerciseSetTableCreateCompanionBuilder,
          $$ExerciseSetTableUpdateCompanionBuilder,
          (ExerciseSetData, $$ExerciseSetTableReferences),
          ExerciseSetData,
          PrefetchHooks Function({bool exerciseLogId, bool esemRefs})
        > {
  $$ExerciseSetTableTableManager(_$AppDatabase db, $ExerciseSetTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExerciseSetTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExerciseSetTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExerciseSetTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> setOrder = const Value.absent(),
                Value<bool> warmup = const Value.absent(),
                Value<String?> comment = const Value.absent(),
                Value<DateTime> beginningTime = const Value.absent(),
                Value<DateTime?> endingTime = const Value.absent(),
                Value<int> exerciseLogId = const Value.absent(),
              }) => ExerciseSetCompanion(
                id: id,
                setOrder: setOrder,
                warmup: warmup,
                comment: comment,
                beginningTime: beginningTime,
                endingTime: endingTime,
                exerciseLogId: exerciseLogId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int setOrder,
                required bool warmup,
                Value<String?> comment = const Value.absent(),
                required DateTime beginningTime,
                Value<DateTime?> endingTime = const Value.absent(),
                required int exerciseLogId,
              }) => ExerciseSetCompanion.insert(
                id: id,
                setOrder: setOrder,
                warmup: warmup,
                comment: comment,
                beginningTime: beginningTime,
                endingTime: endingTime,
                exerciseLogId: exerciseLogId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ExerciseSetTable, ExerciseSetData>(table),
                  $$ExerciseSetTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({exerciseLogId = false, esemRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (esemRefs) db.esem],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (exerciseLogId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.exerciseLogId,
                        referencedTable: $$ExerciseSetTableReferences
                            ._exerciseLogIdTable(db),
                        referencedColumn: $$ExerciseSetTableReferences
                            ._exerciseLogIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (esemRefs)
                    await $_getPrefetchedDataByColumns<
                      ExerciseSetData,
                      $ExerciseSetTable,
                      ESEMData,
                      $ESEMTable
                    >(
                      currentTable: table,
                      referencedTable: $$ExerciseSetTableReferences
                          ._esemRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ExerciseSetTableReferences(db, table, p0).esemRefs,
                      currentColumn: 'id',
                      referencedColumn: 'exercise_set_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ExerciseSetTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExerciseSetTable,
      ExerciseSetData,
      $$ExerciseSetTableFilterComposer,
      $$ExerciseSetTableOrderingComposer,
      $$ExerciseSetTableAnnotationComposer,
      $$ExerciseSetTableCreateCompanionBuilder,
      $$ExerciseSetTableUpdateCompanionBuilder,
      (ExerciseSetData, $$ExerciseSetTableReferences),
      ExerciseSetData,
      PrefetchHooks Function({bool exerciseLogId, bool esemRefs})
    >;
typedef $$ESEMTableCreateCompanionBuilder = ESEMCompanion Function({
  required int exerciseMetricId,
  required int exerciseSetId,
  required String value,
  Value<int> rowid,
});
typedef $$ESEMTableUpdateCompanionBuilder = ESEMCompanion Function({
  Value<int> exerciseMetricId,
  Value<int> exerciseSetId,
  Value<String> value,
  Value<int> rowid,
});

final class $$ESEMTableReferences
    extends BaseReferences<_$AppDatabase, $ESEMTable, ESEMData> {
  $$ESEMTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ExerciseMetricTable _exerciseMetricIdTable(_$AppDatabase db) => db
      .exerciseMetric
      .createAlias('es_em__exercise_metric_id__exercise_metric__id');

  $$ExerciseMetricTableProcessedTableManager get exerciseMetricId {
    final $_column = $_itemColumn<int>('exercise_metric_id')!;

    final manager = $$ExerciseMetricTableTableManager(
      $_db,
      $_db.exerciseMetric,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_exerciseMetricIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ExerciseSetTable _exerciseSetIdTable(_$AppDatabase db) =>
      db.exerciseSet.createAlias('es_em__exercise_set_id__exercise_set__id');

  $$ExerciseSetTableProcessedTableManager get exerciseSetId {
    final $_column = $_itemColumn<int>('exercise_set_id')!;

    final manager = $$ExerciseSetTableTableManager(
      $_db,
      $_db.exerciseSet,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_exerciseSetIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ESEMTableFilterComposer extends Composer<_$AppDatabase, $ESEMTable> {
  $$ESEMTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  $$ExerciseMetricTableFilterComposer get exerciseMetricId {
    final $$ExerciseMetricTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseMetricId,
      referencedTable: $db.exerciseMetric,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseMetricTableFilterComposer(
            $db: $db,
            $table: $db.exerciseMetric,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ExerciseSetTableFilterComposer get exerciseSetId {
    final $$ExerciseSetTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseSetId,
      referencedTable: $db.exerciseSet,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseSetTableFilterComposer(
            $db: $db,
            $table: $db.exerciseSet,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ESEMTableOrderingComposer extends Composer<_$AppDatabase, $ESEMTable> {
  $$ESEMTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  $$ExerciseMetricTableOrderingComposer get exerciseMetricId {
    final $$ExerciseMetricTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseMetricId,
      referencedTable: $db.exerciseMetric,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseMetricTableOrderingComposer(
            $db: $db,
            $table: $db.exerciseMetric,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ExerciseSetTableOrderingComposer get exerciseSetId {
    final $$ExerciseSetTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseSetId,
      referencedTable: $db.exerciseSet,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseSetTableOrderingComposer(
            $db: $db,
            $table: $db.exerciseSet,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ESEMTableAnnotationComposer
    extends Composer<_$AppDatabase, $ESEMTable> {
  $$ESEMTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  $$ExerciseMetricTableAnnotationComposer get exerciseMetricId {
    final $$ExerciseMetricTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseMetricId,
      referencedTable: $db.exerciseMetric,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseMetricTableAnnotationComposer(
            $db: $db,
            $table: $db.exerciseMetric,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ExerciseSetTableAnnotationComposer get exerciseSetId {
    final $$ExerciseSetTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseSetId,
      referencedTable: $db.exerciseSet,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseSetTableAnnotationComposer(
            $db: $db,
            $table: $db.exerciseSet,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ESEMTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ESEMTable,
          ESEMData,
          $$ESEMTableFilterComposer,
          $$ESEMTableOrderingComposer,
          $$ESEMTableAnnotationComposer,
          $$ESEMTableCreateCompanionBuilder,
          $$ESEMTableUpdateCompanionBuilder,
          (ESEMData, $$ESEMTableReferences),
          ESEMData,
          PrefetchHooks Function({bool exerciseMetricId, bool exerciseSetId})
        > {
  $$ESEMTableTableManager(_$AppDatabase db, $ESEMTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ESEMTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ESEMTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ESEMTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> exerciseMetricId = const Value.absent(),
                Value<int> exerciseSetId = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ESEMCompanion(
                exerciseMetricId: exerciseMetricId,
                exerciseSetId: exerciseSetId,
                value: value,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int exerciseMetricId,
                required int exerciseSetId,
                required String value,
                Value<int> rowid = const Value.absent(),
              }) => ESEMCompanion.insert(
                exerciseMetricId: exerciseMetricId,
                exerciseSetId: exerciseSetId,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ESEMTable, ESEMData>(table),
                  $$ESEMTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({exerciseMetricId = false, exerciseSetId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (exerciseMetricId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.exerciseMetricId,
                            referencedTable: $$ESEMTableReferences
                                ._exerciseMetricIdTable(db),
                            referencedColumn: $$ESEMTableReferences
                                ._exerciseMetricIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (exerciseSetId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.exerciseSetId,
                            referencedTable: $$ESEMTableReferences
                                ._exerciseSetIdTable(db),
                            referencedColumn: $$ESEMTableReferences
                                ._exerciseSetIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$ESEMTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ESEMTable,
      ESEMData,
      $$ESEMTableFilterComposer,
      $$ESEMTableOrderingComposer,
      $$ESEMTableAnnotationComposer,
      $$ESEMTableCreateCompanionBuilder,
      $$ESEMTableUpdateCompanionBuilder,
      (ESEMData, $$ESEMTableReferences),
      ESEMData,
      PrefetchHooks Function({bool exerciseMetricId, bool exerciseSetId})
    >;
typedef $$MachineTableCreateCompanionBuilder = MachineCompanion Function({
  Value<int> id,
  required String name,
  required String brand,
  required WeightUnit unit,
});
typedef $$MachineTableUpdateCompanionBuilder = MachineCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> brand,
  Value<WeightUnit> unit,
});

final class $$MachineTableReferences
    extends BaseReferences<_$AppDatabase, $MachineTable, MachineData> {
  $$MachineTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$MachineSettingTable, List<MachineSettingData>>
  _machineSettingRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.machineSetting,
    aliasName: 'machine__id__machine_setting__machine_id',
  );

  $$MachineSettingTableProcessedTableManager get machineSettingRefs {
    final manager = $$MachineSettingTableTableManager(
      $_db,
      $_db.machineSetting,
    ).filter((f) => f.machineId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_machineSettingRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$MachineTableFilterComposer
    extends Composer<_$AppDatabase, $MachineTable> {
  $$MachineTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<WeightUnit, WeightUnit, int> get unit =>
      $composableBuilder(
        column: $table.unit,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  Expression<bool> machineSettingRefs(
    Expression<bool> Function($$MachineSettingTableFilterComposer f) f,
  ) {
    final $$MachineSettingTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.machineSetting,
      getReferencedColumn: (t) => t.machineId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MachineSettingTableFilterComposer(
            $db: $db,
            $table: $db.machineSetting,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MachineTableOrderingComposer
    extends Composer<_$AppDatabase, $MachineTable> {
  $$MachineTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MachineTableAnnotationComposer
    extends Composer<_$AppDatabase, $MachineTable> {
  $$MachineTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get brand =>
      $composableBuilder(column: $table.brand, builder: (column) => column);

  GeneratedColumnWithTypeConverter<WeightUnit, int> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  Expression<T> machineSettingRefs<T extends Object>(
    Expression<T> Function($$MachineSettingTableAnnotationComposer a) f,
  ) {
    final $$MachineSettingTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.machineSetting,
      getReferencedColumn: (t) => t.machineId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MachineSettingTableAnnotationComposer(
            $db: $db,
            $table: $db.machineSetting,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MachineTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MachineTable,
          MachineData,
          $$MachineTableFilterComposer,
          $$MachineTableOrderingComposer,
          $$MachineTableAnnotationComposer,
          $$MachineTableCreateCompanionBuilder,
          $$MachineTableUpdateCompanionBuilder,
          (MachineData, $$MachineTableReferences),
          MachineData,
          PrefetchHooks Function({bool machineSettingRefs})
        > {
  $$MachineTableTableManager(_$AppDatabase db, $MachineTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MachineTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MachineTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MachineTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> brand = const Value.absent(),
            Value<WeightUnit> unit = const Value.absent(),
          }) => MachineCompanion(id: id, name: name, brand: brand, unit: unit),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String brand,
                required WeightUnit unit,
              }) => MachineCompanion.insert(
                id: id,
                name: name,
                brand: brand,
                unit: unit,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$MachineTable, MachineData>(table),
                  $$MachineTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({machineSettingRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (machineSettingRefs) db.machineSetting,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (machineSettingRefs)
                    await $_getPrefetchedDataByColumns<
                      MachineData,
                      $MachineTable,
                      MachineSettingData,
                      $MachineSettingTable
                    >(
                      currentTable: table,
                      referencedTable: $$MachineTableReferences
                          ._machineSettingRefsTable(db),
                      managerFromTypedResult: (p0) => $$MachineTableReferences(
                        db,
                        table,
                        p0,
                      ).machineSettingRefs,
                      currentColumn: 'id',
                      referencedColumn: 'machine_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$MachineTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MachineTable,
      MachineData,
      $$MachineTableFilterComposer,
      $$MachineTableOrderingComposer,
      $$MachineTableAnnotationComposer,
      $$MachineTableCreateCompanionBuilder,
      $$MachineTableUpdateCompanionBuilder,
      (MachineData, $$MachineTableReferences),
      MachineData,
      PrefetchHooks Function({bool machineSettingRefs})
    >;
typedef $$MachineSettingTableCreateCompanionBuilder =
    MachineSettingCompanion Function({
      Value<int> id,
      required String label,
      required double minPosition,
      required double maxPosition,
      required int step,
      required int machineId,
    });
typedef $$MachineSettingTableUpdateCompanionBuilder =
    MachineSettingCompanion Function({
      Value<int> id,
      Value<String> label,
      Value<double> minPosition,
      Value<double> maxPosition,
      Value<int> step,
      Value<int> machineId,
    });

final class $$MachineSettingTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $MachineSettingTable,
          MachineSettingData
        > {
  $$MachineSettingTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $MachineTable _machineIdTable(_$AppDatabase db) =>
      db.machine.createAlias('machine_setting__machine_id__machine__id');

  $$MachineTableProcessedTableManager get machineId {
    final $_column = $_itemColumn<int>('machine_id')!;

    final manager = $$MachineTableTableManager(
      $_db,
      $_db.machine,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_machineIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$SelectedSettingTable, List<SelectedSettingData>>
  _selectedSettingRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.selectedSetting,
    aliasName: 'machine_setting__id__selected_setting__machine_setting_id',
  );

  $$SelectedSettingTableProcessedTableManager get selectedSettingRefs {
    final manager = $$SelectedSettingTableTableManager(
      $_db,
      $_db.selectedSetting,
    ).filter((f) => f.machineSettingId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _selectedSettingRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$MachineSettingTableFilterComposer
    extends Composer<_$AppDatabase, $MachineSettingTable> {
  $$MachineSettingTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get minPosition => $composableBuilder(
    column: $table.minPosition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get maxPosition => $composableBuilder(
    column: $table.maxPosition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get step => $composableBuilder(
    column: $table.step,
    builder: (column) => ColumnFilters(column),
  );

  $$MachineTableFilterComposer get machineId {
    final $$MachineTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.machineId,
      referencedTable: $db.machine,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MachineTableFilterComposer(
            $db: $db,
            $table: $db.machine,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> selectedSettingRefs(
    Expression<bool> Function($$SelectedSettingTableFilterComposer f) f,
  ) {
    final $$SelectedSettingTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.selectedSetting,
      getReferencedColumn: (t) => t.machineSettingId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SelectedSettingTableFilterComposer(
            $db: $db,
            $table: $db.selectedSetting,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MachineSettingTableOrderingComposer
    extends Composer<_$AppDatabase, $MachineSettingTable> {
  $$MachineSettingTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get minPosition => $composableBuilder(
    column: $table.minPosition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get maxPosition => $composableBuilder(
    column: $table.maxPosition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get step => $composableBuilder(
    column: $table.step,
    builder: (column) => ColumnOrderings(column),
  );

  $$MachineTableOrderingComposer get machineId {
    final $$MachineTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.machineId,
      referencedTable: $db.machine,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MachineTableOrderingComposer(
            $db: $db,
            $table: $db.machine,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MachineSettingTableAnnotationComposer
    extends Composer<_$AppDatabase, $MachineSettingTable> {
  $$MachineSettingTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<double> get minPosition => $composableBuilder(
    column: $table.minPosition,
    builder: (column) => column,
  );

  GeneratedColumn<double> get maxPosition => $composableBuilder(
    column: $table.maxPosition,
    builder: (column) => column,
  );

  GeneratedColumn<int> get step =>
      $composableBuilder(column: $table.step, builder: (column) => column);

  $$MachineTableAnnotationComposer get machineId {
    final $$MachineTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.machineId,
      referencedTable: $db.machine,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MachineTableAnnotationComposer(
            $db: $db,
            $table: $db.machine,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> selectedSettingRefs<T extends Object>(
    Expression<T> Function($$SelectedSettingTableAnnotationComposer a) f,
  ) {
    final $$SelectedSettingTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.selectedSetting,
      getReferencedColumn: (t) => t.machineSettingId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SelectedSettingTableAnnotationComposer(
            $db: $db,
            $table: $db.selectedSetting,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MachineSettingTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MachineSettingTable,
          MachineSettingData,
          $$MachineSettingTableFilterComposer,
          $$MachineSettingTableOrderingComposer,
          $$MachineSettingTableAnnotationComposer,
          $$MachineSettingTableCreateCompanionBuilder,
          $$MachineSettingTableUpdateCompanionBuilder,
          (MachineSettingData, $$MachineSettingTableReferences),
          MachineSettingData,
          PrefetchHooks Function({bool machineId, bool selectedSettingRefs})
        > {
  $$MachineSettingTableTableManager(
    _$AppDatabase db,
    $MachineSettingTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MachineSettingTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MachineSettingTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MachineSettingTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> label = const Value.absent(),
                Value<double> minPosition = const Value.absent(),
                Value<double> maxPosition = const Value.absent(),
                Value<int> step = const Value.absent(),
                Value<int> machineId = const Value.absent(),
              }) => MachineSettingCompanion(
                id: id,
                label: label,
                minPosition: minPosition,
                maxPosition: maxPosition,
                step: step,
                machineId: machineId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String label,
                required double minPosition,
                required double maxPosition,
                required int step,
                required int machineId,
              }) => MachineSettingCompanion.insert(
                id: id,
                label: label,
                minPosition: minPosition,
                maxPosition: maxPosition,
                step: step,
                machineId: machineId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$MachineSettingTable, MachineSettingData>(table),
                  $$MachineSettingTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({machineId = false, selectedSettingRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (selectedSettingRefs) db.selectedSetting,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (machineId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.machineId,
                            referencedTable: $$MachineSettingTableReferences
                                ._machineIdTable(db),
                            referencedColumn: $$MachineSettingTableReferences
                                ._machineIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (selectedSettingRefs)
                        await $_getPrefetchedDataByColumns<
                          MachineSettingData,
                          $MachineSettingTable,
                          SelectedSettingData,
                          $SelectedSettingTable
                        >(
                          currentTable: table,
                          referencedTable: $$MachineSettingTableReferences
                              ._selectedSettingRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$MachineSettingTableReferences(
                                db,
                                table,
                                p0,
                              ).selectedSettingRefs,
                          currentColumn: 'id',
                          referencedColumn: 'machine_setting_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$MachineSettingTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MachineSettingTable,
      MachineSettingData,
      $$MachineSettingTableFilterComposer,
      $$MachineSettingTableOrderingComposer,
      $$MachineSettingTableAnnotationComposer,
      $$MachineSettingTableCreateCompanionBuilder,
      $$MachineSettingTableUpdateCompanionBuilder,
      (MachineSettingData, $$MachineSettingTableReferences),
      MachineSettingData,
      PrefetchHooks Function({bool machineId, bool selectedSettingRefs})
    >;
typedef $$SelectedSettingTableCreateCompanionBuilder =
    SelectedSettingCompanion Function({
      required int exerciseLogId,
      required int machineSettingId,
      required int selectedPosition,
      Value<int> rowid,
    });
typedef $$SelectedSettingTableUpdateCompanionBuilder =
    SelectedSettingCompanion Function({
      Value<int> exerciseLogId,
      Value<int> machineSettingId,
      Value<int> selectedPosition,
      Value<int> rowid,
    });

final class $$SelectedSettingTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $SelectedSettingTable,
          SelectedSettingData
        > {
  $$SelectedSettingTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ExerciseLogTable _exerciseLogIdTable(_$AppDatabase db) => db
      .exerciseLog
      .createAlias('selected_setting__exercise_log_id__exercise_log__id');

  $$ExerciseLogTableProcessedTableManager get exerciseLogId {
    final $_column = $_itemColumn<int>('exercise_log_id')!;

    final manager = $$ExerciseLogTableTableManager(
      $_db,
      $_db.exerciseLog,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_exerciseLogIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $MachineSettingTable _machineSettingIdTable(_$AppDatabase db) => db
      .machineSetting
      .createAlias('selected_setting__machine_setting_id__machine_setting__id');

  $$MachineSettingTableProcessedTableManager get machineSettingId {
    final $_column = $_itemColumn<int>('machine_setting_id')!;

    final manager = $$MachineSettingTableTableManager(
      $_db,
      $_db.machineSetting,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_machineSettingIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SelectedSettingTableFilterComposer
    extends Composer<_$AppDatabase, $SelectedSettingTable> {
  $$SelectedSettingTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get selectedPosition => $composableBuilder(
    column: $table.selectedPosition,
    builder: (column) => ColumnFilters(column),
  );

  $$ExerciseLogTableFilterComposer get exerciseLogId {
    final $$ExerciseLogTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseLogId,
      referencedTable: $db.exerciseLog,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseLogTableFilterComposer(
            $db: $db,
            $table: $db.exerciseLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MachineSettingTableFilterComposer get machineSettingId {
    final $$MachineSettingTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.machineSettingId,
      referencedTable: $db.machineSetting,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MachineSettingTableFilterComposer(
            $db: $db,
            $table: $db.machineSetting,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SelectedSettingTableOrderingComposer
    extends Composer<_$AppDatabase, $SelectedSettingTable> {
  $$SelectedSettingTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get selectedPosition => $composableBuilder(
    column: $table.selectedPosition,
    builder: (column) => ColumnOrderings(column),
  );

  $$ExerciseLogTableOrderingComposer get exerciseLogId {
    final $$ExerciseLogTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseLogId,
      referencedTable: $db.exerciseLog,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseLogTableOrderingComposer(
            $db: $db,
            $table: $db.exerciseLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MachineSettingTableOrderingComposer get machineSettingId {
    final $$MachineSettingTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.machineSettingId,
      referencedTable: $db.machineSetting,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MachineSettingTableOrderingComposer(
            $db: $db,
            $table: $db.machineSetting,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SelectedSettingTableAnnotationComposer
    extends Composer<_$AppDatabase, $SelectedSettingTable> {
  $$SelectedSettingTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get selectedPosition => $composableBuilder(
    column: $table.selectedPosition,
    builder: (column) => column,
  );

  $$ExerciseLogTableAnnotationComposer get exerciseLogId {
    final $$ExerciseLogTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseLogId,
      referencedTable: $db.exerciseLog,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseLogTableAnnotationComposer(
            $db: $db,
            $table: $db.exerciseLog,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MachineSettingTableAnnotationComposer get machineSettingId {
    final $$MachineSettingTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.machineSettingId,
      referencedTable: $db.machineSetting,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MachineSettingTableAnnotationComposer(
            $db: $db,
            $table: $db.machineSetting,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SelectedSettingTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SelectedSettingTable,
          SelectedSettingData,
          $$SelectedSettingTableFilterComposer,
          $$SelectedSettingTableOrderingComposer,
          $$SelectedSettingTableAnnotationComposer,
          $$SelectedSettingTableCreateCompanionBuilder,
          $$SelectedSettingTableUpdateCompanionBuilder,
          (SelectedSettingData, $$SelectedSettingTableReferences),
          SelectedSettingData,
          PrefetchHooks Function({bool exerciseLogId, bool machineSettingId})
        > {
  $$SelectedSettingTableTableManager(
    _$AppDatabase db,
    $SelectedSettingTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SelectedSettingTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SelectedSettingTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SelectedSettingTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> exerciseLogId = const Value.absent(),
                Value<int> machineSettingId = const Value.absent(),
                Value<int> selectedPosition = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SelectedSettingCompanion(
                exerciseLogId: exerciseLogId,
                machineSettingId: machineSettingId,
                selectedPosition: selectedPosition,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int exerciseLogId,
                required int machineSettingId,
                required int selectedPosition,
                Value<int> rowid = const Value.absent(),
              }) => SelectedSettingCompanion.insert(
                exerciseLogId: exerciseLogId,
                machineSettingId: machineSettingId,
                selectedPosition: selectedPosition,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SelectedSettingTable, SelectedSettingData>(
                    table,
                  ),
                  $$SelectedSettingTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({exerciseLogId = false, machineSettingId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (exerciseLogId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.exerciseLogId,
                            referencedTable: $$SelectedSettingTableReferences
                                ._exerciseLogIdTable(db),
                            referencedColumn: $$SelectedSettingTableReferences
                                ._exerciseLogIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (machineSettingId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.machineSettingId,
                            referencedTable: $$SelectedSettingTableReferences
                                ._machineSettingIdTable(db),
                            referencedColumn: $$SelectedSettingTableReferences
                                ._machineSettingIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$SelectedSettingTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SelectedSettingTable,
      SelectedSettingData,
      $$SelectedSettingTableFilterComposer,
      $$SelectedSettingTableOrderingComposer,
      $$SelectedSettingTableAnnotationComposer,
      $$SelectedSettingTableCreateCompanionBuilder,
      $$SelectedSettingTableUpdateCompanionBuilder,
      (SelectedSettingData, $$SelectedSettingTableReferences),
      SelectedSettingData,
      PrefetchHooks Function({bool exerciseLogId, bool machineSettingId})
    >;
typedef $$RoutineTableCreateCompanionBuilder = RoutineCompanion Function({
  Value<int> id,
  required String name,
});
typedef $$RoutineTableUpdateCompanionBuilder = RoutineCompanion Function({
  Value<int> id,
  Value<String> name,
});

final class $$RoutineTableReferences
    extends BaseReferences<_$AppDatabase, $RoutineTable, RoutineData> {
  $$RoutineTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RoutinePeriodTable, List<RoutinePeriodData>>
  _routinePeriodRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.routinePeriod,
    aliasName: 'routine__id__routine_period__routine_id',
  );

  $$RoutinePeriodTableProcessedTableManager get routinePeriodRefs {
    final manager = $$RoutinePeriodTableTableManager(
      $_db,
      $_db.routinePeriod,
    ).filter((f) => f.routineId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_routinePeriodRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RoutineWorkoutTable, List<RoutineWorkoutData>>
  _routineWorkoutRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.routineWorkout,
    aliasName: 'routine__id__routine_workout__routine_id',
  );

  $$RoutineWorkoutTableProcessedTableManager get routineWorkoutRefs {
    final manager = $$RoutineWorkoutTableTableManager(
      $_db,
      $_db.routineWorkout,
    ).filter((f) => f.routineId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_routineWorkoutRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$RoutineTableFilterComposer
    extends Composer<_$AppDatabase, $RoutineTable> {
  $$RoutineTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> routinePeriodRefs(
    Expression<bool> Function($$RoutinePeriodTableFilterComposer f) f,
  ) {
    final $$RoutinePeriodTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.routinePeriod,
      getReferencedColumn: (t) => t.routineId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutinePeriodTableFilterComposer(
            $db: $db,
            $table: $db.routinePeriod,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> routineWorkoutRefs(
    Expression<bool> Function($$RoutineWorkoutTableFilterComposer f) f,
  ) {
    final $$RoutineWorkoutTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.routineWorkout,
      getReferencedColumn: (t) => t.routineId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutineWorkoutTableFilterComposer(
            $db: $db,
            $table: $db.routineWorkout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RoutineTableOrderingComposer
    extends Composer<_$AppDatabase, $RoutineTable> {
  $$RoutineTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RoutineTableAnnotationComposer
    extends Composer<_$AppDatabase, $RoutineTable> {
  $$RoutineTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> routinePeriodRefs<T extends Object>(
    Expression<T> Function($$RoutinePeriodTableAnnotationComposer a) f,
  ) {
    final $$RoutinePeriodTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.routinePeriod,
      getReferencedColumn: (t) => t.routineId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutinePeriodTableAnnotationComposer(
            $db: $db,
            $table: $db.routinePeriod,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> routineWorkoutRefs<T extends Object>(
    Expression<T> Function($$RoutineWorkoutTableAnnotationComposer a) f,
  ) {
    final $$RoutineWorkoutTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.routineWorkout,
      getReferencedColumn: (t) => t.routineId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutineWorkoutTableAnnotationComposer(
            $db: $db,
            $table: $db.routineWorkout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RoutineTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RoutineTable,
          RoutineData,
          $$RoutineTableFilterComposer,
          $$RoutineTableOrderingComposer,
          $$RoutineTableAnnotationComposer,
          $$RoutineTableCreateCompanionBuilder,
          $$RoutineTableUpdateCompanionBuilder,
          (RoutineData, $$RoutineTableReferences),
          RoutineData,
          PrefetchHooks Function({
            bool routinePeriodRefs,
            bool routineWorkoutRefs,
          })
        > {
  $$RoutineTableTableManager(_$AppDatabase db, $RoutineTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RoutineTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RoutineTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RoutineTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) => RoutineCompanion(id: id, name: name),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) => RoutineCompanion.insert(id: id, name: name),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$RoutineTable, RoutineData>(table),
                  $$RoutineTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({routinePeriodRefs = false, routineWorkoutRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (routinePeriodRefs) db.routinePeriod,
                    if (routineWorkoutRefs) db.routineWorkout,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (routinePeriodRefs)
                        await $_getPrefetchedDataByColumns<
                          RoutineData,
                          $RoutineTable,
                          RoutinePeriodData,
                          $RoutinePeriodTable
                        >(
                          currentTable: table,
                          referencedTable: $$RoutineTableReferences
                              ._routinePeriodRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RoutineTableReferences(
                                db,
                                table,
                                p0,
                              ).routinePeriodRefs,
                          currentColumn: 'id',
                          referencedColumn: 'routine_id',
                          typedResults: items,
                        ),
                      if (routineWorkoutRefs)
                        await $_getPrefetchedDataByColumns<
                          RoutineData,
                          $RoutineTable,
                          RoutineWorkoutData,
                          $RoutineWorkoutTable
                        >(
                          currentTable: table,
                          referencedTable: $$RoutineTableReferences
                              ._routineWorkoutRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RoutineTableReferences(
                                db,
                                table,
                                p0,
                              ).routineWorkoutRefs,
                          currentColumn: 'id',
                          referencedColumn: 'routine_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$RoutineTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RoutineTable,
      RoutineData,
      $$RoutineTableFilterComposer,
      $$RoutineTableOrderingComposer,
      $$RoutineTableAnnotationComposer,
      $$RoutineTableCreateCompanionBuilder,
      $$RoutineTableUpdateCompanionBuilder,
      (RoutineData, $$RoutineTableReferences),
      RoutineData,
      PrefetchHooks Function({bool routinePeriodRefs, bool routineWorkoutRefs})
    >;
typedef $$RoutinePeriodTableCreateCompanionBuilder =
    RoutinePeriodCompanion Function({
      Value<int> id,
      required DateTime beginningDate,
      Value<DateTime?> endingDate,
      required int routineId,
    });
typedef $$RoutinePeriodTableUpdateCompanionBuilder =
    RoutinePeriodCompanion Function({
      Value<int> id,
      Value<DateTime> beginningDate,
      Value<DateTime?> endingDate,
      Value<int> routineId,
    });

final class $$RoutinePeriodTableReferences
    extends
        BaseReferences<_$AppDatabase, $RoutinePeriodTable, RoutinePeriodData> {
  $$RoutinePeriodTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $RoutineTable _routineIdTable(_$AppDatabase db) =>
      db.routine.createAlias('routine_period__routine_id__routine__id');

  $$RoutineTableProcessedTableManager get routineId {
    final $_column = $_itemColumn<int>('routine_id')!;

    final manager = $$RoutineTableTableManager(
      $_db,
      $_db.routine,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_routineIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RoutinePeriodTableFilterComposer
    extends Composer<_$AppDatabase, $RoutinePeriodTable> {
  $$RoutinePeriodTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get beginningDate => $composableBuilder(
    column: $table.beginningDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endingDate => $composableBuilder(
    column: $table.endingDate,
    builder: (column) => ColumnFilters(column),
  );

  $$RoutineTableFilterComposer get routineId {
    final $$RoutineTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.routineId,
      referencedTable: $db.routine,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutineTableFilterComposer(
            $db: $db,
            $table: $db.routine,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RoutinePeriodTableOrderingComposer
    extends Composer<_$AppDatabase, $RoutinePeriodTable> {
  $$RoutinePeriodTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get beginningDate => $composableBuilder(
    column: $table.beginningDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endingDate => $composableBuilder(
    column: $table.endingDate,
    builder: (column) => ColumnOrderings(column),
  );

  $$RoutineTableOrderingComposer get routineId {
    final $$RoutineTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.routineId,
      referencedTable: $db.routine,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutineTableOrderingComposer(
            $db: $db,
            $table: $db.routine,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RoutinePeriodTableAnnotationComposer
    extends Composer<_$AppDatabase, $RoutinePeriodTable> {
  $$RoutinePeriodTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get beginningDate => $composableBuilder(
    column: $table.beginningDate,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get endingDate => $composableBuilder(
    column: $table.endingDate,
    builder: (column) => column,
  );

  $$RoutineTableAnnotationComposer get routineId {
    final $$RoutineTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.routineId,
      referencedTable: $db.routine,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutineTableAnnotationComposer(
            $db: $db,
            $table: $db.routine,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RoutinePeriodTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RoutinePeriodTable,
          RoutinePeriodData,
          $$RoutinePeriodTableFilterComposer,
          $$RoutinePeriodTableOrderingComposer,
          $$RoutinePeriodTableAnnotationComposer,
          $$RoutinePeriodTableCreateCompanionBuilder,
          $$RoutinePeriodTableUpdateCompanionBuilder,
          (RoutinePeriodData, $$RoutinePeriodTableReferences),
          RoutinePeriodData,
          PrefetchHooks Function({bool routineId})
        > {
  $$RoutinePeriodTableTableManager(_$AppDatabase db, $RoutinePeriodTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RoutinePeriodTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RoutinePeriodTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RoutinePeriodTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> beginningDate = const Value.absent(),
                Value<DateTime?> endingDate = const Value.absent(),
                Value<int> routineId = const Value.absent(),
              }) => RoutinePeriodCompanion(
                id: id,
                beginningDate: beginningDate,
                endingDate: endingDate,
                routineId: routineId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required DateTime beginningDate,
                Value<DateTime?> endingDate = const Value.absent(),
                required int routineId,
              }) => RoutinePeriodCompanion.insert(
                id: id,
                beginningDate: beginningDate,
                endingDate: endingDate,
                routineId: routineId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$RoutinePeriodTable, RoutinePeriodData>(table),
                  $$RoutinePeriodTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({routineId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (routineId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.routineId,
                        referencedTable: $$RoutinePeriodTableReferences
                            ._routineIdTable(db),
                        referencedColumn: $$RoutinePeriodTableReferences
                            ._routineIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RoutinePeriodTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RoutinePeriodTable,
      RoutinePeriodData,
      $$RoutinePeriodTableFilterComposer,
      $$RoutinePeriodTableOrderingComposer,
      $$RoutinePeriodTableAnnotationComposer,
      $$RoutinePeriodTableCreateCompanionBuilder,
      $$RoutinePeriodTableUpdateCompanionBuilder,
      (RoutinePeriodData, $$RoutinePeriodTableReferences),
      RoutinePeriodData,
      PrefetchHooks Function({bool routineId})
    >;
typedef $$RoutineWorkoutTableCreateCompanionBuilder =
    RoutineWorkoutCompanion Function({
      Value<int> id,
      required int plannedWorkoutOrder,
      required int routineId,
      required int workoutId,
    });
typedef $$RoutineWorkoutTableUpdateCompanionBuilder =
    RoutineWorkoutCompanion Function({
      Value<int> id,
      Value<int> plannedWorkoutOrder,
      Value<int> routineId,
      Value<int> workoutId,
    });

final class $$RoutineWorkoutTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $RoutineWorkoutTable,
          RoutineWorkoutData
        > {
  $$RoutineWorkoutTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $RoutineTable _routineIdTable(_$AppDatabase db) =>
      db.routine.createAlias('routine_workout__routine_id__routine__id');

  $$RoutineTableProcessedTableManager get routineId {
    final $_column = $_itemColumn<int>('routine_id')!;

    final manager = $$RoutineTableTableManager(
      $_db,
      $_db.routine,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_routineIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $WorkoutTable _workoutIdTable(_$AppDatabase db) =>
      db.workout.createAlias('routine_workout__workout_id__workout__id');

  $$WorkoutTableProcessedTableManager get workoutId {
    final $_column = $_itemColumn<int>('workout_id')!;

    final manager = $$WorkoutTableTableManager(
      $_db,
      $_db.workout,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_workoutIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RoutineWorkoutTableFilterComposer
    extends Composer<_$AppDatabase, $RoutineWorkoutTable> {
  $$RoutineWorkoutTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get plannedWorkoutOrder => $composableBuilder(
    column: $table.plannedWorkoutOrder,
    builder: (column) => ColumnFilters(column),
  );

  $$RoutineTableFilterComposer get routineId {
    final $$RoutineTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.routineId,
      referencedTable: $db.routine,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutineTableFilterComposer(
            $db: $db,
            $table: $db.routine,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$WorkoutTableFilterComposer get workoutId {
    final $$WorkoutTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workout,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTableFilterComposer(
            $db: $db,
            $table: $db.workout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RoutineWorkoutTableOrderingComposer
    extends Composer<_$AppDatabase, $RoutineWorkoutTable> {
  $$RoutineWorkoutTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get plannedWorkoutOrder => $composableBuilder(
    column: $table.plannedWorkoutOrder,
    builder: (column) => ColumnOrderings(column),
  );

  $$RoutineTableOrderingComposer get routineId {
    final $$RoutineTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.routineId,
      referencedTable: $db.routine,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutineTableOrderingComposer(
            $db: $db,
            $table: $db.routine,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$WorkoutTableOrderingComposer get workoutId {
    final $$WorkoutTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workout,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTableOrderingComposer(
            $db: $db,
            $table: $db.workout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RoutineWorkoutTableAnnotationComposer
    extends Composer<_$AppDatabase, $RoutineWorkoutTable> {
  $$RoutineWorkoutTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get plannedWorkoutOrder => $composableBuilder(
    column: $table.plannedWorkoutOrder,
    builder: (column) => column,
  );

  $$RoutineTableAnnotationComposer get routineId {
    final $$RoutineTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.routineId,
      referencedTable: $db.routine,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RoutineTableAnnotationComposer(
            $db: $db,
            $table: $db.routine,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$WorkoutTableAnnotationComposer get workoutId {
    final $$WorkoutTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workout,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTableAnnotationComposer(
            $db: $db,
            $table: $db.workout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RoutineWorkoutTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RoutineWorkoutTable,
          RoutineWorkoutData,
          $$RoutineWorkoutTableFilterComposer,
          $$RoutineWorkoutTableOrderingComposer,
          $$RoutineWorkoutTableAnnotationComposer,
          $$RoutineWorkoutTableCreateCompanionBuilder,
          $$RoutineWorkoutTableUpdateCompanionBuilder,
          (RoutineWorkoutData, $$RoutineWorkoutTableReferences),
          RoutineWorkoutData,
          PrefetchHooks Function({bool routineId, bool workoutId})
        > {
  $$RoutineWorkoutTableTableManager(
    _$AppDatabase db,
    $RoutineWorkoutTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RoutineWorkoutTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RoutineWorkoutTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RoutineWorkoutTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> plannedWorkoutOrder = const Value.absent(),
                Value<int> routineId = const Value.absent(),
                Value<int> workoutId = const Value.absent(),
              }) => RoutineWorkoutCompanion(
                id: id,
                plannedWorkoutOrder: plannedWorkoutOrder,
                routineId: routineId,
                workoutId: workoutId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int plannedWorkoutOrder,
                required int routineId,
                required int workoutId,
              }) => RoutineWorkoutCompanion.insert(
                id: id,
                plannedWorkoutOrder: plannedWorkoutOrder,
                routineId: routineId,
                workoutId: workoutId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$RoutineWorkoutTable, RoutineWorkoutData>(table),
                  $$RoutineWorkoutTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({routineId = false, workoutId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (routineId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.routineId,
                        referencedTable: $$RoutineWorkoutTableReferences
                            ._routineIdTable(db),
                        referencedColumn: $$RoutineWorkoutTableReferences
                            ._routineIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (workoutId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.workoutId,
                        referencedTable: $$RoutineWorkoutTableReferences
                            ._workoutIdTable(db),
                        referencedColumn: $$RoutineWorkoutTableReferences
                            ._workoutIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RoutineWorkoutTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RoutineWorkoutTable,
      RoutineWorkoutData,
      $$RoutineWorkoutTableFilterComposer,
      $$RoutineWorkoutTableOrderingComposer,
      $$RoutineWorkoutTableAnnotationComposer,
      $$RoutineWorkoutTableCreateCompanionBuilder,
      $$RoutineWorkoutTableUpdateCompanionBuilder,
      (RoutineWorkoutData, $$RoutineWorkoutTableReferences),
      RoutineWorkoutData,
      PrefetchHooks Function({bool routineId, bool workoutId})
    >;
typedef $$WorkoutExerciseTableCreateCompanionBuilder =
    WorkoutExerciseCompanion Function({
      Value<int> id,
      required int plannedExerciseOrder,
      required int workoutId,
      required int exerciseId,
    });
typedef $$WorkoutExerciseTableUpdateCompanionBuilder =
    WorkoutExerciseCompanion Function({
      Value<int> id,
      Value<int> plannedExerciseOrder,
      Value<int> workoutId,
      Value<int> exerciseId,
    });

final class $$WorkoutExerciseTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $WorkoutExerciseTable,
          WorkoutExerciseData
        > {
  $$WorkoutExerciseTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $WorkoutTable _workoutIdTable(_$AppDatabase db) =>
      db.workout.createAlias('workout_exercise__workout_id__workout__id');

  $$WorkoutTableProcessedTableManager get workoutId {
    final $_column = $_itemColumn<int>('workout_id')!;

    final manager = $$WorkoutTableTableManager(
      $_db,
      $_db.workout,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_workoutIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ExerciseTable _exerciseIdTable(_$AppDatabase db) =>
      db.exercise.createAlias('workout_exercise__exercise_id__exercise__id');

  $$ExerciseTableProcessedTableManager get exerciseId {
    final $_column = $_itemColumn<int>('exercise_id')!;

    final manager = $$ExerciseTableTableManager(
      $_db,
      $_db.exercise,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_exerciseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$WorkoutExerciseTableFilterComposer
    extends Composer<_$AppDatabase, $WorkoutExerciseTable> {
  $$WorkoutExerciseTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get plannedExerciseOrder => $composableBuilder(
    column: $table.plannedExerciseOrder,
    builder: (column) => ColumnFilters(column),
  );

  $$WorkoutTableFilterComposer get workoutId {
    final $$WorkoutTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workout,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTableFilterComposer(
            $db: $db,
            $table: $db.workout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ExerciseTableFilterComposer get exerciseId {
    final $$ExerciseTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercise,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseTableFilterComposer(
            $db: $db,
            $table: $db.exercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WorkoutExerciseTableOrderingComposer
    extends Composer<_$AppDatabase, $WorkoutExerciseTable> {
  $$WorkoutExerciseTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get plannedExerciseOrder => $composableBuilder(
    column: $table.plannedExerciseOrder,
    builder: (column) => ColumnOrderings(column),
  );

  $$WorkoutTableOrderingComposer get workoutId {
    final $$WorkoutTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workout,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTableOrderingComposer(
            $db: $db,
            $table: $db.workout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ExerciseTableOrderingComposer get exerciseId {
    final $$ExerciseTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercise,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseTableOrderingComposer(
            $db: $db,
            $table: $db.exercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WorkoutExerciseTableAnnotationComposer
    extends Composer<_$AppDatabase, $WorkoutExerciseTable> {
  $$WorkoutExerciseTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get plannedExerciseOrder => $composableBuilder(
    column: $table.plannedExerciseOrder,
    builder: (column) => column,
  );

  $$WorkoutTableAnnotationComposer get workoutId {
    final $$WorkoutTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workout,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTableAnnotationComposer(
            $db: $db,
            $table: $db.workout,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ExerciseTableAnnotationComposer get exerciseId {
    final $$ExerciseTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercise,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseTableAnnotationComposer(
            $db: $db,
            $table: $db.exercise,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WorkoutExerciseTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WorkoutExerciseTable,
          WorkoutExerciseData,
          $$WorkoutExerciseTableFilterComposer,
          $$WorkoutExerciseTableOrderingComposer,
          $$WorkoutExerciseTableAnnotationComposer,
          $$WorkoutExerciseTableCreateCompanionBuilder,
          $$WorkoutExerciseTableUpdateCompanionBuilder,
          (WorkoutExerciseData, $$WorkoutExerciseTableReferences),
          WorkoutExerciseData,
          PrefetchHooks Function({bool workoutId, bool exerciseId})
        > {
  $$WorkoutExerciseTableTableManager(
    _$AppDatabase db,
    $WorkoutExerciseTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WorkoutExerciseTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WorkoutExerciseTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WorkoutExerciseTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> plannedExerciseOrder = const Value.absent(),
                Value<int> workoutId = const Value.absent(),
                Value<int> exerciseId = const Value.absent(),
              }) => WorkoutExerciseCompanion(
                id: id,
                plannedExerciseOrder: plannedExerciseOrder,
                workoutId: workoutId,
                exerciseId: exerciseId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int plannedExerciseOrder,
                required int workoutId,
                required int exerciseId,
              }) => WorkoutExerciseCompanion.insert(
                id: id,
                plannedExerciseOrder: plannedExerciseOrder,
                workoutId: workoutId,
                exerciseId: exerciseId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$WorkoutExerciseTable, WorkoutExerciseData>(
                    table,
                  ),
                  $$WorkoutExerciseTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({workoutId = false, exerciseId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (workoutId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.workoutId,
                        referencedTable: $$WorkoutExerciseTableReferences
                            ._workoutIdTable(db),
                        referencedColumn: $$WorkoutExerciseTableReferences
                            ._workoutIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (exerciseId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.exerciseId,
                        referencedTable: $$WorkoutExerciseTableReferences
                            ._exerciseIdTable(db),
                        referencedColumn: $$WorkoutExerciseTableReferences
                            ._exerciseIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$WorkoutExerciseTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WorkoutExerciseTable,
      WorkoutExerciseData,
      $$WorkoutExerciseTableFilterComposer,
      $$WorkoutExerciseTableOrderingComposer,
      $$WorkoutExerciseTableAnnotationComposer,
      $$WorkoutExerciseTableCreateCompanionBuilder,
      $$WorkoutExerciseTableUpdateCompanionBuilder,
      (WorkoutExerciseData, $$WorkoutExerciseTableReferences),
      WorkoutExerciseData,
      PrefetchHooks Function({bool workoutId, bool exerciseId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ExerciseTableTableManager get exercise =>
      $$ExerciseTableTableManager(_db, _db.exercise);
  $$MetricTableTableManager get metric =>
      $$MetricTableTableManager(_db, _db.metric);
  $$ExerciseMetricTableTableManager get exerciseMetric =>
      $$ExerciseMetricTableTableManager(_db, _db.exerciseMetric);
  $$MuscleTableTableManager get muscle =>
      $$MuscleTableTableManager(_db, _db.muscle);
  $$ExerciseMuscleTableTableManager get exerciseMuscle =>
      $$ExerciseMuscleTableTableManager(_db, _db.exerciseMuscle);
  $$WorkoutTableTableManager get workout =>
      $$WorkoutTableTableManager(_db, _db.workout);
  $$WorkoutLogTableTableManager get workoutLog =>
      $$WorkoutLogTableTableManager(_db, _db.workoutLog);
  $$ExerciseLogTableTableManager get exerciseLog =>
      $$ExerciseLogTableTableManager(_db, _db.exerciseLog);
  $$ExerciseSetTableTableManager get exerciseSet =>
      $$ExerciseSetTableTableManager(_db, _db.exerciseSet);
  $$ESEMTableTableManager get esem => $$ESEMTableTableManager(_db, _db.esem);
  $$MachineTableTableManager get machine =>
      $$MachineTableTableManager(_db, _db.machine);
  $$MachineSettingTableTableManager get machineSetting =>
      $$MachineSettingTableTableManager(_db, _db.machineSetting);
  $$SelectedSettingTableTableManager get selectedSetting =>
      $$SelectedSettingTableTableManager(_db, _db.selectedSetting);
  $$RoutineTableTableManager get routine =>
      $$RoutineTableTableManager(_db, _db.routine);
  $$RoutinePeriodTableTableManager get routinePeriod =>
      $$RoutinePeriodTableTableManager(_db, _db.routinePeriod);
  $$RoutineWorkoutTableTableManager get routineWorkout =>
      $$RoutineWorkoutTableTableManager(_db, _db.routineWorkout);
  $$WorkoutExerciseTableTableManager get workoutExercise =>
      $$WorkoutExerciseTableTableManager(_db, _db.workoutExercise);
}
