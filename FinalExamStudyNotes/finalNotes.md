# Final Exam Study Notes

**Course:** CIS106 Linux Fundamentals  
**Topic:** GitHub, Markdown, Linux Commands, Paths, Redirection, Wildcards, Brace Expansion, and Shell Scripting  

---

# 4. Questions

---

## a. How to Clone a GitHub Repository

**Cloning** a GitHub repository means downloading a copy of a repository from GitHub to your computer or virtual machine.

### Basic Syntax

```bash
git clone repository_url
```

### Example

```bash
git clone https://github.com/username/repository-name.git
```

### Steps

1. Go to **GitHub**.
2. Open the repository.
3. Click the green **Code** button.
4. Copy the repository URL.
5. Open the terminal in Debian.
6. Run the `git clone` command.
7. Open the folder in VS Code.

### Example Workflow

```bash
cd Documents
git clone https://github.com/username/cis106.git
cd cis106
```

### Explanation

- `cd Documents` moves into the Documents directory.
- `git clone` downloads the GitHub repository.
- `cd cis106` moves into the cloned repository.

---

## b. How to Use Git Commands

Git commands are used to manage changes in files and upload work to GitHub.

### Common Git Commands

| Command | Meaning |
|---|---|
| `git clone` | Downloads a repository from GitHub |
| `git status` | Shows the status of files |
| `git pull` | Downloads the newest changes from GitHub |
| `git add .` | Adds all changed files to staging |
| `git commit -m "message"` | Saves the changes with a message |
| `git push` | Uploads changes to GitHub |

---

### Common Git Workflow

```bash
git pull
git status
git add .
git commit -m "Updated final exam notes"
git push
```

### Explanation

- `git pull` gets the latest changes.
- `git status` checks what files changed.
- `git add .` adds all files.
- `git commit -m` saves the changes with a message.
- `git push` uploads the changes to GitHub.

---

### Example: Uploading a Markdown File to GitHub

```bash
git status
git add finalNotes.md
git commit -m "Added final exam study notes"
git push
```

---

## c. How to Write a Markdown File That Contains Images and Proper Formatting

Markdown is used to write formatted notes using simple symbols.

Markdown files end with:

```text
.md
```

Example:

```text
finalNotes.md
```

---

### Headings

Use `#` symbols to create headings.

```markdown
# Heading 1
## Heading 2
### Heading 3
```

---

### Bold Text

```markdown
**This text is bold**
```

Example:

```markdown
**Important command**
```

---

### Italic Text

```markdown
*This text is italic*
```

Example:

```markdown
*This is a note*
```

---

### Inline Code

Use backticks for short commands inside a sentence.

```markdown
Use the `ls` command to list files.
```

---

### Code Blocks

Use three backticks before and after commands.

````markdown
```bash
ls
pwd
cd Documents
```
````

---

### Bullet List

```markdown
- First item
- Second item
- Third item
```

---

### Numbered List

```markdown
1. Step one
2. Step two
3. Step three
```

---

### Tables

```markdown
| Command | Meaning |
|---|---|
| `ls` | Lists files |
| `pwd` | Shows current directory |
```

---

### Images in Markdown

To insert an image, use this format:

```markdown
![Image description](image-name.png)
```

### Example

```markdown
![GitHub Screenshot](github-screenshot.png)
```

### Image Inside a Folder

If the image is inside a folder named `images`, write:

```markdown
![Terminal Screenshot](images/terminal.png)
```

---

## d. How to Convert a Markdown File to PDF

The CIS106 final exam guide says you should know how to convert a Markdown file to PDF.

One way to do this is with VS Code and a Markdown PDF extension. Another way is using `pandoc`.

---

### Method 1: Using VS Code

1. Open the Markdown file in VS Code.
2. Make sure a Markdown PDF extension is installed.
3. Right-click the Markdown file.
4. Choose the option to export or convert to PDF.

---

### Method 2: Using Pandoc

Install Pandoc:

```bash
sudo apt install pandoc
```

Convert the Markdown file to PDF:

```bash
pandoc finalNotes.md -o finalNotes.pdf
```

### Explanation

| Part | Meaning |
|---|---|
| `pandoc` | Program used to convert files |
| `finalNotes.md` | Input Markdown file |
| `-o` | Output option |
| `finalNotes.pdf` | Output PDF file |

