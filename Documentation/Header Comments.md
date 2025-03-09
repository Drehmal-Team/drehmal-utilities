Most documentation for the datapack will go into the header comments. All functions created in the `ntils:api` filepath will need a header comment explaining what the function does and how it should be used. Header comments should also cover edge cases for the function and any special properties it may have.

All header comments will look a little like this.

```
# TEMPLATE/EXAMPLE
#
#   This is a demo function.
#   NOTE: This function does nothing!
#
# INPUT:
#   > Storage:
#       | ntils:api template.example.in
#
# OUTPUT:
#   > Storage:
#       | ntils:api template.example.out
#
# PERFORMANCE: Good
#   This function is good at what it does.
```

Each line of the comment, regardless of content, should have a `#` marking it as a comment. There are 5 primary components to the comment, as follows:
### Filepath: 

All header comments display the filepath of the function in capital letters, excluding ntils:api itself. For the example header, `TEMPLATE/EXAMPLE` means that the function exists on the filepath of `ntils/function/api/template/example`, and is called as `ntils:api/template/example`. The filepath should have 1 space between it and the single `#` symbol.

### Description:

After the filepath should be a brief description of the function and what it does. Precise details of input/output should not go here. If any extremely important information about the function exists, like error cases that could cause it to break, create a `NOTE:` with the information. All lines of the description should be one tab space out from the `#`, or exactly 3 spaces out. This applies to the `NOTE:`, if it exists.

### Input&Output:

The input&output section describes all inputs required by the function and all outputs produced by the function.

This section is broken down into data categories. Examples of valid categories would be `Storage`, `Scoreboard`, `Macro`, or anything else that acts as a data location. If no applicable category for a data location exists, or the function has a requirement that it be ran under specific circumstances, put it in the `Misc` category. All data categories should be carat-notated and have three spaces between them and the `#`. A more detailed example is provided below:

```
# INPUT:
#   > Scoreboard:
#       | #template.example.in.a ntils.API
#       | #template.example.in.b ntils.API
#       | #template.example.in.c ntils.API
#   > Storage:
#       | ntils:api template.example.in.list, string list
#       | ntils:api template.example.in.amount, double
#   > Macro:
#       | Foo, string
#       | Bar, number
#   > Flag:
#       | #template.example.do_extra ntils.API.template.flag
#
# OUTPUT:
#   > Storage:
#       | ntils:api template.example.out, object
```

For specific information as to how data of each type should be handled, see the table below.

| Type       | Format                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Scoreboard | Should be listed as `<scoreholder> <scoreboard>`. Optionally, information on the scoreboard can be provided with a `<-` formatted comment, like so:  <br><br>`#input ntils.API   <- An input score.`<br><br>If multiple similar values exist (example: multiple vector components), then list the variations as a `[]` in the score, like so:<br><br>`#input.[x,y,z] ntils.API (3)`<br><br>The `[x,y,z]` indicates the variations, and `(3)` indicates that three total variations exist. Adding multiple `[]` lists to a scoreboard input should indicate that the total amount of inputs is equal to the product of the lengths of the variant lists. So, the following input would have the size of 6:<br><br>`#input.[1,2].[x,y,z] (6)`<br><br>Adding multiple `[]` lists is usually not good for readability, so avoid doing it.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Storage    | Should be listed as `<storage> <location>, <type>`. `<type>` should be any primitive NBT data type (`string`, `int`, etc.) where applicable. A more generic type like `number` can be used when a specific type is not needed. It should appear as follows:<br><br>`ntils:api input, byte`<br><br>For list data (anything inside of a `[]`), give the expected size of the list after type, like so:<br><br>`ntils:api input, byte list (2)`<br><br>For object data (anything inside of a `{}`), list each key being treated as data in a newline-respecting object beneath the line, like so:<br><br>`ntils:api input, object. Information about the thing.           `<br>`    {                                                            `<br>`        name, string. The name of the thing.                     `<br>`        id, int. The numerical id of the thing.                   `<br>`    }                                                            `<br><br>Note: This data format is only really useful for object lists, or for information on objects being used as *outputs*. Generally, listing each key as a separate data value  is cleaner.<br><br>If the list can be of arbitrary size, `(n)` should be used. Optionally, information about the storage can be provided with a `.` formatted comment, like so:<br><br>`ntils:api input, byte. A boolean input`<br><br>A period is used as the separator for information comments of storage sources. |
| Macro      | Should be listed as `<name>, <type>`. `<type>` should be any primitive NBT data type (`string`, `int`, etc.) where applicable. A more generic type like `number` can be used when a specific type is not needed. Since all numerical suffixes (`b`, `f`, `d`, etc) are "shaved" from numbers passed as macro arguments, `number` often works better as an input type than a more specific one. Always use the least restrictive input argument type. Optionally, information about the input can be provided with a `.` formatted comment, like so:<br><br>`Name, string. The name of the thing being modified.`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Flag       | Any flags that modify the execution of the utility function. A flag is a scoreboard with an on/off state that changes some characteristic of the utility. The crucial difference between flags and scoreboard input is that a flag is merely an on/off, and is typically used as a behavior control across many functions. All flags should follow this formatting standard:<br><br>`$MODULE.FLAG_NAME`<br><br>As an example, one flag used in `ntils:math` looks like this:<br><br>`$ntils:math.DO_SCOREBOARD_OUTPUT`<br><br>All flags are stored on the following scoreboard:<br><br>`ntils.API.flag<br><br>On/Off for a flag is treated as the possession of a value. If the flag is set to any value, it is on. If the flag holds no value, it is off. Flags should not include comments explaining their use; the documentation for a flag goes in the README of the specific module.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Misc       | Avoid using this wherever possible. `Misc` as data type should only apply when a command data is needed, but does not follow standard procedure (example: requiring that an open `ntils:api player.storage` entry exists). As such, no true formatting exists here.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |

### Performance

The function should include a general estimate for its performance and an explanation on why it performs that way. You don't need to be too specific here, but a general idea is good. The performance estimate takes the form of a single word on the same line as `PERFORMANCE`, and the description should be below that with three spaces of separation between it and the `#`. See the example comment at the top of the page for reference.

The table below gives an idea of different performance estimates and where they should apply, as well as a soft limit to how many times the function could conceivably be run before hurting game performance. Rigorous testing is not needed here, just try and get it in the right ballpark. You don't need to use these estimates specifically, but do try and be consistent.

| Estimate  | Nature.                                                                                                                                                     | Limit |
| --------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| Excellent | <15 cheap commands, no macro calls or heavy commands.                                                                                                       | 1000+ |
| Good      | <50 cheap commands, or one macro call and otherwise Excellent, or one heavy command and otherwise Excellent.                                                | ~500  |
| Okay      | <200 cheap commands, or a few macros and otherwise Good, or a few heavy commands and otherwise Good.                                                        | ~100  |
| Bad       | <1000 cheap commands, or many macro calls and otherwise Okay, or many heavy commands (excluding player nbt) and otherwise Okay.                             | ~20   |
| Horrible  | Function runs thousands of commands when called, makes multiple player NBT calls, calls hundreds of macro functions, or something else of a similar nature. | 1     |
| N/A       | Function does not have standard performance behaviour. Example: function that does very little itself but starts a laggy process.                           | N/A   |
