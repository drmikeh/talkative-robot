# Lab 9/25 aka Lab 4

* Print (to the console) each thing from the grocery list with this style:
Item 1 -- Milk
Item 2 -- Eggs
* Make an author hash and include information about yourself
* This hash should have the same inputs as the script you're running
* Create people = [user, author]
* Use an enumeration function that will return only author
* Hint: The opposite of select is...
* Hint: Can make sure author[:name] is your own
* BONUS: create a select_by_name(list_of_users, first_name) where you can call
select_by_name(people, <your first name>) and it will return the author hash

BTW: When creating author, it's just info about yourself.
The difference between the two is that if you gave me your computer
and I ran your script, I would be the user, however you would be author.
Thus, you should have a line in your script somewhere similar to:

    author = { name: "Gerry Pass", age: 28, gender: "M" }

Add in any other keys that are custom to your script as well.

## WHEN YOU ARE DONE WITH THIS HALF
* Do the steps to create a PR using a commit message of "Completed Enumeration"
* Assign the PR to Marcus Aurelius aka Marc aka Schmitty
* Put previously defined grocery list into a new file
* Pull it in, modify it, write it to a new file
* In the previous lab, we had a line like "Oh, don't forget the <whatever>"
* Use that as the modification

## BONUS: Push grocery_list to a CSV with columns of Item Number
(aka index number + 1) and Item Name

* Make sure to print the column headers to the file
* Hint: Strengthen your Google-fu

## MAJOR BONUS: Pull in any data from a CSV, modify it any way you want, and output it

## WHEN DONE: Commit, push, write a message on GitHub at the bottom
(since GH doesn't automatically alert us for updates)
