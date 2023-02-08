#!/bin/bash

SQL="docker exec -it posst psql -U hnariman -d test -c "

$SQL "select * from users;"
$SQL "select * from recipes;"


#--- get ingredients for recipes
$SQL " 
select

recipes.id,
recipes.title,
recipes.description, 
ingredients.title,  
ingredients.description,
amount,
unit

from recipes
join recipe_ingredients 
on recipes.id = recipe_ingredients.recipe_id

join ingredients
on ingredients.id = recipe_ingredients.ingredient_id;
"

# --- get ingredients for recipe #1
$SQL "
select 
ingredients.id, title, description, amount, unit 

from ingredients join recipe_ingredients

on ingredients.id = ingredient_id
where recipe_id = 1;
"

# --- get ingredients for recipe #2
$SQL "
select 

ingredients.id, title, description, amount, unit 

from ingredients
join recipe_ingredients
on ingredients.id = ingredient_id

where recipe_id = 2;
"

# --- get ingredients for recipe #4

$SQL "
select 

ingredients.id, title, description, amount, unit 

from ingredients
join recipe_ingredients
on ingredients.id = ingredient_id
where recipe_id = 4;
"
