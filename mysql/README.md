# MySQL

## documents
SQL part from [MySQL + Python for Data Analysts](https://github.com/thecraigd/Python_SQL/blob/master/mysql.ipynb)

### keywords

use exit database:
```mysql
USE db_name;
```

create table:
```mysql
CREATE TABLE tb_name(
  column_name type config,
);
```

config:
  - PRIMARY KEY
  - NOT NULL
  - UNIQUE

create table with reference:
```mysql
CREATE TABLE tb_name(
  column_name type,
  PRIMARY KEY(column_name_1, column_name_2, ...),
  FOREIGN KEY(column_name) REFERENCES ref_tb_name(column_name_from_ref_tb)
    ON DELETE CASCADE,
);
```

add reference:
```mysql
ALTER TABLE tb_name
ADD FOREIGN KEY(column_name)
REFERENCES ref_tb_name(column_name_from_ref_tb)
ON DELETE SET NULL;
```

insert values:
```mysql
INSERT INTO tb_name VALUES(...);
```

select values:
```mysql
SELECT * FROM tb_name;
SELECT column_name FROM tb_name;
SELECT * FROM tb_name WHERE condition;
SELECT * FROM tb_name WHERE condition ORDER BY column_name DESC;

SELECT column_from_different_tb
FROM tb_1_name
JOIN tb_2_name
ON tb_1.column_name = tb_2.column_name -- reference;
```

update values:
```mysql
UPDATE tb_name
SET column = value
WHERE condition;
```

delete values:
```mysql
DELETE FROM tb_name WHERE condition;
```

