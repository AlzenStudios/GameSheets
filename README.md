# GameSheets - A Database Management Tool for Games

## Overview

**GameSheets** is a modified version of **phpMyAdmin**, tailored to improve the efficiency of storing and managing game data in a relational database instead of file-based systems. By using GameSheets, game developers and administrators can manage game-related data such as player statistics, scores, and world states in a database, offering better stability, scalability, and performance.

## Features

- **Database-driven storage**: Replace file-based data storage with a relational database for more stability and scalability.
- **Game data management**: Easily manage game-related data, including player stats, inventory, and game progress.
- **Enhanced performance**: Optimized for large-scale game data queries and operations.
- **Security**: Built-in features for user authentication and secure database access management.
- **Intuitive interface**: Based on the familiar phpMyAdmin interface for ease of use.

## Installation

### Prerequisites

Before installing GameSheets, ensure the following:

- A **web server** (Apache, Nginx, etc.) running PHP.
- **MySQL** or **MariaDB** installed and running.
- A **compatible browser** (latest versions of Chrome, Firefox, Safari, or Edge).

### Steps

1. **Download GameSheets**

   Clone the repository:

   ```bash
   git clone https://github.com/AlzenStudios/GameSheets.git
   ```

2. **Install dependencies**

   Navigate to the GameSheets directory and run:

   ```bash
   composer install
   ```

3. **Set up the database**

   Create a new database for your game data:

   ```sql
   CREATE DATABASE gamesheets;
   ```

   Then, import the database schema provided in `database/schema.sql`:

   ```bash
   mysql -u root -p gamesheets < database/schema.sql
   ```

4. **Configure the application**

   Copy `config/config.sample.php` to `config/config.php` and update the database connection settings:

   ```php
   <?php
   return [
       'db_host' => 'localhost',
       'db_name' => 'gamesheets',
       'db_user' => 'root',
       'db_pass' => 'yourpassword',
   ];
   ```

5. **Access the application**

   Point your browser to the GameSheets directory (e.g., `http://localhost/gamesheets/`) to access the interface.

## Usage

Once GameSheets is installed and configured, you can:

- **Log in** using your admin credentials (configured in the database).
- **Add game data**: Create tables and insert records for storing game-related information.
- **Run queries**: Use the query editor to write and execute SQL queries against your game database.
- **Monitor performance**: Utilize built-in tools to monitor query performance and optimize your database.

## Benefits of Using GameSheets

1. **Reliability**: Database-driven storage offers greater stability compared to file systems, reducing the risk of data corruption.
2. **Scalability**: Databases can handle large amounts of dynamic game data more efficiently than file-based systems.
3. **Performance**: Optimized database queries improve access speed and efficiency when managing game data.
4. **Security**: User authentication, permissions, and secure database management practices ensure safe handling of sensitive game data.
5. **Maintenance**: Databases provide easier backup, recovery, and maintenance compared to file storage.

## Contributing

We welcome contributions to improve GameSheets! If you'd like to contribute, follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them.
4. Open a pull request with a description of your changes.

## License

GameSheets is a modification of phpMyAdmin and is open-source under the **GNU General Public License** (GPL) v2, as phpMyAdmin is licensed under the same. For more details, see the `LICENSE` file.

## Contact

For questions or feedback, feel free to open an issue on the GitHub repository or contact us at [info@alzenstudios.com].

---

Enjoy more efficient and stable game data management with GameSheets!

```
