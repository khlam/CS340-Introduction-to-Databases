SELECT Inventory.inventory_id, Make.make_name, Model.model_name FROM Vehicle
	INNER JOIN Model
	ON Model.model_id = Vehicle.fk_model_id
	INNER JOIN Make
	ON Make.make_id = Vehicle.fk_make_id
	INNER JOIN Inventory
	ON Inventory.fk_vehicle_id = Vehicle.vehicle_id
	INNER JOIN Color
	ON Color.color_id = Inventory.fk_color_id
WHERE Color.name = 'Sky Blue';

#π Inventory.inventory_id, Make.make_name, Model.model_name (σ Color.name = 'Sky Blue' ((((Vehicle ⨝ Model.model_id = Vehicle.fk_model_id Model )⨝ Make.make_id = Vehicle.fk_make_id Make)⨝ Inventory.fk_vehicle_id = Vehicle.vehicle_id Inventory)⨝ Inventory.fk_color_id = Color.color_id Color))