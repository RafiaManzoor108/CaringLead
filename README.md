# CaringLead

Creating a culture of compassion among health care workers

# Steps to Setup Server Locally

Install XAMPP and SQLYog

Take the pull or clone the repo

Start the Apaches and SQL server from XAMP and then Open SQLYog

Run the following queries in the query editor of SQLYog

`CREATE USER 'lead'@'localhost' IDENTIFIED BY 'caring';`

`GRANT ALL PRIVILEGES ON * . * TO 'lead'@'localhost';`

`FLUSH PRIVILEGES;`

Now you need to deploy the database available for that first use SQLYoq to create a database named: "caring_lead"  once the database is created go to the database_backup folder and open the sql file from notepad copy the entire text and past it in the SQLYog query editor and run all of them. 

Once done install git or you may already have that in your VSCODE and open the cmd from there (terminal)

In the terminal navigate to the backend_application folder and type

`pip install -r requirements.txt`

Note you need to have python extension installed on VS CODE before this

Once all the extensions are downloaded and installed  all you need to do is start the python app server

python wsgi.py

And you are done. You can make request via localhost to port 5000 and get response based on APIS created.