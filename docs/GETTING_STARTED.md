# Getting Started with Language

## Installation

Coming soon - the language implementation is under active development.

## Your First Program

Create a file named `hello.lang` with the following content:

```
print("Hello, World!");
```

Run it with:
```bash
language hello.lang
```

## Interactive Mode (REPL)

Start the interactive interpreter:

```bash
language
```

This allows you to experiment with code interactively:

```
> let x = 10;
> let y = 20;
> print(x + y);
30
> 
```

## Basic Concepts

### Variables

```
let name = "Alice";
let age = 30;
const PI = 3.14159;
```

### Functions

```
function greet(name) {
    return "Hello, " + name + "!";
}

print(greet("World"));
```

### Arrays

```
let numbers = [1, 2, 3, 4, 5];
for (num in numbers) {
    print(num);
}
```

### Objects

```
let person = {
    name: "Bob",
    age: 25,
    greet: function() {
        print("Hi, I'm " + this.name);
    }
};

person.greet();
```

### Control Flow

```
let x = 10;

if (x > 5) {
    print("x is greater than 5");
} else {
    print("x is 5 or less");
}
```

## Next Steps

- Read the [Language Specification](SPECIFICATION.md)
- Check out [Examples](../examples/)
- Read the [API Reference](API.md)

## Getting Help

- Check the documentation in the `docs/` folder
- Open an issue on GitHub
- Read the examples in the `examples/` folder
