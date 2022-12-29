import 'package:database_query_builder/query_builder.dart';

import 'delete_statements.dart';
import 'insert_statements.dart';

Future<void> main() async {
  DB.conexion(
    databaseName: 'dartpay',
    port: 5442,
  );

  //=========================================================
  //==================> DATA METHODS Statements <=============
  // await DataMethods.get();

  //=========================================================
  //==================> INSERT INTO Statements <=============
  // await InsertStatements.insert();
  await InsertStatements.insertAll();

  //=========================================================
  //==================> SELECT Statements <==================
  // await SelectStatements.select();

  //=========================================================
  //==================> UPDATE Statements <==================
  // await UpdateStatements.updateNotWhere();

  //=========================================================
  //==================> DELETE Statements <==================
  await DeleteStatements.updateNotWhere();

  //=========================================================
  //==================> WHERE Statements <==================
}
