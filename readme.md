# DVD RENTAL SQL PROJECT

# Introduction

- This SQL project is on various tables about an online DVD rental system: category, film_category, film, language, film_actor, actor, staff, store, payment, rental, inventory, customer, address, city, and country. In my work, I did a few queries using different techniques. We can explore things like patterns of rentals, film trends, synopses, and rental costs. Here is an entity relationship diagram (from the dataset):

![ERD of dvd rentals](https://raw.githubusercontent.com/cotse900/dvd_rental/master/dvd_rental_erd.png)

- In this project, I used postgreSQL 16rc1 and pgadmin4 7.6 (Win).
- Given 15 tables in this sample dataset, it is possible to explore different SQL queries, and I argue that it is helpful for many beginners as well as those who want to explore advanced features. I had previously had a course on PL/SQL with the same website referred to in the references. Meanwhile, it is worth our attention that [Kaggle](https://www.kaggle.com/datasets) may offer real-world data that constitute good material for tasks about correlation.

Queries:

1. cast_chamber_italian - using join, where
   In this film, we found 7 actors.
2. filmography_Alec_Wayne - using join, where, order by
   Alec Wayne was in 29 films.
3. num_of_customers_by_country_store_1 - using count, join, where, order by, group by
   num_of_customers_by_country_store_2 - using count, join, where, order by, group by
   There were the most customers from India (37) in store 1, while in store 2 there were slightly more customers from China (27) than from India (23).
4. total_payment_by_customer - using sum, group by, order by, CTE
   While the 599 customers spent varying amounts on rentals, Hunt, Seal, and Snyder were the top 3 spenders, slightly ahead of the others among the top 10.
5. horror_films_count - count
   horror_films_without_deleted_scenes - using "not in" sub-query
   Out of 56 horror films, 29 of them did not include deleted scenes.

# Acknowledgement

- This project is inspired by Will, my instructor, and [Cantek Canada](https://www.cantekcanada.com/).

# Resources and references

- [Another ER diagram for the dataset](https://www.postgresqltutorial.com/wp-content/uploads/2018/03/printable-postgresql-sample-database-diagram.pdf)
- [The dataset in question](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/)
