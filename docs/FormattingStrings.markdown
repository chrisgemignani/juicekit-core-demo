## Formatting Numbers for Display

### Problem

You want to format a number for display.

### Solution                            

Use `Strings.format` in **juicekit-core**. The `Strings` utility class uses the picture-based string formatting conventions of the .NET framework. This is a flexible approach that is quite similar to the custom formatting options in Microsoft Excel. The basic syntax is:

    Strings.format("{format-picture}", ...args)
    
A format picture is a picture of how you want to format the number. 

You can learn more by checking out [this introduction to the formatting syntax](http://blog.stevex.net/string-formatting-in-csharp/).
                                                                 
Here are a few things you can do with `Strings.format`.

* Format positive, negative, and zero numbers differently.
* Format telephone numbers and zip codes
* Left and right align formatted numbers with spaces
* Format dates and times
* Format a string containing multiple numeric placeholders at once.