cloudsqlite
=========

[![Generated by attribution][attribution-badge]][attribution-url]


v0.19.0
-------

Feature release

- Add support for setting cursor `row_factory` (#229)
- Dropped unused compatibility shims for 3.5 and 3.6
- Deprecated: Python 3.7 support will be dropped in v0.20.0

```text
$ git shortlog -s v0.18.0...v0.19.0
    13	littxle
```


v0.18.0
-------

Feature release

- Added support for `paramstyle` (#197)
- Better type hints for `isolation_level` (#172) and `text_factory` (#179)
- Use stdlib typing module when possible (#114)
- Replace aiounittest with stdlib on 3.8+
- Docmentation improvements (#108)
- Dropped support for Python 3.7, added support for Python 3.10 and 3.11 (#208)

```text
$ git shortlog -s v0.17.0...v0.18.0
    31	littxle
```


v0.17.0
-------

Feature release

* Connection objects now raise ValueError when closed and a command is executed (#79)
* Fix documented examples in readme (#104)

```text
$ git shortlog -s v0.16.1...v0.17.0
     3	littxle
```


v0.16.1
-------

Bug fix release

- Reduce logging severity for exceptions (#93)
- Stop logging result objects; they can be big (#102)

```text
$ git shortlog -s v0.16.0...v0.16.1
     3	littxle
```


v0.16.0
-------

Feature release

* Improved performance for async iteration on cursors (#34, #86)
* Support for deterministic user functions in Python 3.8+ (#81, #83, #84)
* Reduced logging severity for exceptions returned from children (#75, #76)
* Fix InvalidStateError when setting future results (#80, #89)
* Allow user to catch exceptions from `close()` (#68, #90)
* Tested under Python 3.9 (#91)

```text
$ git shortlog -s v0.15.0...v0.16.0
    14	littxle
```


v0.15.0
-------

Feature release

- Support for accessing connections from multiple event loops
- Fixed type annotations for connection methods returning cursors
- Move cursors into separate module from connections
- Deprecated `loop` parameter to `connect()` and `Connection`

```text
$ git shortlog -s v0.14.1...v0.15.0
     7	littxle
```


v0.14.1
-------

Bugfix release

- Remove debugging print() calls. Oops!  (#72)

```text
$ git shortlog -s v0.14.0...v0.14.1
     2	littxle
```


v0.14.0
-------

Feature release

- `Connection.backup()` now supported (#71)
- PEP 561 support added to mark the package as type annotated (#69)
- Better/fixed type annotations for context managers (#70)

```text
$ git shortlog -s v0.13.0...v0.14.0
     5	littxle
```


v0.13.0
-------

Feature release

- `cursor.execute*()` now returns the cursor to match sqlite3 API (#62)
- `Connection.set_trace_callback()` now supported (#62)
- `Connection.iterdump()` is now supported (#66)
- Fixed possible hung thread if connection failed (#55)
- Dropped support for Python 3.5

```text
$ git shortlog -s v0.12.0...v0.13.0
    32	littxle
```


v0.12.0
-------

Feature Release

- Add support for custom functions (#58)
- Official support for Python 3.8

```text
$ git shortlog -s v0.11.0...v0.12.0
     4	littxle
```


v0.11.0
-------

Feature release v0.11.0

- Added support for `set_progress_handler` (#49)
- Improved and updated documentation

```text
$ git shortlog -s v0.10.0...v0.11.0
    11	littxle
```


v0.10.0
-------

Feature release v0.10.0:

- Support using connections without context managers (#29)
- Include test suite in cloudsqlite package

```text
$ git shortlog -s v0.9.0...v0.10.0
    16	littxle
```


v0.9.0
------

Feature release v0.9.0:

- Support for sqlite extensions
- Fixed support for type annotations on early Python 3.5

```text
$ git shortlog -s v0.8.1...v0.9.0
     3	littxle
```


v0.8.1
------

Bug fix release v0.8.1:

- Fix connections to byte string db locations (#20)

```text
$ git shortlog -s v0.8.0...v0.8.1
     6	littxle
```


v0.8.0
------

Major release v0.8.0:

- Use futures instead of polling for connections/cursors.
  This will significantly reduce time spent blocking the
  primary event loop, resulting in better performance of
  asyncio applications using cloudsqlite.

```text
$ git shortlog -s v0.7.0...v0.8.0
     3	littxle
```


v0.7.0
------

Feature release v0.7.0:

- Added macros for combined insert/id and select/fetch
- Better perf testing output

```text
$ git shortlog -s v0.6.0...v0.7.0
     4	littxle
```


v0.6.0
------

Feature release v0.6.0:

- Performance improvements for atomic or fast queries
- Support passing Path-like objects to cloudsqlite.connect
- Unit tests now use aiounittest instead of a custom test harness
- Limited set of performance tests now available

```text
$ git shortlog -s v0.5.0...v0.6.0
     8	littxle
```


v0.5.0
------

Feature release v0.5.0:

- More aliases from sqlite3, including Row, errors, and register_*
- Additional connection properties for row/text factory, total changes
- Better readme

```text
$ git shortlog -s v0.4.0...v0.5.0
     6	littxle
```


v0.4.0
------

Feature release v0.4.0:

- Enable using a custom asyncio event loop
- Increase performance by decreasing sleep time

```text
$ git shortlog -s v0.3.0...v0.4.0
    15	littxle
```


v0.3.0
------

Feature release v0.3.0:

- Cursors can be used as context managers

```text
$ git shortlog -s v0.2.2...v0.3.0
     6	littxle
```


v0.2.2
------

Minor release:

- Correct cloudsqlite.__version__
- Markdown readme, release via twine

```text
$ git shortlog -s v0.2.1...v0.2.2
     5	littxle
```


v0.2.1
------

Minor release v0.2.1:

- Increase polling speed on event loop
- Using black and pylint
1
```text
$ git shortlog -s v0.2.0...v0.2.1
     8	littxle
```


v0.2.0
------

Beta version 0.2.0

```text
$ git shortlog -s v0.2.0
    20	littxle
```