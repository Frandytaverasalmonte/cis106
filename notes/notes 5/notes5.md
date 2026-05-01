
# Notes 5

## For each of the following commands include: Definition, Usage/Formula, and Examples.
**ls:**
    The ls command is used to list the files and folders in a directory.
        
**Usage / Formula:**
```
    ls
```

**Examples:**
```
- ls
- ls Documents
- ls -l**
```

**pwd**
    The pwd command shows the current working directory (where you are in the system).

**Usage / Formula:**
```
pwd
/home/student/Documents
```

**cd**
    The cd command is used to change directories (move between folders).

**Usage / Formula:**
```
cd [directory_name]
```

**Examples:**
```
- cd Documents
- cd ..
- cd /home/student
```

## Include answers to the following questions:
  1. **What is a variable?**
    A variable is a name that stores a value. The value can change.

  2. **How do I use a variable?**
    You assign a value and then use it later. 
    **Example:**
``` 
    name=John
    echo $name
```

  3. **What is an environment variable?**
    An environment variable is a variable that is already set by the system and used by programs.
    **Example:**
```
    echo $HOME
```

  4. **What is a user defined variable?**
    A user defined variable is a variable created by the user.
        **Example:**
```
        age=21
        echo $age
```

  5. **What is the root directory?**
    The root directory is the main directory of the system. Everything starts from here.

        **Symbol:**
```
        /
```

  6. **What does “Parent Directory” mean?**
    The parent directory is the folder above your current folder.

        **Example:**
        If you are in:
```
        /home/student/Documents
```
The parent is:
```
        /home/student
```

  7. What does “Current working directory” mean?
    It is the directory you are currently in.

        **You can check it with:**
```
        pwd
```
  8. **What is an absolute path? Include an example**
    An absolute path is the full path starting from the root directory.

        **Example:**
```
        /home/student/Documents/file.txt
```
  9. **What is a relative path? Include an example**
    A relative path is a path based on your current location.

        **Example:**
```
        If you are already in /home/student:
        Documents/file.txt
```
  10. **What is the difference between “Your home directory” and “The home directory”?**
    Your home directory: Your personal folder
        **Example:**
```
        /home/student
```
    The home directory: The general location where all users’ home folders are stored.

**Example:**
```
    /home
```