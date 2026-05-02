# Wildcards in Linux

Wildcards are special symbols used to match file names or groups of files.

---

## 1. Asterisk `*`

**Definition:** Matches zero or more characters.

**Usage/Formula:**

```command *```

E**xamples:**

```ls *.txt```

Shows all ```.txt``` files.

```rm file*```

Deletes files starting with file.

```cp *.jpg Pictures/```

Copies all .jpg files to Pictures folder.

## 2. Question Mark ?

**Definition:** Matches exactly one character.

**Usage/Formula:**

```command ?```

**Examples:**

ls file?```.txt```

Matches ```file1.txt, fileA.txt```

```rm data?```

Matches ```data1, data2```

```cp ?.doc Docs/```

Matches one-letter filenames like ```a.doc```

## 3. Brackets [ ]

**Definition:** Matches one character from a list or range.

**Usage/Formula:**

```command [characters]```

E**xamples:**

ls file```[123].txt```

Matches ```file1.txt, file2.txt, file3.txt```

```rm test[a-c]```

Matches ```testa, testb, testc```

```cp report[0-9].txt Backup/```

Matches ```report1.txt, report5.txt```

## 4. Negated Brackets [! ]

**Definition:** Matches any one character NOT listed.

**Usage/Formula:**

```command [!characters]```

**Examples:**

ls file```[!1].txt```

Matches all except ```file1.txt```

```rm data[!a-c]```

Deletes files not ending in a, b, or c

```cp test[!0-9].txt Folder/```

Matches non-number endings.

# Brace Expansion

Brace expansion creates many files or folders quickly.

## Example 1: Create Multiple Folders
```mkdir Week{1..5}```

Creates:

Week1 Week2 Week3 Week4 Week5

## Example 2: Create Entire Directory Structure
```mkdir -p School/{Math,English,Science}/{Homework,Notes}```

Creates:

```School/
├── Math/
│   ├── Homework
│   └── Notes
├── English/
│   ├── Homework
│   └── Notes
└── Science/
    ├── Homework
    └── Notes
```

## Example 3: Create Numbered Files
```touch file{1..3}.txt```

Creates:

```file1.txt
file2.txt
file3.txt```