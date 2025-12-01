# API Reference

## Built-in Functions

### Input/Output

#### `print(value, ...)`
Print values to standard output.

**Parameters:**
- `value` - One or more values to print

**Returns:** `null`

**Example:**
```
print("Hello");
print("The answer is:", 42);
```

#### `input(prompt)`
Read a line from standard input.

**Parameters:**
- `prompt` (optional) - String to display as prompt

**Returns:** String containing the input

**Example:**
```
let name = input("Enter your name: ");
print("Hello, " + name);
```

### Type Conversion

#### `str(value)`
Convert a value to string.

**Parameters:**
- `value` - Value to convert

**Returns:** String representation

**Example:**
```
let num = 42;
let text = str(num);  // "42"
```

#### `int(value)`
Convert a value to integer.

**Parameters:**
- `value` - Value to convert

**Returns:** Integer value

**Example:**
```
let pi = 3.14;
let whole = int(pi);  // 3
```

#### `float(value)`
Convert a value to floating-point number.

**Parameters:**
- `value` - Value to convert

**Returns:** Float value

**Example:**
```
let x = float("3.14");  // 3.14
```

#### `bool(value)`
Convert a value to boolean.

**Parameters:**
- `value` - Value to convert

**Returns:** Boolean value

**Example:**
```
let x = bool(1);      // true
let y = bool(0);      // false
let z = bool("text"); // true
```

### Type Inspection

#### `type(value)`
Get the type of a value.

**Parameters:**
- `value` - Value to inspect

**Returns:** String indicating the type

**Example:**
```
type(42);          // "number"
type("hello");     // "string"
type([1, 2, 3]);   // "array"
```

### Collection Operations

#### `len(collection)`
Get the length of a collection.

**Parameters:**
- `collection` - Array, string, or object

**Returns:** Integer length

**Example:**
```
len([1, 2, 3]);    // 3
len("hello");      // 5
len({a: 1, b: 2}); // 2
```

#### `range(start, end, step)`
Create an array of numbers.

**Parameters:**
- `start` - Starting number (inclusive)
- `end` - Ending number (exclusive)
- `step` (optional) - Step size (default: 1)

**Returns:** Array of numbers

**Example:**
```
range(0, 5);       // [0, 1, 2, 3, 4]
range(0, 10, 2);   // [0, 2, 4, 6, 8]
```

## Array Methods

### `push(item)`
Add an item to the end of the array.

**Example:**
```
let arr = [1, 2, 3];
arr.push(4);  // [1, 2, 3, 4]
```

### `pop()`
Remove and return the last item.

**Example:**
```
let arr = [1, 2, 3];
let last = arr.pop();  // 3, arr is now [1, 2]
```

### `shift()`
Remove and return the first item.

**Example:**
```
let arr = [1, 2, 3];
let first = arr.shift();  // 1, arr is now [2, 3]
```

### `unshift(item)`
Add an item to the beginning of the array.

**Example:**
```
let arr = [2, 3];
arr.unshift(1);  // [1, 2, 3]
```

### `map(function)`
Transform each element using a function.

**Example:**
```
let nums = [1, 2, 3];
let doubled = nums.map(function(x) { return x * 2; });
// [2, 4, 6]
```

### `filter(function)`
Filter elements based on a predicate.

**Example:**
```
let nums = [1, 2, 3, 4, 5];
let evens = nums.filter(function(x) { return x % 2 == 0; });
// [2, 4]
```

### `reduce(function, initial)`
Reduce array to a single value.

**Example:**
```
let nums = [1, 2, 3, 4];
let sum = nums.reduce(function(acc, x) { return acc + x; }, 0);
// 10
```

## String Methods

### `length`
Get the length of the string.

**Example:**
```
"hello".length;  // 5
```

### `upper()`
Convert to uppercase.

**Example:**
```
"hello".upper();  // "HELLO"
```

### `lower()`
Convert to lowercase.

**Example:**
```
"HELLO".lower();  // "hello"
```

### `split(delimiter)`
Split string into array.

**Example:**
```
"a,b,c".split(",");  // ["a", "b", "c"]
```

### `trim()`
Remove whitespace from both ends.

**Example:**
```
"  hello  ".trim();  // "hello"
```

### `replace(old, new)`
Replace occurrences of substring.

**Example:**
```
"hello world".replace("world", "there");  // "hello there"
```

## Object Methods

### `keys(object)`
Get array of object keys.

**Example:**
```
let obj = {a: 1, b: 2};
keys(obj);  // ["a", "b"]
```

### `values(object)`
Get array of object values.

**Example:**
```
let obj = {a: 1, b: 2};
values(obj);  // [1, 2]
```

### `entries(object)`
Get array of [key, value] pairs.

**Example:**
```
let obj = {a: 1, b: 2};
entries(obj);  // [["a", 1], ["b", 2]]
```

## Mathematical Functions

Available in the `Math` module:

- `Math.abs(x)` - Absolute value
- `Math.ceil(x)` - Round up
- `Math.floor(x)` - Round down
- `Math.round(x)` - Round to nearest integer
- `Math.sqrt(x)` - Square root
- `Math.pow(x, y)` - Power
- `Math.min(a, b, ...)` - Minimum value
- `Math.max(a, b, ...)` - Maximum value
- `Math.random()` - Random number [0, 1)

## Error Handling

### `throw(message)`
Throw an error.

**Example:**
```
if (x < 0) {
    throw("x must be non-negative");
}
```

### `try-catch-finally`
Handle errors.

**Example:**
```
try {
    // risky code
} catch (error) {
    print("Error:", error);
} finally {
    // cleanup
}
```
