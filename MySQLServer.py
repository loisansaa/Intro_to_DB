#!/usr/bin/python3
import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL Server (replace with your details)
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='yourpassword'
        )

        if connection.is_connected():
            cursor = connection.cursor()

            # Create database only if it does not exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

            print("Database 'alx_book_store' created successfully!")

    except Error as e:
        print("Error while connecting to MySQL:", e)

    finally:
        # Close cursor and connection if open
        if connection.is_connected():
            cursor.close()
            connection.close()

if __name__ == "__main__":
    create_database()
