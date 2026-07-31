# Book Collection App

*(This README is intentionally rough so you can improve it with GitHub Copilot CLI)*

A Python app for managing books you have or want to read.
It can add, remove, and list books. Also mark them as read.

---

## Current Features

* Reads books from a JSON file (our database)
* Input checking is weak in some areas
* Some tests exist but probably not enough

---

## Files

* `samples/book-app-project/book_app.py` - Main CLI entry point
* `samples/book-app-project/books.py` - BookCollection class with data logic
* `samples/book-app-project/utils.py` - Helper functions for UI and input
* `samples/book-app-project/data.json` - Sample book data
* `samples/book-app-project/tests/test_books.py` - Starter pytest tests

---

## Running the App

```bash
python samples/book-app-project/book_app.py list
python samples/book-app-project/book_app.py add
python samples/book-app-project/book_app.py find
python samples/book-app-project/book_app.py remove
python samples/book-app-project/book_app.py help
```

## Running Tests

```bash
python -m pytest samples/book-app-project/tests/
```

---

## Notes

* Not production-ready (obviously)
* Some code could be improved
* Could add more commands later
