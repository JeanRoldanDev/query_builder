
<H1 style="text-align:center">
<img src="./doc/zebra.png" width="128"/>
<BR>
Database: Query Builder
</H1>


- [Introduction](#Introduction)
- [Data Methods](#DataMethods)
- [Inserts](#Inserts)
    - [Inserts Multiple](#Inserts)
    - [Inserts Multiple](#Inserts)
## # Introduction 
The Database Query Builder for Dart provides an easy, efficient, and fluid interface for building or running database queries. It can be used to perform most basic (Temporary) database operations and works perfectly with postgresql we hope to add support for other managers later.

This project will momentarily depend on our source postgres library to connect to this manager and execute queries, although it is true, there are multiple ORM-based libraries, but we want to do something of our own, something CRAZY!

### Data Methods
We have several methods to bring information from our queries:
`get()` Returns a list of type map<String,dynamic> depending on our queries
`getModel()` Returns a list of a strongly typed class to generate direct models
`ToSql()` gets the query generated by the query builder does not require a database connection, you can use this function to generate the required SQL helping you avoid SQL injections

### Basic Query
```dart
DB.table('products').get();
DB.table('products').getModel<Product>(Product.fromJson);
DB.table('products').first();
DB.table('products').firstModel();
DB.table('products').toSql();
```

### Inserts
Provides an `INSERT`  method that can be used to insert records into the database table

```dart
final numRowAffected = await DB.table('persons').insert({
    'nombre': 'Nuevo User 1212',
    'apellido': 'Rolda 12121',
    'edad': 666,
}).save()
```

#### Select Statements
#### Raw Expressions
#### Joins
##### ===> Join
##### ===> leftJoin
##### ===> rightJoin
##### ===> crossJoin

#### Unions
#### Delete
#### Ordering, Grouping, Limit
#### where
##### ===> Where Clauses
##### ===> Where IN
##### ===> Where OR
##### ===> Where NULL
##### ===> Where EXIST
##### ===> Where NOT EXIST





# FEATURE 

<table class="default">
    <tr>
        <td>Methods</td>
        <td>Status</td>
    </tr>
    <tr>
        <td>Insert</td>
        <td>✅</td>
    </tr>
    <tr>
        <td>InsertMultiple</td>
        <td>✅</td>
    </tr>
    <tr>
        <td>insertGetId</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>Update</td>
        <td>✔️</td>
    </tr>
    <tr>
        <td>UpdateOrInsert</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>Where</td>
        <td>✅</td>
    </tr>
    <tr>
        <td>Where nested</td>
        <td>✔️</td>
    </tr>
    <tr>
        <td>Where IN</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>Where OR</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>whereNull</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>orderBy</td>
        <td>✔️</td>
    </tr>
    <tr>
        <td>groupBy</td>
        <td>✔️</td>
    </tr>
    <tr>
        <td>limit</td>
        <td>✔️</td>
    </tr>
    <tr>
        <td>Join</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>LeftJoin</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>RightJoin</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>CrossJoin</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>Drop Table</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>Truncate Table</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>Increment</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>Decrement</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>Max</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>Min</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>Count</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>Avg</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>Sum</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>Exists</td>
        <td>❌</td>
    </tr>
    <tr>
        <td>DoesntExist</td>
        <td>❌</td>
    </tr>
</table>