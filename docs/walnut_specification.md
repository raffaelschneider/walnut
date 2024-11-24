# Walnut Specification

```
Cyberparadism Engineering Task Force (CETF)                      R. Schneider
Request for Comments: 0001                                            Raskell
Category: Standards Track                                   November 24, 2024

              The Walnut Knowledge Base Standard Specification

Abstract

   This document specifies the Walnut Knowledge Base Standard, an open,
   flexible, and POSIX-compatible standard for organizing personal
   knowledge bases—a modern "second brain" system. Walnut emphasizes
   simplicity, portability, and the use of open formats, allowing users
   to manage their knowledge effectively using standard tools.

Table of Contents

   1. Introduction .................................................... 2
   2. Conventions Used in This Document ............................... 2
   3. Overview of Walnut .............................................. 3
   4. Directory Structure ............................................. 3
      4.1. Walnut/ .................................................... 4
         4.1.1. Journal/ .............................................. 4
         4.1.2. Notes/ ................................................ 4
         4.1.3. References/ ........................................... 5
         4.1.4. Templates/ ............................................ 6
         4.1.5. walnut.yml ............................................ 6
   5. File Naming Conventions ......................................... 6
   6. File Formats .................................................... 7
      6.1. Markdown Files ............................................. 7
      6.2. YAML Front Matter .......................................... 7
      6.3. BibTeX Files ............................................... 8
      6.4. URL Files .................................................. 8
   7. Metadata and Annotations ........................................ 9
   8. Interaction with POSIX Tools .................................... 9
   9. Extensibility ...................................................10
   10. Security Considerations ........................................10
   11. IANA Considerations ............................................10
   12. References .....................................................11
   Appendix A. Acknowledgments ........................................11

1. Introduction

   In an era of information overload, effectively managing personal
   knowledge is essential. The Walnut Knowledge Base Standard provides a
   structured approach to organizing notes, references, and other
   knowledge artifacts using open formats and POSIX-compatible tools.
   Walnut is designed to be simple, flexible, and extensible, enabling
   users to maintain their knowledge bases without reliance on
   proprietary software.

2. Conventions Used in This Document

   The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT",
   "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this
   document are to be interpreted as described in RFC 2119 [RFC2119].

3. Overview of Walnut

   Walnut is a standard that defines a directory structure, file naming
   conventions, and file formats for personal knowledge bases. It
   emphasizes:

   *  Simplicity: Adhering to the KISS (Keep It Simple, Stupid)

   *  principle for ease of use and maintenance.

   *  Open Formats: Utilizing plain text formats like Markdown, YAML,
      and BibTeX to ensure longevity and accessibility.

   *  POSIX Compatibility: Allowing interaction with the knowledge
      base using standard POSIX tools such as `grep`, `find`, `awk`,
      and `sed`.

   *  Flexibility: Adapting to individual workflows and preferences.

   *  Extensibility: Encouraging the development and sharing of
      custom tools and scripts.

4. Directory Structure

   The default Walnut knowledge base follows a hierarchical directory
   structure as outlined below. This structure organizes content into
   logical categories, making it easy to locate and manage information.

      Walnut/
      ├── Journal/
      │   └── 1970-01-01-record.md
      ├── Notes/
      │   ├── Personal/
      │   │   └── 1970-01-01-personal-note.md
      │   ├── Projects/
      │   │   └── 1970-01-01-project-note.md
      │   └── Work/
      │       └── 1970-01-01-work-note.md
      ├── References/
      │   ├── Articles/
      │   │   └── 1970-01-01-article.pdf
      │   ├── Bibliography/
      │   │   └── 1970-01-01-reference.bibtex
      │   ├── Books/
      │   │   └── 1970-01-01-book.epub
      │   ├── Contacts/
      │   │   └── 1970-01-01-contact.txt
      │   ├── Glossary/
      │   │   └── 1970-01-01-definition.md
      │   ├── Media/
      │   │   └── 1970-01-01-screenshot.png
      │   ├── Papers/
      │   │   └── 1970-01-01-paper.pdf
      │   ├── Podcasts/
      │   │   └── 1970-01-01-podcast.mp3
      │   └── WebContent/
      │       └── 1970-01-01-page.url
      ├── Templates/
      │   ├── Journal/
      │   │   └── _record.md
      │   ├── Notes/
      │   │   └── _note.md
      │   └── References/
      │       └── Bibliography/
      │           └── _reference.bibtex
      └── walnut.yml

4.1. Walnut/

   The root directory of the Walnut knowledge base. All content and
   configurations reside within this directory.

4.1.1. Journal/

   *  Purpose: Stores daily journal entries.

   *  File Naming: Files SHOULD be named using the date format
      `YYYY-MM-DD-record.md`.

   *  Content: Personal reflections, daily logs, or diary entries.

4.1.2. Notes/

   *  Purpose: Contains personal notes organized by category.

   *  Subdirectories:

     *  Personal/: Personal thoughts, ideas, and miscellaneous notes.

     *  Projects/: Notes related to specific projects.

     *  Work/: Professional or work-related notes.

   *  File Naming: Files SHOULD be named with a date prefix and a
      descriptive title, e.g., `YYYY-MM-DD-note-title.md`.

   *  Content: Written in Markdown, including YAML front matter for
      metadata.

4.1.3. References/

   *  Purpose: Holds all reference materials and external resources.

   *  Subdirectories:

     *  Articles/:

       *  Files: Articles in PDF or other formats.

       *  Example: `1970-01-01-article.pdf`

     *  Bibliography/:

       *  Files: BibTeX bibliographic references.

       *  Example: `references.bib`

     *  Books/:

       *  Files: Digital books in EPUB or PDF format.

       *  Example: `1970-01-01-book.epub`

     *  Contacts/:

       *  Files**: Contact information in plain text.

       *  Example: `1970-01-01-contact.txt`

     *  Media/:

       *  Files: Images, screenshots, scans, and other media files.

       * Example: `1970-01-01-image.png`

     * Papers/:

       * Files: Academic papers and research documents.

       * Example: `1970-01-01-paper.pdf`

     * Podcasts/:

       * Files: Audio files of podcasts.

       * Example: `1970-01-01-podcast.mp3`

     * WebContent/:

       * .url Files: Stores URLs and metadata.

         * Example: `1970-01-01-page.url`

       * Content Directories**: Named after the `.url` files,

         containing downloaded web content.

         * Example: `1970-01-01-page/`

4.1.4. Templates/

   * Purpose: Contains templates for creating new entries, ensuring
     consistency.

   * Subdirectories:

     * Journal/:

       * Template: `_record.md`

     * Notes/:

       * Template: `_note.md`

       * Categories: Placeholder directories for category-specific
         templates.

     * References/:

       * Templates: Placeholder directories for reference templates.

   * File Naming: Template files SHOULD begin with an underscore `_`.

4.1.5. walnut.yml

- **Purpose**: Configuration file for the Walnut knowledge base.
- **Format**: YAML
- **Usage**: Stores settings and preferences, such as file naming
  conventions and default directories.

5. File Naming Conventions

- **Date Prefix**: Files SHOULD begin with a date prefix in the
  format `YYYY-MM-DD-` to facilitate chronological sorting.
- **Descriptive Titles**: After the date prefix, files SHOULD include
  a brief descriptive title.
- **Templates**: Template files SHOULD begin with an underscore `_`
  to differentiate them from regular content files.
- **No Spaces**: Spaces in file names SHOULD be avoided. Use hyphens
  `-` or underscores `_` instead.
- **File Extensions**: Appropriate file extensions MUST be used, such
  as `.md` for Markdown files, `.bib` for BibTeX files, and `.url`
  for URL files.

6. File Formats

6.1. Markdown Files

   - **Usage**: For notes, journal entries, and documentation.
   - **Extension**: `.md`
   - **Content**: Written in Markdown for readability and compatibility.
   - **Example**:
        <sourcecode type="markdown">

  ---
  title: "Meeting Notes"
  date: "2023-11-24"
  tags: ["meetings", "project-x"]
  ---
  
  # Meeting Notes
  
  Discussion points...
  ```

