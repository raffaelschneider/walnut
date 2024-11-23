<p align="center">
  <img src="https://raw.githubusercontent.com/raffaelschneider/walnut/refs/heads/main/.github/static/walnut_252x252.png">
</p>

<h1 align="center">Walnut</h1>

<p align="center">POSIX-compatible Open Knowledge Management Standard<p>

---

Welcome to **Walnut**, the **Open Knowledge Management Standard**. Walnut is an open, flexible, and POSIX-compatible standard for organizing personal knowledge bases—a modern "second brain" system.

## Introduction

In today's information-rich world, effectively managing knowledge is essential. **Walnut** provides a standardized directory structure and conventions using open formats and POSIX tools, ensuring your knowledge base is accessible, portable, and future-proof.

**Walnut** adheres to the **Keep It Simple, Stupid (KISS)** principle, emphasizing simplicity and minimalism. By leveraging standard POSIX tools, you can interact with a Walnut-based repository without the need for specialized software.

## Features

- **Simple and Minimalist**: Designed with the KISS principle in mind, ensuring ease of use and maintenance.
- **POSIX Compatibility**: Utilize standard POSIX tools like `grep`, `find`, `awk`, and `sed` to interact with your knowledge base.
- **Open Formats**: Uses plain text formats such as **Markdown**, **YAML**, and established formats like **BibTeX**.
- **Extensible Tools**: Provides blueprints and shell-based reference implementations of common commands, which can be extended or replaced with more performant custom tools written in any language.
- **Community-Driven**: A curated list of third-party tools will be maintained to showcase community contributions. Contributions are always welcome.

## The Walnut Knowledge Base Structure

Walnut uses a simple and intuitive directory structure to organize your knowledge base. Here's an overview:

```
~/Walnut/
├── Journal/
├── Notes/
│   ├── Personal/
│   ├── Projects/
│   └── Work/
├── References/
│   ├── Articles/
│   ├── Bibliography/
│   ├── Books/
│   ├── Contacts/
│   ├── Media/
│   ├── Papers/
│   ├── Podcasts/
│   └── WebContent/
├── Templates/
│   ├── Journal/
│   │   └── _record.md
│   ├── Notes/
│   │   ├── _note.md
│   │   ├── Personal/
│   │   ├── Projects/
│   │   └── Work/
│   └── References/
│       ├── Articles/
│       ├── Bibliography/
│       ├── Books/
│       ├── Contacts/
│       ├── Media/
│       ├── Papers/
│       ├── Podcasts/
│       └── WebContent/
└── walnut.yml
```

### Directory Explanations

- `Journal/`: Daily journal entries, named with the date for chronological organization.
- `Notes/`: All types of notes, organized into subdirectories.
- `References/`: External resources like articles, books, papers, and media files.
- `Templates/`: Predefined templates for notes and references to maintain consistency.
- `walnut.yml`: Configuration file for setting up your preferences.

## Getting Started

### 1. Install Walnut

You can install Walnut by directly running the `install.sh` script from the GitHub repository:

```bash
curl -fsSL https://raw.githubusercontent.com/raffaelschneider/Walnut/main/src/install.sh | sh
```

This command will execute the `install.sh` script which is going to set up the Walnut directory structure and copy the reference scripts to your `$HOME` directory.

### 2. Customize Your Setup

Navigate to your new knowledge base directory:

```bash
cd ~/Walnut
```

Feel free to modify the directory names and structures to suit your personal workflow. Walnut is designed to be flexible and adaptable.

## Usage

## Contributions

We welcome contributions to improve and expand Walnut. Please read our Contributing Guidelines to get started.

## License

This project is licensed under the MIT License.

---

Feel free to reach out if you have any questions or need assistance in implementing Walnut.

