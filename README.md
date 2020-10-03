
```
docker-compose build
docker-compose run web rails db:create db:migrate
docker-compose up
```

コンテナの中への入り方
```
docker-compose exec web bash
```
