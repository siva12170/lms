

## **README.md**

# Spring Boot SimpleMCQmaker Setup (Linux)

This guide will walk you through the steps to set up and run the Spring Boot application for the `SimpleMCQmaker` project on **Linux** with **MySQL**.

## Prerequisites

Before starting, ensure you have the following installed on your system:

* **Java JDK 8 or above**
* **Maven**
* **MySQL**

### Install Java

1. Install OpenJDK (version 8 or above):

#### For Ubuntu/Debian-based Linux:

```bash
sudo apt update
sudo apt install openjdk-11-jdk
```

#### For Fedora/CentOS/RHEL:

```bash
sudo dnf install java-11-openjdk-devel
```

2. Verify the installation:

```bash
java -version
```

### Install Maven

1. Install Maven if it's not already installed:

#### For Ubuntu/Debian-based Linux:

```bash
sudo apt update
sudo apt install maven
```

#### For Fedora/CentOS/RHEL:

```bash
sudo yum install maven
```

2. Verify Maven installation:

```bash
mvn -v
```

### Install MySQL

1. Install MySQL:

#### For Ubuntu/Debian-based Linux:

```bash
sudo apt update
sudo apt install mysql-server
```

#### For Fedora/CentOS/RHEL:

```bash
sudo yum install mysql-server
```

2. Start MySQL service:

```bash
sudo systemctl start mysql
```

3. Secure MySQL installation:

```bash
sudo mysql_secure_installation
```

4. Log into MySQL and create a database:

```bash
sudo mysql -u root -p
```

```sql
CREATE DATABASE simple_mcq;
```

5. You can also create a MySQL user and grant permissions if needed:

```sql
CREATE USER 'mcquser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON simple_mcq.* TO 'mcquser'@'localhost';
FLUSH PRIVILEGES;
```

6. Exit MySQL:

```sql
EXIT;
```

---

## Step 1: Clone the Project

Clone the repository and navigate to the project directory:

```bash
git clone https://github.com/your-repository/SimpleMCQmaker.git
cd SimpleMCQmaker
```

---

## Step 2: Set Up the Database Connection

### MySQL Setup for Spring Boot

1. In the `application.properties` or `application.yml` file of your Spring Boot project, configure the MySQL database connection:

```properties
# application.properties (MySQL configuration)

spring.datasource.url=jdbc:mysql://localhost:3306/simple_mcq
spring.datasource.username=mcquser
spring.datasource.password=password
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.jpa.database-platform=org.hibernate.dialect.MySQL8Dialect
spring.jpa.hibernate.ddl-auto=update
```

Replace `mcquser`, `password`, and the database name `simple_mcq` as needed.

---

## Step 3: Running the Application

### Without Maven Wrapper (`./mvnw`)

If the `mvnw` script is not found (Maven Wrapper is not configured), use your system’s installed Maven.

1. Navigate to the project directory:

   ```bash
   cd ~/Downloads/Telegram\ Desktop/SimpleMCQmaker
   ```

2. Run the Spring Boot application:

   ```bash
   mvn spring-boot:run
   ```

This will compile and start the Spring Boot application.

### With Maven Wrapper (`./mvnw`)

If you want to use the Maven Wrapper instead of the system Maven, generate the Maven Wrapper by running the following command:

1. In the project directory, run:

   ```bash
   mvn -N io.takari:maven:wrapper
   ```

This will generate the `mvnw` and `mvnw.cmd` scripts.

2. Then, you can run the Spring Boot application with the wrapper:

   ```bash
   ./mvnw spring-boot:run
   ```

### Grant Execute Permissions for `mvnw` (If Required)

If you encounter a "Permission denied" error when running `./mvnw`, you may need to grant execute permissions for the script:

```bash
chmod +x mvnw
```

Then try running the project again:

```bash
./mvnw spring-boot:run
```

---

## Step 4: Accessing the Application

Once the Spring Boot application has started, it will usually be accessible at:

```bash
http://localhost:8080
```

Open your web browser and navigate to that URL to see the app in action.

---

## Step 5: Running the Project in VS Code

To run the project directly in **VS Code**, follow these steps:

### 1. **Open VS Code**

* Launch **VS Code** and open the project directory (`SimpleMCQmaker`).

### 2. **Install Extensions**

* Install the following extensions for a smooth experience:

  * **Java Extension Pack** (includes necessary Java tools for VS Code)
  * **Spring Boot Extension Pack** (for Spring Boot support)

### 3. **Set Up the Launch Configuration**

* Go to the `Run` panel in VS Code (on the left sidebar).
* Click on **Add Configuration** and choose **Java**. This will create a `.vscode/launch.json` file.
* Add a configuration for running the Spring Boot application:

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "type": "java",
      "name": "Spring Boot: SimpleMCQmaker",
      "request": "launch",
      "mainClass": "com.example.SimpleMCQmaker.Application",
      "projectName": "SimpleMCQmaker",
      "args": "",
      "vmArgs": "",
      "env": {},
      "cwd": "${workspaceFolder}"
    }
  ]
}
```

Make sure to replace `com.example.SimpleMCQmaker.Application` with the correct main class of your application.

### 4. **Run the Application**

* After setting up, click on the **Run** button in the top-right corner of VS Code or use `Ctrl+F5` to start the application.

---

## Troubleshooting

* If you encounter any issues, make sure:

  1. You are inside the correct directory with the `pom.xml` file.
  2. If using Maven Wrapper, run the `mvn -N io.takari:maven:wrapper` command to generate the wrapper.
* Ensure that **Java**, **Maven**, and **MySQL** are installed correctly by verifying them with the following commands:

  ```bash
  java -version
  mvn -v
  mysql --version
  ```