---

# 5. How to Compress Zip a Directory or Folder in Debian

To compress a directory in Debian, use the `zip` command.

---

## Install Zip

```bash
sudo apt install zip
```

---

## Zip a Folder

```bash
zip -r final_exam_study_notes.zip final_exam_study_notes
```

### Explanation

| Part | Meaning |
|---|---|
| `zip` | Creates a zip file |
| `-r` | Includes everything inside the folder |
| `final_exam_study_notes.zip` | Name of the zip file |
| `final_exam_study_notes` | Folder being compressed |

---

## Example

```bash
zip -r lab_files.zip lab_files
```

This creates a compressed file named `lab_files.zip`.

---

# 6. Absolute Paths and Relative Paths

The Linux filesystem uses paths to locate files and directories.

---

## Absolute Path

An **absolute path** starts from the root directory `/`.

It gives the complete location of a file or folder.

### Example

```bash
/home/student/Documents/finalNotes.md
```

### Creating a File Using an Absolute Path

```bash
touch /home/student/Documents/finalNotes.md
```

### Moving to a Directory Using an Absolute Path

```bash
cd /home/student/Documents
```

### Listing Files Using an Absolute Path

```bash
ls /home/student/Documents
```

---

## Relative Path

A **relative path** starts from the current directory.

It does not start with `/`.

### Example

```bash
Documents/finalNotes.md
```

### Creating a File Using a Relative Path

```bash
touch finalNotes.md
```

### Creating a File Inside a Folder Using a Relative Path

```bash
touch notes/finalNotes.md
```

### Moving Using a Relative Path

```bash
cd Documents
```

---

## When to Use Each Path

| Path Type | When to Use It |
|---|---|
| Absolute path | When you want to give the full location |
| Relative path | When you are already near the file or folder |

---

# 7. How to Work With Manual Pages Man Command

The `man` command opens the manual page for a command.

Manual pages explain what a command does, its syntax, and options.

---

## Syntax

```bash
man command
```

---

## Example

```bash
man ls
```

This opens the manual page for the `ls` command.

---

## Useful Keys in Manual Pages

| Key | What It Does |
|---|---|
| `Space` | Moves down one page |
| `b` | Moves back one page |
| `/word` | Searches for a word |
| `n` | Goes to the next search result |
| `q` | Quits the manual page |

---

# 8. How to Parse Search for Specific Words in the Manual Page

To search inside a manual page, first open the manual page.

---

## Example

```bash
man ls
```

Then type:

```bash
/option
```

Press **Enter**.

To go to the next result, press:

```bash
n
```

To quit, press:

```bash
q
```

---

## Search a Man Page With grep

```bash
man ls | grep "sort"
```

This searches for the word `sort` inside the manual page for `ls`.

---

# 9. How to Redirect Output `>`, `>>`, and `|`

Redirection sends the output of a command to a file or to another command.

---

## `>` Redirect and Overwrite

The `>` symbol sends output to a file. If the file already has content, it overwrites it.

### Example

```bash
ls > files.txt
```

This saves the output of `ls` into `files.txt`.

---

## `>>` Append Output

The `>>` symbol adds output to the end of a file.

### Example

```bash
date >> files.txt
```

This adds the current date to the end of `files.txt`.

---

## `|` Pipe

The pipe `|` sends the output of one command to another command.

### Example

```bash
ls | grep ".txt"
```

This lists files and then filters only the files that contain `.txt`.

---

# 10. How to Append the Output of a Command to a File

To append output, use `>>`.

---

## Example

```bash
echo "This is a new line" >> notes.txt
```

This adds the sentence to the end of `notes.txt`.

---

## Another Example

```bash
ls -l >> notes.txt
```

This adds the long list output of `ls -l` to the end of `notes.txt`.

---

# 11. How and When to Redirect Output of a Command to Another Command Pipes

A pipe sends the output of one command to another command.

---

## Syntax

```bash
command1 | command2
```

---

## Example

```bash
ls | grep "notes"
```

### Explanation

- `ls` lists files.
- `grep "notes"` searches for files that contain the word `notes`.

---

## Another Example

```bash
cat finalNotes.md | wc -l
```

