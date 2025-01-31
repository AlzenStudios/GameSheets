
# new GameSheets structure

![image](https://github.com/user-attachments/assets/07f23b18-509c-4efd-bdbd-493421a83cfc)

# **GameSheets** 🕹️📊  
_A lightweight **game database management tool**, similar to phpMyAdmin, designed for game developers._  

---

## **📂 Project Structure**  
```
/gamesheets
│── backend/                # Express.js API (Node.js + Sequelize + MySQL/PostgreSQL)
│── frontend/               # Next.js UI (React + TailwindCSS + ShadCN)
│── npm_install.sh          # Installs npm on the system (Git Bash)
│── npm_install_required.sh # Installs required dependencies in backend & frontend
│── progit.sh               # Git helper script for easy commit/push/pull
│── README.md               # This file
```

---

## **🚀 How to Install & Run**  

### **1️⃣ Install npm (If Not Installed)**
```sh
./npm_install.sh
```
📌 **Checks if npm is installed and installs it automatically.**  

### **2️⃣ Install All Required Libraries**
```sh
./npm_install_required.sh
```
📌 **Installs dependencies for both `backend/` and `frontend/`.**  

### **3️⃣ Start the Backend API**
```sh
cd backend
npm run dev
```
📌 **Runs Express.js API with JWT authentication, database support (MySQL/PostgreSQL).**  

### **4️⃣ Start the Frontend**
```sh
cd frontend
npm run dev
```
📌 ** To run backend / frontend simuntaniusly you will need to run the following command **  
```sh

./start-server.sh

```
---

## **🛠️ Features**
- **Database Management:** View, edit, delete game-related data (players, items, etc.).
- **Authentication:** Secure login with JWT tokens.
- **REST API:** Backend exposes an API for easy integration.
- **UI Components:** Uses `ShadCN` for clean, modern UI.
- **Security:** Uses `helmet`, `bcrypt`, and `CORS` protection.

---

## **💾 Database Setup**
1️⃣ **MySQL Setup (If Using MySQL)**
locate to ``` cd backend/scripts ``` and start a new cmd instance from there, and run command ``` ./mysql-handshake.sh {other_mysql_arguments} ``` here you can run mysql commands to the database easly, to create an new database run the following command under here:
```sh
./mysql-handshake.sh CREATE DATABASE gamesheets;
```
3️⃣ **Configure `.env` in `backend/`**
```ini
DB_USER=root
DB_PASSWORD=yourpassword
DB_HOST=localhost
DB_NAME=gamesheets
JWT_SECRET=your_secret_key
```
