Create directory for roo project

Edit create_<project>.roo and save

Create database for project

Open roo console and run script: script --file create_<project>.roo

Exit from roo command line (quit) then exit console

Import to eclipse as an existing project

Check the two options below
 * Copy projects into workspace
 * Add project to working sets (select Spring-Flex)
 
Change the persistence.xml
 * <property name="hibernate.dialect" value="org.hibernate.dialect.MySQLInnoDBDialect"/>
 
Add the following lines to web.xml
	<listener>
		<listener-class>flex.messaging.HttpFlexSession</listener-class>
	</listener>
	
Add project to web container and start it in debug mode
Id no error then change persistence.xml <property name="hibernate.hbm2ddl.auto" value="update"/>

Delete unused files:
 * All files and package from presentation.*entity
 * <project>_scaffold-config.xml
 * Create new mxml application and set this to the default, finally delete <project>_scaffold.xml

Run default mxml as WebApplication in Flash environment

GOOGLE

Stop server and remove the webapplication
Google -> App Engine setting... then add, leave application id empty
Create new appengine-web.xml into the WEB-INF folder with the required application id
Add logging.properties file too
Select Run As.. -> (Google ) Web Application
Select the war directory it will be the webapp directory
Uncheck the 'Allow output folders to source folders' option in Java Build Path and set output folder to 
Add all of the jars to the newly created lib folder in WEB-INF, which are created in new Google Application in the war/lib folder

