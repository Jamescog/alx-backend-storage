#!/usr/bin/python3
"""
file: 9-insert_school.py
"""


def insert_school(mongo_collection, **kwargs):
    """ Python function that inserts a new document in a collection based on kwargs
    """
    return mongo_collection.insert_one(**kwargs).inserted_id