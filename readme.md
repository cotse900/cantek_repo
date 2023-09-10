# DVD RENTAL SQL PROJECT

- This SQL project is on various tables about an online DVD rental system: category, film_category, film, language, film_actor, actor, staff, store, payment, rental, inventory, customer, address, city, and country. In my work, I did a few queries using different techniques. We can explore things like patterns of rentals, film trends, synopses, and rental costs. Here is an entity relationship diagram (from the dataset):

![ERD of dvd rentals](https://raw.githubusercontent.com/cotse900/dvd_rental/master/dvd_rental_erd.png)

- In this project, I used postgreSQL 16rc1 and pgadmin4 7.6 (Win).

Queries:

1. cast_chamber_italian - using join, where
2. filmography_Alec_Wayne - using join, where, order by
3. num_of_customers_by_country_store_1 - using count, join, where, order by, group by
   num_of_customers_by_country_store_2 - using count, join, where, order by, group by
4. total_payment_by_customer - using sum, group by, CTE
5. horror_films_without_deleted_scenes - using "not in" sub-query

# Resources

- [Another ER diagram for the dataset](https://www.postgresqltutorial.com/wp-content/uploads/2018/03/printable-postgresql-sample-database-diagram.pdf)
- [The dataset in question](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/)
