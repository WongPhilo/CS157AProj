# CS157AProj
Step #0: If you want automatic initialization of the database, you'll have to have MySQL running at localhost:3306, achieved through Apache or some other means. Also, you'll need a user with username localhost and no password set, although I think that MySQL has that user included by default when you first install it. Otherwise, just click cancel whenever the prompts to login pop up. 

Step #1: Run mysql-8.2.0-winx64.msi (Assuming that you don't have MySQL Server installed).

Step #2: Run mysql-workbench-community-8.0.34-winx64.msi (Assuming you don't have MySQL Workbench installed).

Step #3: Run xampp-windows-x64-8.0.30-0-VS16-installer.exe (Assuming you don't have XAMPP installed).

Step #4: Run XAMPP, bootup both Apache and MySQL.

Step #5: In MySQL, check that the port for MySQL is set to its default, localhost:3306. 

Step #5.1: Run the MySQL scripts located in the SQL folder, starting with create.sql, then insert.sql, and finally views.sql, if they haven't been automatically initialized yet.

Step #6: Open a terminal window in the CS157AProj directory, type in "java -jar CS157AProj.jar". 
