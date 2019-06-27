SELECT Inventory.inventory_id, Make.make_name, Model.model_name, Incentive.amount FROM Vehicle
	INNER JOIN Vehicle_Incentive
	ON Vehicle_Incentive.fk_vehicle_id = Vehicle.vehicle_id
	INNER JOIN Incentive
	ON Vehicle_Incentive.fk_incentive_id = Incentive.incentive_id
	INNER JOIN Model
	ON Model.model_id = Vehicle.fk_model_id
	INNER JOIN Make
	ON Make.make_id = Vehicle.fk_make_id
	INNER JOIN Inventory
	ON Inventory.fk_vehicle_id = Vehicle.vehicle_id
WHERE Incentive.type = 'dealer';

# π Inventory.inventory_id, Make.make_name, Model.model_name, Incentive.amount (σ Incentive.type = 'dealer' ((((Vehicle ⨝ Vehicle_Incentive.fk_vehicle_id = Vehicle.vehicle_id Vehicle_Incentive) ⨝ Vehicle_Incentive.fk_incentive_id = Incentive.incentive_id Incentive) ⨝ Model.model_id = Vehicle.fk_model_id Model) ⨝ Make.make_id = Vehicle.fk_make_id Make) ⨝ Inventory.fk_vehicle_id = Vehicle.vehicle_id Inventory)