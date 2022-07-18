
# slow queryがなっているかの確認

```
show variables like 'slow%';
```


# scheme check

```
show create table table_name;
show columns from table_name;
```

# 実行計画

```
explain select * from comments where post_id = 100 order by created_at desc limit 3;
```

# create index

```
alter table comments add index post_id_idx(post_id);
```
