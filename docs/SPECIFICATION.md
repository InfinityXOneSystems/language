# Language Specification

## Version 0.1.0

## Introduction

Language is a dynamically-typed, interpreted programming language with a focus on simplicity and clarity.

## Lexical Structure

### Comments

```
// Single-line comment
/* Multi-line
   comment */
```

### Identifiers

Identifiers start with a letter or underscore, followed by letters, digits, or underscores.

```
valid_identifier
_privateVar
myVariable123
```

### Keywords

Reserved keywords in the language:

- `if`, `else`, `elif`
- `while`, `for`, `in`
- `function`, `return`
- `let`, `const`
- `true`, `false`, `null`
- `and`, `or`, `not`
- `class`, `extends`
- `import`, `export`

### Literals

#### Numbers
```
42          // Integer
3.14        // Float
1.5e10      // Scientific notation
```

#### Strings
```
"Hello, World!"
'Single quotes work too'
```

#### Booleans
```
true
false
```

#### Null
```
null
```

## Data Types

### Primitive Types

- **Number**: Integer and floating-point numbers
- **String**: Text data
- **Boolean**: `true` or `false`
- **Null**: Represents absence of value

### Composite Types

- **Array**: Ordered collection of values
- **Object**: Key-value pairs

## Variables

### Declaration

```
let x = 10;
const PI = 3.14159;
```

- `let`: Declares a mutable variable
- `const`: Declares an immutable constant

## Operators

### Arithmetic Operators

- `+`: Addition
- `-`: Subtraction
- `*`: Multiplication
- `/`: Division
- `%`: Modulo
- `**`: Exponentiation

### Comparison Operators

- `==`: Equal to
- `!=`: Not equal to
- `<`: Less than
- `>`: Greater than
- `<=`: Less than or equal to
- `>=`: Greater than or equal to

### Logical Operators

- `and`: Logical AND
- `or`: Logical OR
- `not`: Logical NOT

## Control Flow

### If Statement

```
if (condition) {
    // code
} elif (another_condition) {
    // code
} else {
    // code
}
```

### Loops

#### While Loop
```
while (condition) {
    // code
}
```

#### For Loop
```
for (item in collection) {
    // code
}
```

## Functions

### Function Declaration

```
function greet(name) {
    return "Hello, " + name + "!";
}
```

### Anonymous Functions

```
let square = function(x) {
    return x * x;
};
```

### Arrow Functions

```
let add = (a, b) => a + b;
```

## Arrays

```
let numbers = [1, 2, 3, 4, 5];
let first = numbers[0];
numbers.push(6);
```

## Objects

```
let person = {
    name: "Alice",
    age: 30,
    greet: function() {
        return "Hello!";
    }
};
```

## Classes

```
class Animal {
    constructor(name) {
        this.name = name;
    }
    
    speak() {
        return this.name + " makes a sound.";
    }
}

class Dog extends Animal {
    speak() {
        return this.name + " barks.";
    }
}
```

## Modules

### Exporting

```
export function myFunction() {
    // code
}

export const MY_CONSTANT = 42;
```

### Importing

```
import { myFunction, MY_CONSTANT } from "module";
```

## Standard Library

### Built-in Functions

- `print(value)`: Output to console
- `len(collection)`: Get length of collection
- `type(value)`: Get type of value
- `str(value)`: Convert to string
- `int(value)`: Convert to integer
- `float(value)`: Convert to float

### Array Methods

- `push(item)`: Add item to end
- `pop()`: Remove and return last item
- `shift()`: Remove and return first item
- `unshift(item)`: Add item to beginning
- `map(function)`: Transform each element
- `filter(function)`: Filter elements
- `reduce(function, initial)`: Reduce to single value

### String Methods

- `length`: String length
- `upper()`: Convert to uppercase
- `lower()`: Convert to lowercase
- `split(delimiter)`: Split into array
- `join(array)`: Join array into string

## Error Handling

```
try {
    // code that might throw error
} catch (error) {
    // handle error
} finally {
    // always executed
}
```

## Future Features

- Pattern matching
- Async/await
- Generators
- Decorators
- Type annotations (optional)

---

This specification is a living document and will evolve as the language develops.
