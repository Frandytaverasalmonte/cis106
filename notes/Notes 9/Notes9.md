# Notes 9
## 1.grep
**Definition**

The grep command is used to search for text or patterns inside files. It prints the lines that match the search pattern.

**Usage / Formula**
```grep [options] pattern file```

**Examples**
```
Search for a word in a file
grep "root" /etc/passwd
Ignore uppercase and lowercase differences
grep -i "linux" notes.txt
Show line numbers
grep -n "error" log.txt
```

## 2.awk
**Definition**


The awk command is used to process and analyze text files. It is commonly used to display specific columns or manipulate text.

**Usage / Formula**
```awk 'pattern {action}' file```

**Examples**
```
Print the first column
awk '{print $1}' names.txt
Print the first and third columns
awk '{print $1, $3}' data.txt
Print lines that contain a word
awk '/admin/ {print}' users.txt
```

## 3.sed
**Definition**

The sed command is used to search, replace, and edit text in a file or command output.

**Usage / Formula**
```sed 'command' file```

**Examples**
```
Replace a word
sed 's/cat/dog/' pets.txt
Replace all occurrences in a line
sed 's/apple/orange/g' fruits.txt
Display only specific lines
sed -n '1,5p' notes.txt
```

## 4.Pipe (|)
**Definition**


The pipe operator (|) sends the output of one command directly into another command.

**Usage / Formula**
```command1 | command2```
**Examples**
```
Send cat output to grep
cat names.txt | grep "John"
Send ls output to sort
ls | sort
Count lines using wc
cat file.txt | wc -l
```

## 5.Redirect Output (>)
**Definition**

The > operator saves the output of a command into a file. If the file already exists, it will overwrite the content.

**Usage / Formula**
```command > file```

**Examples**
```
Save directory list
ls > files.txt
Save users from /etc/passwd
cat /etc/passwd > users.txt
Save sorted data
sort names.txt > sorted_names.txt
```
## 6.Append Output (>>)
**Definition**

The >> operator appends the output of a command to the end of a file without deleting the existing content.

**Usage / Formula**
```command >> file```

**Examples**
```
Append current date
date >> log.txt
Append directory contents
ls >> files.txt
Append system users
cat /etc/passwd >> users.txt
```