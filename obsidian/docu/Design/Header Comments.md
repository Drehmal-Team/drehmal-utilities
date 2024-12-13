Most documentation for the datapack will go into the header comments. All functions created in the `ntils:api` filepath will need a header comment explaining what the function does and how it should be used. Header comments should also cover edge cases for the function and any special properties it may have.
# The Structure

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
#
# OUTPUT:
#   > Storage:
#       | ntils:api template.example.out, object
```

Line breaks should not be written anywhere in the text block. Scores and storage should always be written out as they appear in the commands themselves. Storage inputs should always list the required data type. Always refer to data in `[]` as `lists`, and `{}` as `objects`. If a list of a specific data type is needed, put the type before. A list of doubles would be `double list`, while a list of objects would be `object list`. Macro inputs should have the input itself, followed by a comma, and then the required data type.

The Output section should be formatted identically to the Input section at all times.

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
