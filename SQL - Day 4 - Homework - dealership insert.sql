CREATE OR REPLACE FUNCTION add_customer(
    _first_name VARCHAR,
    _last_name VARCHAR
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO customers(first_name,last_name)
	VALUES(_first_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_customer('Joey', 'Tribbiani');

SELECT add_customer('Ross', 'Geller');

CREATE OR REPLACE FUNCTION add_salesperson(
    _first_name VARCHAR,
    _last_name VARCHAR
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO salespeople(first_name,last_name)
	VALUES(_first_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_salesperson('Monica', 'Geller');

SELECT add_salesperson('Rachel', 'Green');

insert into mechanics(first_name, last_name)
values('Chandler', 'Bing')

insert into mechanics(first_name, last_name)
values('Phoebe', 'Buffay')

insert into invoices(amount)
values(69420.99)

insert into invoices(amount)
values(80081.35)

insert into cars(make, model, year)
values('Nissan', 'GT-R', '2023')

insert into cars(make, model, year)
values('Nissan', 'Pulsar GTI-R', '1994')
