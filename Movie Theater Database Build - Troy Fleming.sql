CREATE TABLE "customer_account_tf_final" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "address" VARCHAR(150),
  "city" VARCHAR(100),
  "state" VARCHAR(2),
  "zip_code" VARCHAR(5),
  "email" VARCHAR(150),
  "phone_number" VARCHAR(11),
  PRIMARY KEY ("customer_id")
);



CREATE TABLE "movie_info_tf_final" (
  "movie_id" SERIAL,
  "title" VARCHAR(150),
  "run_time_mins" NUMERIC(3),
  "rating" VARCHAR(5),
  "genre" VARCHAR(100),
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "theater_info_tf_final" (
  "theater_id" SERIAL,
  "theater_name" VARCHAR(150),
  "theater_address" VARCHAR(150),
  "theater_city" VARCHAR(100),
  "theater_state" VARCHAR(2),
  "theater_zip_code" VARCHAR(5),
  "theater_phone_number" VARCHAR(11),
  PRIMARY KEY ("theater_id")
);

CREATE TABLE "ticket_info_tf_final" (
  "ticket_id" SERIAL,
  "customer_id" INTEGER,
  "theater_id" INTEGER,
  "ticket_type" VARCHAR(150),
  "showing_date" DATE,
  "showing_time" TIME,
  "movie_id" VARCHAR(150),
  PRIMARY KEY ("ticket_id")
);

CREATE TABLE "ticket_pricing_tf_final" (
  "ticket_type" SERIAL,
  "ticket_price" NUMERIC(5,2),
  PRIMARY KEY ("ticket_type")
);

CREATE TABLE "billing_info_tf_final" (
  "billing_info_id" SERIAL,
  "card_type" VARCHAR(50),
  "card_number" NUMERIC(16),
  "card_csv" NUMERIC(5),
  "card_exp_date" VARCHAR(5),
  "billing_address" VARCHAR(150),
  "billing_city" VARCHAR(50),
  "billing_state" VARCHAR(2),
  "customer_id" INTEGER,
  PRIMARY KEY ("billing_info_id")
);

select * from customer_account_tf_final

insert into customer_account_tf_final(
	customer_id,
	first_name,
	last_name,
	address,
	city,
	state,
	zip_code,
	email,
	phone_number,
	billing_info_id
)Values(
	1,
	'Troy',
	'Fleming',
	'555 Circle Drive',
	'Chicago',
	'IL',
	'15269',
	'tgf@gmail.com',
	'5554445454',
	1
);

insert into billing_info_tf_final(
	billing_info_id,
	card_type,
	card_number,
	card_csv,
	card_exp_date,
	billing_address,
	billing_city,
	billing_state,
	customer_id 
)Values(
	1,
	'AMEX',
	'4567123443215678',
	'45632',
	'02/30',
	'555 Circle Drive',
	'Chicago',
	'IL',
	1
);

insert into movie_info_tf_final(
	movie_id,
	title,
	run_time_mins,
	rating,
	genre
)Values(
	1,
	'The Great Escape',
	'145',
	'PG-13',
	'Action'
);

insert into theater_info_tf_final(
	theater_id,
	theater_name,
	theater_address,
	theater_city,
	theater_state,
	theater_zip_code,
	theater_phone_number
)Values(
	1,
	'Hollywood Cinema',
	'1095 Parker Dr.',
	'Chicago',
	'IL',
	'50056',
	'9513560956'
);

insert into ticket_info_tf_final(
	ticket_id,
	customer_id,
	theater_id,
	ticket_type,
	showing_date,
	showing_time,
	movie_id
)Values(
	1,
	1,
	1,
	'Adult',
	'12/31/2023',
	'08:30',
	1
);