This counts the lines inside `finalNotes.md`.

---

## When to Use Pipes

Use pipes when you want to:

- Search output.
- Filter output.
- Count lines or words.
- Combine commands.
- Send one command result into another command.

---

# 12. How to Use echo and Output Redirection to Create a New File That Contains Text

The `echo` command displays text. With redirection, it can create a file.

---

## Create a New File With Text

```bash
echo "Hello World" > hello.txt
```

This creates a file named `hello.txt` with the text `Hello World`.

---

## Append More Text

```bash
echo "This is another line" >> hello.txt
```

This adds another line to the file.

---

## Display the File

```bash
cat hello.txt
```

---

# 13. How to Use Wildcards

Wildcards are symbols used to match file names.

They are useful for copying and moving multiple files at the same time.

---

## Common Wildcards

| Wildcard | Meaning |
|---|---|
| `*` | Matches anything |
| `?` | Matches one character |
| `[ ]` | Matches characters inside brackets |

---

## Copy All Text Files

```bash
cp *.txt backup/
```

This copies all files ending in `.txt` into the `backup` directory.

---

## Move All JPG Files

```bash
mv *.jpg Pictures/
```

This moves all `.jpg` files into the `Pictures` directory.

---

## Copy Files With One Character Difference

```bash
cp file?.txt backup/
```

This can match files like:

```text
file1.txt
file2.txt
fileA.txt
```

---

## Move Files That Start With report

```bash
mv report* reports/
```

This moves all files that begin with `report`.

---

# 14. How to Use Brace Expansion

Brace expansion is used to create many files or directories with one command.

It is useful for creating entire directory structures quickly.

---

## Example 1: Create Multiple Directories

```bash
mkdir -p school/{math,english,science}
```

### Result

```text
school/
├── math
├── english
└── science
```

---

## Example 2: Create Wallpapers Directory Structure

```bash
mkdir -p wallpapers/cars/{1080p,2k,4k}
```

### Result

```text
wallpapers/
└── cars
    ├── 1080p
    ├── 2k
    └── 4k
```

---

## Example 3: Create Assets Directory Structure

```bash
mkdir -p assets/{imgs,video}/{large,small}
```

### Result

```text
assets/
├── imgs
│   ├── large
│   └── small
└── video
    ├── large
    └── small
```

---

# 15. How to Create a Simple Hello World Shell Script

A shell script is a file that contains commands.

---

## Step 1: Create the File

```bash
touch hello.sh
```

---

## Step 2: Open the File

```bash
nano hello.sh
```

---

## Step 3: Write the Script

```bash
#!/bin/bash

echo "Hello World"
```

---

## Step 4: Make the Script Executable

```bash
chmod +x hello.sh
```

---

## Step 5: Run the Script

```bash
./hello.sh
```

---

## Output

```text
Hello World
```

---

# 16. How to Use Variables in a Shell Script

Variables store information inside a shell script.

---

## Example 1

```bash
#!/bin/bash

name="Frandy"

echo "Hello, $name"
```

### Output

```text
Hello, Frandy
```

---

## Example 2

```bash
#!/bin/bash

course="CIS106"
assignment="Final Exam Study Notes"

echo "Course: $course"
echo "Assignment: $assignment"
```

---

## Important Rule

Do not put spaces around the equal sign.

### Correct

```bash
name="Frandy"
```

### Incorrect

```bash
name = "Frandy"
```

---

# 17. Command Reference

For each command, include:

- **Definition**
- **Syntax or usage**
- **Examples**

---

## a. `awk`

### Definition

`awk` is used to process text and work with columns in files.

### Syntax

```bash
awk 'pattern { action }' file
```

### Examples

#### Example 1: Print the First Column

```bash
awk '{print $1}' students.txt
```

This prints the first column from `students.txt`.

#### Example 2: Print the First and Third Columns

```bash
awk '{print $1, $3}' students.txt
```

This prints the first and third columns.

#### Example 3: Print Lines That Contain a Word

```bash
awk '/Linux/ {print}' notes.txt
```

This prints lines that contain the word `Linux`.

#### Example 4: Print Lines Where the Third Column Is Greater Than 80

```bash
awk '$3 > 80 {print}' grades.txt
```

This prints lines where the third column is greater than 80.

---