6.2. YAML Front Matter

- **Usage**: Stores metadata at the beginning of Markdown files.
- **Format**:

  ```yaml
  ---
  title: "Note Title"
  date: "YYYY-MM-DD"
  tags: ["tag1", "tag2"]
  ---
  ```

- **Fields**:
  - **title**: The title of the note.
  - **date**: The creation date in `YYYY-MM-DD` format.
  - **tags**: A list of tags for categorization.

6.3. BibTeX Files

- **Usage**: For bibliographic references.
- **Extension**: `.bib`
- **Content**: Standard BibTeX format.
- **Example**:

  ```bibtex
  @article{einstein1905,
    author = {Einstein, Albert},
    title = {On the Electrodynamics of Moving Bodies},
    journal = {Annalen der Physik},
    year = {1905},
    volume = {17},
    pages = {891--921}
  }
  ```

6.4. URL Files

- **Usage**: Stores web links with metadata.
- **Extension**: `.url`
- **Format**:

  ```
  URL: https://example.com/article
  Title: "Understanding Artificial Intelligence"
  Date: "2023-11-24"
  Tags: ["AI", "Machine Learning"]
  ```

- **Associated Content**: If web content is downloaded, it SHOULD be
  stored in a directory named after the `.url` file.

7. Metadata and Annotations

