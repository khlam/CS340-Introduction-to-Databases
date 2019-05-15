SELECT Make.make_name, Model.model_name FROM Vehicle
	INNER JOIN Model
	ON Model.model_id = Vehicle.fk_model_id
	INNER JOIN Make
	ON Make.make_id = Vehicle.fk_make_id
WHERE first_production_year = '1987';

# π Make.make_name, Model.model_name ( σ first_production_year = '1987' ((Vehicle ⨝ Model.model_id = Vehicle.fk_model_id Model) ⨝ Make.make_id = Vehicle.fk_make_id Make) )