## b. `cat`

### Definition

`cat` displays the content of a file.

### Syntax

```bash
cat file
```

### Examples

#### Example 1: Display a File

```bash
cat notes.txt
```

This shows the content of `notes.txt`.

#### Example 2: Display Multiple Files

```bash
cat file1.txt file2.txt
```

This displays both files.

#### Example 3: Combine Files

```bash
cat file1.txt file2.txt > combined.txt
```

This combines both files into `combined.txt`.

#### Example 4: Create a File

```bash
cat > newfile.txt
```

This allows you to type text into a new file. Press `Ctrl + D` to save.

---

## c. `cp`

### Definition

`cp` copies files and directories.

### Syntax

```bash
cp source destination
```

### Examples

#### Example 1: Copy a File

```bash
cp notes.txt backup.txt
```

This copies `notes.txt` and creates `backup.txt`.

#### Example 2: Copy a File to a Directory

```bash
cp notes.txt Documents/
```

This copies `notes.txt` into the `Documents` folder.

#### Example 3: Copy a Directory

```bash
cp -r project backup_project
```

This copies the folder and everything inside it.

#### Example 4: Copy All Text Files

```bash
cp *.txt backup/
```

This copies all `.txt` files into the `backup` folder.

---

## d. `cut`

### Definition

`cut` extracts sections from each line of a file.

### Syntax

```bash
cut option file
```

### Examples

#### Example 1: Cut Characters

```bash
cut -c 1-5 names.txt
```

This shows characters 1 through 5 from each line.

#### Example 2: Cut the First Column in a CSV File

```bash
cut -d "," -f 1 students.csv
```

This shows the first field using comma as the delimiter.

#### Example 3: Cut the Second Field

```bash
cut -d ":" -f 2 data.txt
```

This shows the second field using `:` as the delimiter.

---

## e. `grep`

### Definition

`grep` searches for text patterns inside files.

### Syntax

```bash
grep "word" file
```

### Examples

#### Example 1: Search for a Word

```bash
grep "Linux" notes.txt
```

This finds lines that contain `Linux`.

#### Example 2: Ignore Case

```bash
grep -i "linux" notes.txt
```

This finds `linux`, `Linux`, and `LINUX`.

#### Example 3: Show Line Numbers

```bash
grep -n "error" log.txt
```

This shows matching lines with line numbers.

#### Example 4: Search Many Files

```bash
grep "hello" *.txt
```

This searches for `hello` inside all `.txt` files.

---

## f. `head`

### Definition

`head` displays the first lines of a file.

### Syntax

```bash
head file
```

### Examples

#### Example 1: Show First 10 Lines

```bash
head notes.txt
```

This shows the first 10 lines by default.

#### Example 2: Show First 5 Lines

```bash
head -n 5 notes.txt
```

This shows the first 5 lines.

#### Example 3: Show First 20 Lines

```bash
head -n 20 notes.txt
```

This shows the first 20 lines.

---

## g. `ls`

### Definition

`ls` lists files and directories.

### Syntax

```bash
ls [options] [directory]
```

### Examples

#### Example 1: List Files

```bash
ls
```

This lists files in the current directory.

#### Example 2: Long List

```bash
ls -l
```

This lists files with more details.

#### Example 3: Show Hidden Files

```bash
ls -a
```

This shows hidden files.

#### Example 4: Human Readable Sizes

```bash
ls -lh
```

This shows file sizes in a readable format.

---

## h. `man`

### Definition

`man` displays the manual page for a command.

### Syntax

```bash
man command
```

### Examples

#### Example 1: Manual for `ls`

```bash
man ls
```

This opens the manual page for `ls`.

#### Example 2: Manual for `grep`

```bash
man grep
```

This opens the manual page for `grep`.

#### Example 3: Manual for `cp`

```bash
man cp
```

This opens the manual page for `cp`.

---

## i. `mkdir`

### Definition

`mkdir` creates directories.

### Syntax

```bash
mkdir directory_name
```

### Examples

#### Example 1: Create One Directory

```bash
mkdir projects
```

This creates a folder named `projects`.

#### Example 2: Create Multiple Directories

```bash
mkdir notes homework labs
```

This creates three directories.

#### Example 3: Create Parent Directories

