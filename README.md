This is an example that demonstrates the problem  `scrollToRowAtIndexPath` has to calculate the correct height for a `UITableView` when each row has a height of its own.

If all rows have the same height then this is how it works ok 

Here is an example of how it cannot scroll to bottom when the cells height is variable 
![incorrect](http://cl.ly/image/3x042w0T3S1B/download/Auto1_incorrect.gif)

When the height is standard, it works fine

![correct](http://cl.ly/image/09123Y1x271b/download/Auto2_correct.gif)

To test it, all you have to do is switch on/off the constraint on the row ![switch constraint](http://cl.ly/image/3F112A2Y0k3t/download/Image%202014-10-10%20at%204.02.23%20%CE%BC.%CE%BC..png)
