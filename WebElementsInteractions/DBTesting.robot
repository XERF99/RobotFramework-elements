*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From Database    

*** Variables ***
${DBName}        mydb
${DBUser}        root
${DBPass}        root
${DBHost}        127.0.0.1
${DBPort}        3306

*** Test Cases ***
#Create person table
#    ${output}=    Execute Sql String    Create table person(id integer, first_name varchar(20), last_name varchar(20));
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None

#Inserting Data in person table
    #Para una insercion simple
#    ${output}=    Execute Sql String    Insert into person values(101,"Francisco","Rodriguez");
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None

#Inserting Data in person table multiple records
    #para ingresar grandes cantidades de datos
#    ${output}=    Execute Sql Script    ./TestData/mydb_person_insertData.sql
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None

#Check Francisco record in Person Table
#    Check If Exists In Database    select id from mydb.person where first_name="Francisco";

#Check Juan record not in Person Table
#    Check If Not Exists In Database    select id from mydb.person where first_name="Juan";

#Check Person Table exist in mydb database 
#    Table Must Exist    person

#Verify Row count is Zero
#    Row Count Is 0    Select * from mydb.person Where first_name = "xyz";

#Verify Row count is Equal to some value    #Se valida que sea igual a 1 si es diferente de 1 dara error
#    Row Count Is Equal To X    Select * from mydb.person Where first_name = "Francisco";    1

#Verify Row Count is Greater than Some Value    #verificamos que es mayor que un determinado valor
#    Row Count Is Greater Than X    Select * from mydb.person Where first_name = "Francisco";    0

#Verify Row Count is less than Some Value    #verificamos que es menor que un determinado valor
#    Row Count Is Less Than X    Select * from mydb.person Where first_name = "Francisco";    5   

#Update record in person table    #Actualizo un registro en la base de datos
#     ${output}=    Execute Sql String    Update mydb.person set first_name="Fran" where id=102;
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None

#Retrieve records from person table    #recupera varios registros de una base de datos   
#    @{queryResults}=    Query    Select * from mydb.person;
#    Log To Console    many    @{queryResults}

#Delete recordos from person table    #borrar los registros de la tabla
#    ${output}=    Execute Sql String    Delete from mydb.person;
#    Should Be Equal As Strings    ${output}    None
     