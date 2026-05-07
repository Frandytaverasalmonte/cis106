# Notes 8
## Definition, Usage/Formula, and Examples.

## cat

**Definition:**
The cat command displays the contents of a file and can also combine multiple files.

**Usage/Formula:**
```cat [options] filename```

**Examples:**

```
cat file.txt
cat file1.txt file2.txt
```

## 2.tac

**Definition:**
The tac command displays the contents of a file in reverse order.

**Usage/Formula:**
```tac filename```

**Examples:**

```
tac file.txt
```

## 3.head

**Definition:**
The head command displays the first lines of a file.

**Usage/Formula:**
```head [options] filename```

**Examples:**

```
head file.txt
head -5 file.txt
```

## 4.tail

**Definition:**
The tail command displays the last lines of a file.

**Usage/Formula:**
```tail [options] filename```

**Examples:**

```
tail file.txt
tail -10 file.txt
```

## 5.cut

**Definition:**
The cut command extracts specific columns or characters from a file.

**Usage/Formula:**
```cut [options] filename```

**Examples:**

```
cut -c 1-5 file.txt
cut -d "," -f 1 data.csv
```

## 6.sort

**Definition:**
The sort command arranges lines of text in alphabetical or numerical order.

**Usage/Formula:**
```sort [options] filename```

**Examples:**

```
sort names.txt
sort -r names.txt
```

## 7.wc

**Definition:**
The wc command counts lines, words, and characters in a file.

**Usage/Formula:**
```wc [options] filename```

**Examples:**

```
wc file.txt
wc -l file.txt
wc -w file.txt
```