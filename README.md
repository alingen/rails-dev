# Overview
You can create a development environment for rails and mysql.

# version
Rails version: 6.1.7
Ruby version: ruby 2.6.8
Mysql version: 8.0.31

# installation

Installation is done using the git clone command:

HTTP

```git clone https://github.com/alingen/rails-dev.git ```

SSH

```git clone git@github.com:alingen/rails-dev.git ```

then change to the created directry```cd rails-dev ```, and start docker container.rails server start at the same time.

```docker-compose up -d  ```

run the container,

```docker-compose exec web bash```

and create a database.

```rails db:create```

```rails db:migrate```

View the website at: http://localhost:3002
