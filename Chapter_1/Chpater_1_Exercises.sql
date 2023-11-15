CREATE TABLE kinds_of_animals (
	animal_kind_id bigserial, 
	animal_kind varchar(50),
	number_of_kind integer
);

CREATE TABLE animal_specifics (
	animal_id bigserial,
	color varchar(10),
	size_kg numeric
);

INSERT INTO kinds_of_animals (animal_kind, number_of_kind)
VALUES ('snake', 6),
		('elephant', 4),
		('monkey', 10),
		('bird', 25);
		
INSERT INTO animal_specifics (color, size_kg)
VALUES ('black', 4.5),
		('grey', 60),
		('brown', 20),
		('multi', 25);