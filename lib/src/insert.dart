import 'package:database_query_builder/src/data.dart';
import 'package:database_query_builder/src/sql_query.dart';

class Insert {
  SQL insert(Map<String, dynamic> value) {
    final sql = SQLquery.instance;
    sql.query.add('INSERT INTO ${sql.table}');
    sql.query.add('(${value.keys.join(', ')})');

    final values = <String>[];
    value.forEach((key, value) {
      final p0 = sql.paramsCode;
      sql.params[p0] = value;
      values.add('@$p0');
    });

    sql.query.add('VALUES (${values.join(', ')})');
    return SQL();
  }

  SQL insertAll(List<JMap> values) {
    final sql = SQLquery.instance;
    sql.query.add('INSERT INTO ${sql.table}');
    sql.query.add('(${values.first.keys.join(', ')})');
    sql.query.add('VALUES');

    final listValues = <dynamic>[];
    for (final item in values) {
      final values = <String>[];
      item.forEach((key, value) {
        final p0 = sql.paramsCode;
        sql.params[p0] = value;
        values.add('@$p0');
      });
      listValues.add('(${values.join(', ')})');
    }
    sql.query.add('${listValues.join(', ')};');
    return SQL();
  }

  SQL insertGetId(Map<String, dynamic> value, [String? primaryKey]) {
    final sql = SQLquery.instance;

    sql.query.add('INSERT INTO ${sql.table}');
    sql.query.add('(${value.keys.join(', ')})');

    final values = <String>[];
    value.forEach((key, value) {
      final p0 = sql.paramsCode;
      sql.params[p0] = value;
      values.add('@$p0');
    });

    sql.query.add('VALUES (${values.join(', ')})');
    sql.primaryKey = primaryKey;
    if (sql.primaryKey != null) {
      sql.query.add('RETURNING $primaryKey');
    } else {
      sql.query.add('RETURNING');
    }
    return SQL();
  }

  SQL insertAllGetIds(List<JMap> values, [String? primaryKey]) {
    final sql = SQLquery.instance;
    sql.query.add('INSERT INTO ${sql.table}');
    sql.query.add('(${values.first.keys.join(', ')})');
    sql.query.add('VALUES');

    final listValues = <dynamic>[];
    for (final item in values) {
      final values = <String>[];
      item.forEach((key, value) {
        final p0 = sql.paramsCode;
        sql.params[p0] = value;
        values.add('@$p0');
      });
      listValues.add('(${values.join(', ')})');
    }
    sql.query.add(listValues.join(', '));

    sql.primaryKey = primaryKey;
    if (sql.primaryKey != null) {
      sql.query.add('RETURNING $primaryKey');
    } else {
      sql.query.add('RETURNING');
    }
    return SQL();
  }
}
