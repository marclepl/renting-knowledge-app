# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

require 'open-uri'
Booking.destroy_all
Book.destroy_all
#User.destroy_all

p "Emptied"

romain = User.new(email: 'christ@airbnbooks.com', username: 'Christ', city: 'Lausanne', password: '12345678', password_confirmation: '12345678')
romain.photo.attach(io: URI.open('https://static01.nicematin.com/media/npo/xlarge/2016/12/sylvain-durif-christ-cosmique.jpg'), filename: 'pan.jpg', content_type: 'image/jpg')
romain.save!

dan = User.new(email: 'dan@airbnbooks.com', username: 'Dan', city: 'Lausanne', password: '12345678', password_confirmation: '12345678')
dan.photo.attach(io: URI.open('https://live.staticflickr.com/2452/3877006512_b1754b8b38_c.jpg'), filename: 'pan.jpg', content_type: 'image/jpg')
dan.save!

donald = User.new(email: 'donald@airbnbooks.com', username: 'The Donald', city: 'Lausanne', password: '12345678', password_confirmation: '12345678')
donald.photo.attach(io: URI.open('https://cdn.unitycms.io/image/ocroped/1200,1200,1000,1000,0,0/OZEdeUcLT4E/5sZizFRS4NCAwa5G8TIOIo.jpg'), filename: 'pan.jpg', content_type: 'image/jpg')
donald.save!

karl = User.new(email: 'karl@airbnbooks.com', username: 'Karlos', city: 'Lausanne', password: '12345678', password_confirmation: '12345678')
karl.photo.attach(io: URI.open('https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/portrait-of-karl-marx-bettmann.jpg'), filename: 'pan.jpg', content_type: 'image/jpg')
karl.save!

user = User.new(email: 'apparently@airbnbooks.com', username: 'Apparently', city: 'Lausanne', password: '12345678', password_confirmation: '12345678')
user.photo.attach(io: URI.open('https://biographymask.com/wp-content/uploads/2020/11/Noah-Ritter-profile-1200x675.jpg'), filename: 'pan.jpg', content_type: 'image/jpg')
user.save!




book1 = Book.new(title: 'The Art of the Deal', author: 'Donald Trump', description: "It's TREMENDOUS! Very, very cool", price_per_day: 1000, user: donald)
book1.photo.attach(io: URI.open('https://pictures.abebooks.com/isbn/9780816146796-fr.jpg'), filename: 'donald.jpg', content_type: 'image/jpg')
book1.save!

book2 = Book.new(title: 'Purple Cow', author: 'Seth Godin', description: 'This is Remarkable', price_per_day: 0.2, user: user)
book2.photo.attach(io: URI.open('https://images-na.ssl-images-amazon.com/images/I/810f+Zy0ITL.jpg'), filename: 'dan.png', content_type: 'image/png')
book2.save!

book3 = Book.new(title: 'Principles of Microeconomics', author: 'Martin Kolmar', description: 'This is not a common good', price_per_day: 0.5, user: user)
book3.photo.attach(io: URI.open('https://img2.docero.com.br/image/l/nsen558.png'), filename: 'book.png', content_type: 'image/png')
book3.save!

book4 = Book.new(title: 'Total Recall', author: 'Arnold Schwarzenegger', description: 'Just sleep faster!', price_per_day: 0.3, user: user)
book4.photo.attach(io: URI.open('https://images-na.ssl-images-amazon.com/images/I/81CxqUGgPyL.jpg'), filename: 'book1.png', content_type: 'image/jpg')
book4.save!

book5 = Book.new(title: 'Principles', author: 'Ray Dalio', description: 'Radically honest...', price_per_day: 0.1, user: user)
book5.photo.attach(io: URI.open('https://exlibris.azureedge.net/covers/9781/5011/2402/0/9781501124020xxl.jpg'), filename: 'book2.png', content_type: 'image/jpg')
book5.save!

book6 = Book.new(title: 'Das Kapital', author: 'Karl Marx', description: 'Just redistribute this book', price_per_day: 0.0, user: karl)
book6.photo.attach(io: URI.open('https://m.media-amazon.com/images/I/41Ne9+XLEhL.jpg'), filename: 'book3.png', content_type: 'image/jpg')
book6.save!

book7 = Book.new(title: 'My Story', author: 'Greta Thunberg', description: "Don't buy this book, this kills trees", price_per_day: 0.0, user: karl)
book7.photo.attach(io: URI.open('https://m.media-amazon.com/images/I/418dtDASFLS.jpg'), filename: 'book4.png', content_type: 'image/jpg')
book7.save!

book8 = Book.new(title: 'Fifty Shades of Grey', author: 'E L James', description: "Heartwarming, a story for the whole family", price_per_day: 0.1, user: donald)
book8.photo.attach(io: URI.open('https://images-na.ssl-images-amazon.com/images/I/81xsanmYaWL.jpg'), filename: 'book5.png', content_type: 'image/jpg')
book8.save!

book9 = Book.new(title: 'Stalin Story', author: 'Robert Conquest', description: "Inspiring", price_per_day: 0.1, user: karl)
book9.photo.attach(io: URI.open('https://images-na.ssl-images-amazon.com/images/I/91DaKOAINpL.jpg'), filename: 'book6.png', content_type: 'image/jpg')
book9.save!

book10 = Book.new(title: 'Steve Jobs Biography', author: 'Albert Watson', description: "Mac-iavelic", price_per_day: 1, user: dan)
book10.photo.attach(io: URI.open('https://images-na.ssl-images-amazon.com/images/I/71xUgLxhY6L.jpg'), filename: 'book7.png', content_type: 'image/jpg')
book10.save!

book11 = Book.new(title: 'What ever it takes', author: 'Stephen Schwarzmann', description: "Sigma-generating ", price_per_day: 100, user: donald)
book11.photo.attach(io: URI.open('https://images-na.ssl-images-amazon.com/images/I/81z5CGW67GL.jpg'), filename: 'book8.png', content_type: 'image/jpg')
book11.save!

p "SEED DONE!"
p User.all
p Book.all
