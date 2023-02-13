#!/usr/bin/env python3
"""
file: 10-update_topics.py
"""


def update_topics(mongo_collection, name, topics):
    """Python function that changes all topics of a school document based on the name
    """

    mongo_collection.update_one({
        "name":name
    },
    
        {"$set": {"topics": topics}}
    )
    return mongo_collection