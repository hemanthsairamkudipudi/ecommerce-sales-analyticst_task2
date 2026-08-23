import sqlite3
import pandas as pd


def create_connection(database_path):
    """Create and return a connection to the SQLite database."""
    return sqlite3.connect(database_path)


def execute_query(connection, query):
    """Execute a SQL query and return the results as a Pandas DataFrame."""
    return pd.read_sql(query, connection)


def close_connection(connection):
    """Close the SQLite database connection."""
    connection.close()