- **YAML Front Matter**: SHOULD be used in Markdown files to store
  metadata such as title, date, and tags.
- **Annotations**:
  - MAY be included within the content of Markdown files.
  - MAY be stored as separate files associated with references.
- **Tags**:
  - SHOULD be used to categorize and link related content.
  - SHOULD be consistent across files for effective organization.

8. Interaction with POSIX Tools

Walnut is designed to be compatible with standard POSIX tools,
allowing users to interact with their knowledge base using familiar
commands.

- **Searching**: Use `grep` to search for text within files.

  ```bash
  grep -ri "search term" ~/Walnut
  ```

- **Finding Files**: Use `find` to locate files by name or type.

  ```bash
  find ~/KnowledgeBase -name "*keyword*"
  ```

- **Processing Data**: Use `awk` and `sed` for text processing and
  data manipulation.

- **Automation**: Use shell scripts to automate tasks such as
  indexing, backups, and synchronization.

9. Extensibility

- **Custom Scripts**:
  - Users MAY create custom scripts to enhance functionality.
  - Scripts SHOULD be stored in a hidden directory, such as
    `~/.walnut_scripts/`.
- **Reference Implementations**:
  - Basic shell-based implementations of common commands MAY be
    provided.
  - Users MAY extend or replace these with more performant tools in
    any language.
- **Community Contributions**:
     - Users are encouraged to share their custom tools and scripts.
     - A curated list of third-party tools MAY be maintained.

10. Security Considerations

    - **Data Privacy**:
      - Users SHOULD be aware of the sensitivity of the information
        stored.
      - Sensitive data SHOULD be protected using encryption or secure
        storage solutions.
    - **Access Control**:
      - Appropriate permissions SHOULD be set to prevent unauthorized
        access.
    - **Backups**:
      - Regular backups SHOULD be performed to prevent data loss.
      - Backup locations SHOULD be secure.

11. IANA Considerations

    This document has no IANA actions.

12. References

   [RFC2119]  Bradner, S., "Key words for use in RFCs to Indicate
              Requirement Levels", BCP 14, RFC 2119, March 1997.

   Appendix A. Acknowledgments

   The Walnut project acknowledges all individuals who contributed ideas
   and feedback to shape this standard, promoting effective and open
   knowledge management practices.

   R. Schneider
   Email: raffael.schneider@protonmail.com
```
