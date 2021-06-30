# CS306---Project
This is my project from course CS306 - Database Management. 

We are making library database where we need to store informations about books, authors of the books, papers of authors, periodical, users which are taking books and periodicals and publishers of each book and periodical.
Authors have authorid, which we may assume is unique, name and surname. Paper has paper name and paperid which is unique. One author may have zero or many papers and many papers may have one author. 
Books are identified by unique bookid. They also have title of the book, year of publishing, number of pages and edition of the book. One author may have minimum zero and maximum many written books and many or different books may have one author. For example, author 'Roberto Zicari' can write two different books, 'XML Data Managemnt' and 'MySql' and these book can have only one author which is Roberto Zicari.
User, or customer in SQL part of this project, because SQL does not allow name of the table to be user, have userid or customerid which is uniquely identified. Customer also has name, surname, username, town from which he or she comes and email adress. Each customer may borrow zero or more books.
Periodicals have periodicalid which is unique and also have title of the periodical, year of publishing and type of the periodical. The relationship between periodical and customer is same as the relationship between customer and book. Each customer may borrow zero or more periodicals at the same time. 
Publisher is identifed by unique publisherid and name of publisher. Different books may have the same publisher and one publisher can publish one or many different books. For example, books 'Thomas Calculus' and 'MySql' have the same publisher which is 'Addison Wesley'.
The same thing is between periodical and publisher. Different periodicals may have one publisher and one publisher can publish one or many different books.
