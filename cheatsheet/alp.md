

```
cat /var/log/nginx/access.log | alp ltsv -m "/api/estate/[0-9]*,/api/chair/[0-9]*,/api/recommended_estate/[0-9]*"
```
