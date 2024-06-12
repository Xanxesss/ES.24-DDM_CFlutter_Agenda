
final createTable = '''
  CREATE TABLE contact(
    id INT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    phone CHAR(16) NOT NULL,
    email VARCHAR(150) NOT NULL,
    url_photo VARCHAR(200) NOT NULL
  )
''';

final insert1 = '''
  INSERT INTO contact(name, phone, email, url_photo)
  VALUES ('Iara', '(44) 9 9927-4101', 'maira.ian@gmail.com', 'https://static.vecteezy.com/system/resources/previews/036/280/650/original/default-avatar-profile-icon-social-media-user-image-gray-avatar-icon-blank-profile-silhouette-illustration-vector.jpg')
''';

final insert2 = '''
  INSERT INTO contact(name, phone, email, url_photo)
  VALUES ('Adrian', '(44) 9 9963-2591', 'adrianbarqueiro@gmail.com', 'https://static.vecteezy.com/system/resources/previews/036/280/650/original/default-avatar-profile-icon-social-media-user-image-gray-avatar-icon-blank-profile-silhouette-illustration-vector.jpg')
''';

final insert3 = '''
  INSERT INTO contact(name, phone, email, url_photo)
  VALUES ('Amora', '(44) 9 9948-8932', 'amoraS2bisteca@gmail.com', 'https://static.vecteezy.com/system/resources/previews/036/280/650/original/default-avatar-profile-icon-social-media-user-image-gray-avatar-icon-blank-profile-silhouette-illustration-vector.jpg')
''';