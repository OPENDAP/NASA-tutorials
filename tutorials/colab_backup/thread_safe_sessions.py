#################################################################################
#
# Thread Safe Session Acquisition And Reuse
#
""" Thread Safe Session Acquisition And Reuse:
    Used to ensure that each thread has its own
    session for the HTTP Requests package """

# The requests package provides a high-level interface to HTTP/S
import requests

# Must have threading to do threads
import threading

# Create a "bucket" for the current thread to hold information
# that needs to be unique to it.
thread_local_data = threading.local()


def get_session() -> object:
    """
    With 'thread_local' above, get a new session object for each thread. Reuse session
    for existing threads. The Requests Session object is not multi-thread safe.
    """
    if not hasattr(thread_local_data, "session"):
        thread_local_data.session = requests.Session()
    return thread_local_data.session

#################################################################################
