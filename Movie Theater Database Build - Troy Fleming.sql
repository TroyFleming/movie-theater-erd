CREATE TABLE customer_account_tf (
  customer_id SERIAL primary key,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  address VARCHAR(150),
  city VARCHAR(100),
  state VARCHAR(2),
  zip_code VARCHAR(5),
  email VARCHAR(150),
  phone_number VARCHAR(11)
);

select * from customer_account_tf

CREATE TABLE movie_info_tf (
  movie_id SERIAL primary key,
  title VARCHAR(150),
  run_time_mins NUMERIC(3),
  rating VARCHAR(5),
  genre VARCHAR(100)
);

select * from movie_info_tf

CREATE TABLE theater_info_tf (
  theater_id SERIAL primary key,
  theater_name VARCHAR(150),
  theater_address VARCHAR(150),
  theater_city VARCHAR(100),
  theater_state VARCHAR(2),
  theater_zip_code VARCHAR(5),
  theater_phone_number VARCHAR(11)
);

select * from theater_info_tf

CREATE TABLE ticket_pricing_tf (
  ticket_type_id SERIAL primary key,
  ticket_type VARCHAR(10),
  ticket_price NUMERIC(5,2)
);

select * from ticket_pricing_tf

CREATE TABLE ticket_info_tf (
  ticket_id SERIAL primary key,
  customer_id INTEGER not null,
  theater_id INTEGER not null,
  ticket_type INTEGER not null,
  showing_date DATE,
  showing_time TIME,
  movie_id INTEGER not null,
  foreign key(customer_id) references customer_account_tf(customer_id),
  foreign key(theater_id) references theater_info_tf(theater_id),
  foreign key(ticket_type) references ticket_pricing_tf(ticket_type),
  foreign key(movie_id) references movie_info_tf(movie_id)
);

select * from ticket_info_tf

CREATE TABLE billing_info_tf (
  billing_info_id SERIAL primary key,
  card_type VARCHAR(50),
  card_number VARCHAR(16),
  card_csv VARCHAR(5),
  card_exp_date VARCHAR(5),
  billing_address VARCHAR(150),
  billing_city VARCHAR(50),
  billing_state VARCHAR(2),
  customer_id INTEGER not null,
  foreign key(customer_id) references customer_account_tf(customer_id)
);

select * from billing_info_tf