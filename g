Script started on 2021-11-30 11:53:51-06:00 [TERM="xterm-256color" TTY="/dev/tty2" COLUMNS="205" LINES="9"]
]0;omelina@DESKTOP-8DSVO8J: ~/workspace/scart[01;32momelina@DESKTOP-8DSVO8J[00m:[01;34m~/workspace/scart[00m$ rails ssudo service postgresql startrails s[K[Krails s[Krails s[Krails g migration FixColumnName
Running via Spring preloader in process 16186
[1m[37m      invoke[0m  active_record
[1m[32m      create[0m    db/migrate/20211130175536_fix_column_name.rb
]0;omelina@DESKTOP-8DSVO8J: ~/workspace/scart[01;32momelina@DESKTOP-8DSVO8J[00m:[01;34m~/workspace/scart[00m$ rails g migration FixColumnNames[Ksudo service postgresql startrails s[Kgem uninstall rspec[12Prails ssudo service postgresql startrails s[Kg migration FixColumnName[Krails db:see[K[K[Kmigration
Running via Spring preloader in process 16280
rake aborted!
Don't know how to build task 'db:migration' (See the list of available tasks with `rake --tasks`)
Did you mean?  db:migrate
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
-e:1:in `<main>'
(See full trace by running task with --trace)
]0;omelina@DESKTOP-8DSVO8J: ~/workspace/scart[01;32momelina@DESKTOP-8DSVO8J[00m:[01;34m~/workspace/scart[00m$ rails db:migration[K[K[Ke
Running via Spring preloader in process 16318
== 20211130175536 FixColumnName: migrating ====================================
-- rename_column(:users, :password_digest, :password)
   -> 0.0038s
== 20211130175536 FixColumnName: migrated (0.0039s) ===========================

]0;omelina@DESKTOP-8DSVO8J: ~/workspace/scart[01;32momelina@DESKTOP-8DSVO8J[00m:[01;34m~/workspace/scart[00m$ rails db:migrate[Krails db:migrate[K[K[K[K[K[K[Kseed
Running via Spring preloader in process 16422
rake aborted!
NoMethodError: undefined method `password_digest=' for #<User id: 2, name: "Oky", lastName: "Madrigal", birthDate: "1998-07-07", password: nil, active: true, email: nil, created_at: nil, updated_at: nil>
Did you mean?  password=
/home/omelina/workspace/scart/db/seeds.rb:1:in `<main>'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
-e:1:in `<main>'
Tasks: TOP => db:seed
(See full trace by running task with --trace)
]0;omelina@DESKTOP-8DSVO8J: ~/workspace/scart[01;32momelina@DESKTOP-8DSVO8J[00m:[01;34m~/workspace/scart[00m$ rails db:seed
Running via Spring preloader in process 16470
rake aborted!
ActiveRecord::StatementInvalid: PG::UndefinedColumn: ERROR:  column users.password_digest does not exist
LINE 1: ...."birthDate" = $4 AND "users"."password" = $5 AND "users"."p...
                                                             ^
/home/omelina/workspace/scart/db/seeds.rb:1:in `<main>'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
-e:1:in `<main>'

Caused by:
PG::UndefinedColumn: ERROR:  column users.password_digest does not exist
LINE 1: ...."birthDate" = $4 AND "users"."password" = $5 AND "users"."p...
                                                             ^
/home/omelina/workspace/scart/db/seeds.rb:1:in `<main>'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
-e:1:in `<main>'
Tasks: TOP => db:seed
(See full trace by running task with --trace)
]0;omelina@DESKTOP-8DSVO8J: ~/workspace/scart[01;32momelina@DESKTOP-8DSVO8J[00m:[01;34m~/workspace/scart[00m$ rails db:seed[Krails [K[K[K[K[K[Krails db:seedmigrate[3Pseedmigrate[K[K[K[K[K[K[Krollback STEP=1
Running via Spring preloader in process 16544
== 20211130175536 FixColumnName: reverting ====================================
== 20211130175536 FixColumnName: reverted (0.0000s) ===========================

]0;omelina@DESKTOP-8DSVO8J: ~/workspace/scart[01;32momelina@DESKTOP-8DSVO8J[00m:[01;34m~/workspace/scart[00m$ rails db:rollback STEP=1seed[K
Running via Spring preloader in process 16644
You have 1 pending migration:
  20211130175536 FixColumnName
Run `bin/rails db:migrate` to update your database then try again.
]0;omelina@DESKTOP-8DSVO8J: ~/workspace/scart[01;32momelina@DESKTOP-8DSVO8J[00m:[01;34m~/workspace/scart[00m$ rails db:seedrollback STEP=1seed[Kmigrate
Running via Spring preloader in process 16718
rake aborted!
SyntaxError: /home/omelina/workspace/scart/db/migrate/20211130175536_fix_column_name.rb:4: syntax error, unexpected `end'
  end
  ^~~
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
-e:1:in `<main>'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)
]0;omelina@DESKTOP-8DSVO8J: ~/workspace/scart[01;32momelina@DESKTOP-8DSVO8J[00m:[01;34m~/workspace/scart[00m$ rails db:migrate
Running via Spring preloader in process 16760
== 20211130175536 FixColumnName: migrating ====================================
-- rename_column(:users, :password, :password_digest)
   -> 0.0031s
== 20211130175536 FixColumnName: migrated (0.0032s) ===========================

]0;omelina@DESKTOP-8DSVO8J: ~/workspace/scart[01;32momelina@DESKTOP-8DSVO8J[00m:[01;34m~/workspace/scart[00m$ rails db:migrate[3Pseedmigrate[Krails db:migrate[3Pseed
Running via Spring preloader in process 16801
rake aborted!
ActiveRecord::StatementInvalid: PG::UndefinedColumn: ERROR:  column users.password does not exist
LINE 1: ...."lastName" = $3 AND "users"."birthDate" = $4 AND "users"."p...
                                                             ^
/home/omelina/workspace/scart/db/seeds.rb:1:in `<main>'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
-e:1:in `<main>'

Caused by:
PG::UndefinedColumn: ERROR:  column users.password does not exist
LINE 1: ...."lastName" = $3 AND "users"."birthDate" = $4 AND "users"."p...
                                                             ^
/home/omelina/workspace/scart/db/seeds.rb:1:in `<main>'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
-e:1:in `<main>'
Tasks: TOP => db:seed
(See full trace by running task with --trace)
]0;omelina@DESKTOP-8DSVO8J: ~/workspace/scart[01;32momelina@DESKTOP-8DSVO8J[00m:[01;34m~/workspace/scart[00m$ rails db:seed
Running via Spring preloader in process 16991
rake aborted!
ActiveRecord::RecordInvalid: Validation failed: Password can't be blank, Password Please enter at least 6 characters
/home/omelina/workspace/scart/db/seeds.rb:1:in `<main>'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
<internal:/home/omelina/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
-e:1:in `<main>'
Tasks: TOP => db:seed
(See full trace by running task with