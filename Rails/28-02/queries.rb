Tables
author
columns(name(string))
has_many :books
 
Book
columns(author_id(int), book(string), sold_quantity(string), name(string), published(boolean))
belongs_to :author
has_many :reviews
 
Review
Columns(ratings(int), user_id(int), description(text), book_id(int))
belongs_to :book

#Q1 Write a query that will return all authors with the count of all their books
Author.joins(:books).group("authors.name").count("books.author_id")

#Q2 Write a query to get the count of authors who have published at least one book.
Author.includes(:books).where(books: { published: true }).count

#Q3 Write a query to retrieve authors whose book sold more than 20 times.
Author.joins("INNER JOIN books ON books.author_id = authors.id AND books.sold_quantity >20").distinct

#Q4 Write a query to get the authors whose book rating is greater than 3.5
Author.joins(books: :reviews).where("reviews.ratings> 3.5")

#Q5 Write a query to get top 10 sold books
Book.order(sold_quantity: :desc).limit(10)

#Q6 Write a query to get top 20 sold books in last month
Book.order(sold_quantity: :desc).where("created_at > ?", 1.month.ago).limit(20)

#Q7 Write a query to get top 10 sold books in last week
Book.order(sold_quantity: :desc).where("created_at >= ?", 1.week.ago).limit(10)

#Q8 Write a query to get top 10 sold books in last day
Book.order(sold_quantity: :desc).where("created_at > ?", Time.now-1.days).limit(10)

#Q9 Write a query to get the books which reviews contains a "nice"
Book.joins(:reviews).where("reviews.description like ?", "%nice%")


#Q10 Note down difference between joins and includes
Joins will just join the tables and brings selected fields in return. if you call associations on joins query result, it will fire database queries again
a.joins(:b).to_sql
=> "SELECT \"a\".* FROM \"a\" INNER JOIN \"b\" ON \"b\".\"id\" = \"a\".\"b_id\""

Include will eager load the included associations and add them in memory. Include loads all the included tables attributes. If you call associations on include query result, it wont fire any queries
a.includes(:b).to_sql
=> "SELECT \"a\".* FROM \"a\"

#Q11 Try different types of joins
=>left join=By default left joins fetch all records from left table which satisfy the the condition that – left table id = right table reference id or vice versa.

right join=There is no particular syntax in rails active record for right join, because in above example of eager_load, there are null records on right side. Since eager_load perform left join so those null records can’t fetch. If we use right join, there may be some records may be null which will make rails application inconsistent. So for right join in rails, we use left_joins syntax and swap the order.

joins(inner)=Author.joins(:books)

