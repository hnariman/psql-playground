create table users (
  id serial primary key,
  first varchar(50) not null,
  last varchar(50) not null,
  email varchar(50) not null
);

insert into users (first, last, email) values 
('James', 'Brown', 'james.brown@mail.com'),
('Buddy', 'Guy', 'buddy.guy@mail.com'),
('Eric', 'Clapton', 'eric.clapton@mail.com'),
('Billie', 'Gibbons', 'billie.gibbons@mail.com'),
('Liz', 'Fitzgerald', 'liz.fitzgerald@mail.com'),
('Gary', 'Moore', 'garrym@mail.com'),
('Phill', 'Collins', 'pcollins@mail.com'),
('Dave', 'Brubeck', 'quartet@mail.com'),
('Vanessa', 'Ma', 'mavanessa@mail.com'),
('Clare','Duffy','clareduffy1505@outlook.com'),
('Byron','Ortiz','byronortiz@yahoo.com'),
('Marny','Hopper','marnyhopper@aol.com'),
('Uriah','Wiggins','uriahwiggins@aol.com'),
('Kai','Sloan','kaisloan3555@google.com');


create type units as enum ('kg', 'gr', 'liter', 'ml');

create table ingredients (
  id serial primary key,
  title varchar(100),
  description text,
  unit units
);

create table recipes (
  id serial primary key,
  title varchar(50),
  description varchar(50)
);

create table recipe_ingredients (
	id serial primary key,
	recipe_id integer references recipes(id),
	ingredient_id integer references ingredients(id),
	amount int not null
);

insert into ingredients (title, description, unit) values
('potato','bulba','kg'),
('caviar','black expensive egg','gr'),
('oil','petroleum','ml'),
('beer','wish unit tons was available','liter'),
('sugar','sweet life','gr');

insert into recipes (title, description) values
('cake','smells like heaven'),
('expensive','caviar cake'),
('clean drink','more beer'),
('potato','smells like chicken');

insert into recipe_ingredients (recipe_id, ingredient_id, amount) values
(1, 5, 100),
(1, 1, 1),
(4, 1, 10),
(2, 2, 200);
