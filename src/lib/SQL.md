# SQL

## usage

### command

```sql
-- Generate feed URLs based on subscription type.
IF(ISNUMBER(SEARCH("release", [subscribe])), CONCATENATE([url], "/releases.atom"), IF(ISNUMBER(SEARCH("commit", [subscribe])), CONCATENATE([url], "/commits.atom"), ""))
```

```sql
-- Select all records from table with multi-column sorting.
SELECT *
FROM `table_1`
ORDER BY `column_1` ASC, `column_2` ASC, `column_2` ASC;
```

```sql
-- Search for a string in multiple columns of a table.
SELECT *
FROM `table_1`
WHERE `column_1` LIKE '%string%'
OR `column_2` LIKE '%string%'
OR `column_3` LIKE '%string%';
```

## reference

- #lession [sql 十四分钟速成班!没错不要怀疑，数据库语法比中午决定吃什麽还要简单! - Youtube](https://www.youtube.com/watch?v=G_zGBR0mQmE)

## annex

- [sqlite_database-file-format.md](https://github.com/scillidan/mark_cheat/blob/main/sqlite_database-file-format.md)
