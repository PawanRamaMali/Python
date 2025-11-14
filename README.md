# Python Programming: From Zero to Hero

![Python Logo](https://www.python.org/static/community_logos/python-logo-generic.svg)

A comprehensive, interactive ebook for learning Python programming from beginner to advanced level.

## Live Ebook

**Read the book online:** [https://pawanramamali.github.io/Python/](https://pawanramamali.github.io/Python/)

## About This Book

This is a comprehensive guide to mastering Python, one of the most popular and versatile programming languages in the world. The book covers everything from basic syntax to advanced concepts, with:

- **38 Comprehensive Chapters** organized into 9 major parts
- **Interactive Code Examples** that you can run and modify
- **Progressive Learning** - each chapter builds on previous knowledge
- **Real-World Applications** and practical exercises
- **Modern Best Practices** and Python idioms

## Book Structure

### Part I: Getting Started
- Introduction to Python
- Installation and Setup
- Your First Program

### Part II: Python Fundamentals
- Variables and Data Types
- Operators
- Strings
- Input/Output

### Part III: Control Flow
- Conditionals
- Loops
- Break and Continue

### Part IV: Data Structures
- Lists
- Tuples
- Dictionaries
- Sets

### Part V: Functions and Modules
- Functions
- Scope
- Lambda Functions
- Modules and Packages

### Part VI: Object-Oriented Programming
- Classes and Objects
- Inheritance
- Polymorphism
- Encapsulation

### Part VII: File Handling and Exceptions
- File I/O
- Exception Handling
- Context Managers

### Part VIII: Advanced Topics
- Decorators
- Generators
- Iterators
- Comprehensions

### Part IX: Standard Library Essentials
- datetime
- collections
- itertools
- pathlib

### Part X: Best Practices and Beyond
- Testing
- Debugging
- Best Practices
- Next Steps

## Building Locally

This book is built using [Quarto](https://quarto.org/), an open-source scientific and technical publishing system.

### Prerequisites

- [Quarto](https://quarto.org/docs/get-started/) (latest version)
- Python 3.11+
- pip packages: `jupyter matplotlib numpy pandas seaborn`

### Build Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/PawanRamaMali/Python.git
   cd Python
   ```

2. Install Python dependencies:
   ```bash
   pip install jupyter matplotlib numpy pandas seaborn
   ```

3. Render the book:
   ```bash
   quarto render
   ```

4. Preview locally:
   ```bash
   quarto preview
   ```

The rendered book will be in the `_book/` directory.

## Contributing

Contributions are welcome! If you find errors, have suggestions, or want to add content:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## Automatic Deployment

This book is automatically built and deployed to GitHub Pages using GitHub Actions whenever changes are pushed to the main branch.

## License

This project is licensed under the terms specified in the [LICENSE](LICENSE) file.

## Author

Python Learning Community

---

**Happy Learning! 🐍**
