# BTECH-PROJECT-EXPLORE-EAZE
Explore Eaze is a PHP and MySQL travel planning web application, focused on kerala travel data  with an ML powered recommendation module that helps users discover destinations, generate personalized itineraries, estimate fuel costs, and plan routes using Google Maps integration

## Features
- Browse states, places, and guides
- View destination details
- Plan itineraries
- Estimate fuel price
- Use admin panel to manage content
- Google Maps directions support

## Requirements
- PHP 7.x or later
- MySQL / MariaDB
- Apache or any PHP-supported web server
- Web browser
- Internet connection for Google Fonts / CDN / Maps API

## Setup Instructions

### 1. Upload Files
Upload all project files to your web server.

Important folders to include:
- `admin-temp/`
- `css/`
- `css2/`
- `images/`
- `img/`
- `js/`
- `js2/`
- `lib/`

Important root files to include:
- `index.php`
- `index2.php`
- `home.php`
- `login.php`
- `login2.php`
- `guides.php`
- `itinerary.php`
- `itinerary2.php`
- `itinerary22.php`
- `itinerary3.php`
- `it2.php`
- `loc.php`
- `direction2.php`
- `fulelprice.php`
- `sample_list.php`
- `header.php`
- `header2.php`
- `footer.php`
- `footer2.php`
- `config.php`
- `trouvaille2.sql`


### 2. Create the Database
Import the SQL file:

- `trouvaille2.sql`

This will create the required database tables.

### 3. Configure Database Connection
Edit the database connection file used by the project and set your credentials correctly.

If your setup uses environment variables, configure:
- `LEGACY_DB_HOST`
- `LEGACY_DB_USER`
- `LEGACY_DB_PASSWORD`
- `LEGACY_DB_NAME`

If your project uses a root `connection.php`, make sure it exists and points to the correct database.

### 4. Configure API Keys
Edit `config.php` and set the required API keys if needed:
- `GOOGLE_MAPS_API_KEY`
- `BREEZOMETER_API_KEY`

Example:
```php
putenv('GOOGLE_MAPS_API_KEY=your_key_here');
putenv('BREEZOMETER_API_KEY=your_key_here');
