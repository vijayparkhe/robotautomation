*** Settings ***
Library     DatabaseLibrary
Library    OperatingSystem
Suite Setup    Connect To Database    pymysql   ${DBname}   ${DBuser}   ${DBpasword}    ${DBhost}   ${DBport}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBname}   person
${DBuser}   root
${DBpasword}    root
${DBhost}   Localhost
${DBport}   3306

*** Test Cases ***
#create person table
#    ${output}   Execute Sql String    create table person (id int, fist_name varchar(20),last_name varchar(50));
#    Log    ${output}
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}     None

insertingdata in person table
    #single record
    #${output}   Execute Sql String    insert into person values (1,'vijay','parkhe');
    #multiple records
    ${output}   Execute Sql Script    ./Testdata/personinsertdata.sql
    Log To Console  ${output}
    Should Be Equal As Strings    ${output}     None
checknameindatabase
    Check If Exists In Database    select fist_name from person where fist_name='vijay';

checknameindatabse
    Check If Not Exists In Database    select id from person where fist_name='viay';
checktablepresentindatabase
    Table Must Exist    person
verify row count is zero
    Row Count Is 0    select * from person where fist_name='fjsh';
#verify row count is equal to some value
#    Row Count Is Equal To X    select * from person where fist_name='vijay';    1
#verify row count greater than some value
#    Row Count Is Greater Than X    select * from person where fist_name='vijay';    1
#verify row count less than some value
#    Row Count Is Less Than X    select * from person where fist_name='vijay';   10
update record in person table
    ${output}   Execute Sql String    update person set fist_name='vijaykumar' where id=1;
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}     None
retrieve records from table
    @{queryresults}=     Query       select * from person;
    Log To Console  Many @{queryresults}
    Log Many    @{queryresults}
deletingdata
    Delete All Rows From Table  person

*** Keywords ***
