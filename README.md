# DoggyDayCareApplication
Integrates JDBC and displays a CLI for a fictional Doggy Day Care System

This program is loaded from the Command Terminal with the command:  

java -cp mysql-connector-java-5.1.45-bin.jar;. DoggyDayCare \<url> \<user> \<pw> \<driver>

The MySQL connector .jar file must be in the appropriate directory noted in the class path and the database should be initialized via the included SQL script.

The program has two Menu layers, with the top layer having the following options:

------Main Menu:-----

--Entity Management--
1. Dogs
2. Owners
3. Caretakers

---Time Management---
4. Caretaker Clock-In
5. Dog Check-In

6. Exit


The Dogs sub-Menu has the following functions:

Dogs:
1. List All			-		Provides a listing of all dogs currently registered in the database.
2. Add				-		Allows registration of a new dog in the system; the associated Owner must be registered first.
3. Change Diet			-		Modifies the dietary restrictions of the dog specified; either from 'Normal' to 'Special' or vice versa.
4. Show Dietary Restrictions	-		Provides a listing of all dogs in the system with 'Special' dietary restrictions.
5. Back				-		Returns to the Main Menu.

The Owners sub-Menu has the following functions:

Owners:
1. List All			-		Provides a listing of all owners currently registered in the database.
2. Add				-		Allows registration of a new owner in the system.
3. Show Dogs			-		Provides a listing of all dogs associated with a particular owner.
4. Update Payment Info		-		Modifies the credit card number on-file for a specified owner.
5. Update Phone Number		-		Modifies the phone number on-file for a specified owner.
6. Back				-		Returns to the Main Menu.

The Caretakers sub-Menu has the following functions:

Caretakers:
1. List All			-		Provides a listing of all caretakers currently registered in the database.
2. Add				-		Allows registration of a new caretaker in the system.
3. Back				-		Returns to the Main Menu.

The Caretaker Clock-In sub-Menu has the following functions:

Clock-In:
1. Clock-in			-		Adds a new clock-in record for the specified caretaker in the room specified, with the clock-in time set to the current time.
2. Clock-out			-		Clocks-out the specified caretaker for the day, with the clock-out time set to the current time.
3. Show clocked-in		-		Provides a listing of caretakers currently clocked-in.
4. Delete clock-in		-		Allows deletion of erroneous entries for a specified caretaker as long as they have not been clocked-out.
5. Back				-		Returns to the Main Menu.

The Dog Check-In sub-Menu has the following functions:

Dog Check-in:
1. Check-In			-		Adds a new check-in record for the specified dog in the room specified, with the drop_time set to the current time.
2. Check-Out			-		Clocks-out the specified dog upon pick-up, with the pickup_time set to the current time.
3. Show checked-in		-		Provides a listing of dogs currently checked-in.
4. Record Play Time		-		Enters a specified dog's daily play time in the open check-in record.
5. Record Feeding		-		Registers when a dog was fed during a visit, with the meal_time set to the current time.
6. Delete Check-In		-		Allows deletion of erroneous entries for a specified dog as long as it has not been checked-out.
7. Back				-		Returns to the Main Menu.

Option "6. Exit" in the Main Menu terminates the program.