```bash
mkdir -p school/math/algebra
```

This creates the full path if it does not already exist.

#### Example 4: Use Brace Expansion

```bash
mkdir -p school/{math,english,science}
```

This creates multiple folders inside `school`.

---

## j. `mv`

### Definition

`mv` moves or renames files and directories.

### Syntax

```bash
mv source destination
```

### Examples

#### Example 1: Rename a File

```bash
mv old.txt new.txt
```

This renames `old.txt` to `new.txt`.

#### Example 2: Move a File

```bash
mv notes.txt Documents/
```

This moves `notes.txt` into the `Documents` folder.

#### Example 3: Move Multiple Files

```bash
mv *.txt backup/
```

This moves all `.txt` files into the `backup` folder.

#### Example 4: Rename a Directory

```bash
mv old_folder new_folder
```

This renames a directory.

---

## k. `tac`

### Definition

`tac` displays file content in reverse order, from the last line to the first line.

### Syntax

```bash
tac file
```

### Examples

#### Example 1: Reverse a File

```bash
tac notes.txt
```

This displays `notes.txt` from bottom to top.

#### Example 2: Reverse Names

```bash
tac names.txt
```

This displays the lines in reverse order.

---

## l. `tail`

### Definition

`tail` displays the last lines of a file.

### Syntax

```bash
tail file
```

### Examples

#### Example 1: Show Last 10 Lines

```bash
tail notes.txt
```

This shows the last 10 lines by default.

#### Example 2: Show Last 5 Lines

```bash
tail -n 5 notes.txt
```

This shows the last 5 lines.

#### Example 3: Monitor a File

```bash
tail -f log.txt
```

This keeps showing new lines added to the file.

---

## m. `touch`

### Definition

`touch` creates empty files or updates file timestamps.

### Syntax

```bash
touch file
```

### Examples

#### Example 1: Create a File

```bash
touch notes.txt
```

This creates an empty file.

#### Example 2: Create Multiple Files

```bash
touch file1.txt file2.txt file3.txt
```

This creates three empty files.

#### Example 3: Create a Markdown File

```bash
touch finalNotes.md
```

This creates a Markdown file.

#### Example 4: Create a File With an Absolute Path

```bash
touch /home/student/Documents/test.txt
```

This creates a file using the full path.

---

## n. `tr`

### Definition

`tr` translates, replaces, or deletes characters.

### Syntax

```bash
command | tr 'old' 'new'
```

### Examples

#### Example 1: Lowercase to Uppercase

```bash
echo "hello" | tr 'a-z' 'A-Z'
```

This changes lowercase letters to uppercase.

#### Example 2: Replace Spaces With Dashes

```bash
echo "hello world" | tr ' ' '-'
```

This replaces spaces with dashes.

#### Example 3: Delete Numbers

```bash
echo "abc123" | tr -d '0-9'
```

This removes numbers.

---

## o. `tree`

### Definition

`tree` displays files and directories in a tree format.

### Syntax

```bash
tree
```

### Examples

#### Example 1: Display Current Directory

```bash
tree
```

This shows the current directory as a tree.

#### Example 2: Display a Specific Directory

```bash
tree Documents
```

This shows the `Documents` folder as a tree.

#### Example 3: Show Hidden Files

```bash
tree -a
```

This shows hidden files in the tree.

#### Example 4: Show Only Directories

```bash
tree -d
```

This shows only directories.

---

# Quick Practice Checklist

Use this checklist to make sure you are ready:

- [ ] I can clone a GitHub repository.
- [ ] I can use `git add`, `git commit`, and `git push`.
- [ ] I can create a Markdown file with headings, images, lists, and code blocks.
- [ ] I can convert Markdown to PDF.
- [ ] I can zip a folder in Debian.
- [ ] I understand absolute and relative paths.
- [ ] I can use the `man` command.
- [ ] I can search inside manual pages.
- [ ] I can use `>`, `>>`, and `|`.
- [ ] I can use wildcards.
- [ ] I can use brace expansion.
- [ ] I can create a simple shell script.
- [ ] I can use variables in shell scripts.
- [ ] I can explain and use all required commands.

---

# Source

These notes are based on the topics listed in the CIS106 Final Exam Study Guide:

<https://cis106.com/final_exam/final_exam/>