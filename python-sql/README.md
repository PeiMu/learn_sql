# python-sql

## documents
[How to Create and Manipulate SQL Databases with Python](https://www.freecodecamp.org/news/connect-python-with-sql/)

## keywords
```python
import mysql.connector
from mysql.connector import Error

# connect database
connection = mysql.connector.connect(...)

# address cursor of database
cursor = connection.cursor()
# execute query command
cursor.execute(query_cmd)
# execute many query commands
cursor.executemany(query_cmd, value_list)
# commit query command
connection.commit()

# fetch all data
result = cursor.fetchall()
```
