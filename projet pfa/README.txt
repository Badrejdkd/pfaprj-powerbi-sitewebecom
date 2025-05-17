-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
This project involves database design and modeling using SQL and Power BI, 
linked to an e-commerce website. When an action such as placing an order,
 adding a client, product, or company occurs on the website,
 the data is automatically reflected in the Power BI model.

The system uses two databases:

siteinsertion.sql for the website data

insertionpowerbi for Power BI reporting

These two databases are connected via signals.

An admin can access and view Power BI reports directly through the website.
If the siteinsertion.sql database has already been imported, you can log in using:
Username: pfa
Password: 123
Otherwise, you must create a superuser to access the admin interface
---------------------------------------------------------------------------------------------------
---steps:

## 🧰 2/6 – Requirements

- Python 3.8 or higher
- Git
- `virtualenv` (recommended)

---

```

### Step 1 : Create a virtual environment

```bash
python -m venv venv
```

### Step 2 : Activate the virtual environment

```bash
venv\Scripts\activate
```

### Step 3: Install dependencies

```bash
pip install -r requirements.txt
```

#### if the requirements.txt file is missing , generate it !

```bash
pip freeze > requirements.txt
```


### Step 4 : Apply database migrations

```bash
Step 5: Apply database migrations
```
```bash
python manage.py migrate
```

### Step 6 : Run Django server
```bash
python manage.py runserver
```
the file *insertion.sql* contain the insertion of power bi project
the file *gestionentreprise*  contain the powerbi database creation with with tables and constrainst
the file *

////be sure that the database of power bi is in the wamp server

