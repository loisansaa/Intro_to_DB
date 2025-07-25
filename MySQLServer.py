import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL server (without specifying a database)
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='your_password'  # Replace with your actual password
        )

        if connection.is_connected():
            cursor = connection.cursor()

            # Create database (will not raise error if it already exists)
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error:
        print(f"Error while connecting to MySQL: {mysql.connector.Error.msg}")

    finally:
        try:
            if connection.is_connected():
                cursor.close()
                connection.close()
                print("MySQL connection is closed.")
        except NameError:
            pass  # in case connection failed before being defined

if __name__ == "__main__":
    create_database()
