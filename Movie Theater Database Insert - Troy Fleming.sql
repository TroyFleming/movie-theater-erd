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