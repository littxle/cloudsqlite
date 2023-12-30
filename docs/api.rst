
API Reference
=============

.. module:: cloudsqlite

Connection
----------

.. autofunction:: connect

.. autoclass:: Connection
    :special-members: __aenter__, __aexit__, __await__

Cursors
-------

.. autoclass:: cloudsqlite.cursor.Cursor
    :special-members: __aiter__, __anext__, __aenter__, __aexit__

Errors
------

.. autoexception:: Warning
    :members:

.. autoexception:: Error
    :members:

.. autoexception:: DatabaseError
    :members:

.. autoexception:: IntegrityError
    :members:

.. autoexception:: ProgrammingError
    :members:

.. autoexception:: OperationalError
    :members:

.. autoexception:: NotSupportedError
    :members:

Advanced
--------

.. autofunction:: register_adapter

.. autofunction:: register_converter

