# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movies = ["A Cure for Wellness", "Split", "Sing", "Suicide Squad", "The Great Wall", "Hacksaw Ridge", "Fantastic Beasts and Where to Find Them", "Moana", "La La Land", "Colossal", "Doctor Strange", "Batman v Superman: Dawn of Justice", "Rogue One", "Hidden Figures", "Passengers", "The Exception", "Lion", "X-Men: Apocalypse", "Moonlight", "Trolls", "The Lost City of Z", "Deadpool", "Storks", "Arrival", "Raw", "The Secret Life of Pets", "Me Before You", "Free Fire", "Manchester by the Sea", "The Magnificent Seven", "Nocturnal Animals", "Captain America: Civil War", "Why Him?", "Bad Moms", "Sausage Party", "Assassin's Creed", "Ice Age: Collision Course", "Gold", "Star Trek Beyond", "Resident Evil: The Final Chapter", "Jason Bourne", "Deepwater Horizon", "The Legend of Tarzan", "Independence Day: Resurgence", "The Girl on the Train", "Zootopia", "The Bad Batch", "The Founder", "Underworld: Blood Wars", "The Accountant"]
directors = ["Gore Verbinski", "M. Night Shyamalan", "Christophe Lourdelet", "David Ayer", "Yimou Zhang", "Mel Gibson", "David Yates", "Ron Clements", "Damien Chazelle", "Nacho Vigalondo", "Scott Derrickson", "Zack Snyder", "Gareth Edwards", "Theodore Melfi", "Morten Tyldum", "David Leveaux", "Garth Davis", "Bryan Singer", "Barry Jenkins", "Walt Dohrn", "James Gray", "Tim Miller", "Nicholas Stoller", "Denis Villeneuve", "Julia Ducournau", "Chris Renaud", "Thea Sharrock", "Ben Wheatley", "Kenneth Lonergan", "Antoine Fuqua", "Tom Ford", "Anthony Russo", "John Hamburg", "Jon Lucas", "Greg Tiernan", "Justin Kurzel", "Mike Thurmeier", "Stephen Gaghan", "Justin Lin", "Paul W.S. Anderson", "Paul Greengrass", "Peter Berg", "David Yates", "Roland Emmerich", "Tate Taylor", "Byron Howard", "Ana Lily Amirpour", "John Lee Hancock", "Anna Foerster", "Gavin O'Connor"]

movies.zip(directors).each do |movie, director|
  d = Director.where(name: director).first_or_create
  d.movies.where(name: movie).first_or_create
end
