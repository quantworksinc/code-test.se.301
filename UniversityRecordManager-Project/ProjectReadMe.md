## Student Data Center

An application that can help future students have a visual insight into a University's student population growth, thus guiding them towards a right choice as per a lot of students.

### Motivation

A lot of students who are looking for better universities seek advice from the internet. Here, a visual representation of university's student trend is shown, thus displaying the actual growth.

### Future Scope

This application can be further scaled to hold data of various universities, thus enabling users to log in and view or even provide feedback on their experience with the university, making the application a global dataset of university record and trends.

### Technology Stack:

The application is built on the following:

- Django: Web application framework, to handle requests and responses.
- Python: To fetch and handle data being circulated.
- FusionCharts: JavaScript file incorporated to represent data in form of barcharts.
- Bootstrap: For page design and layout.
- PostgreSQL : Data base to store the incoming data.
- Additional external libraries required are displayed in the requirements.txt file.

### Features:

- The application displays the specific student record for a selected year, categorizing the student population as : Freshmen, Sophomores, Juniors, Seniors for Undergraduate and Masters FY and Masters SY for Graduate levels.
- Further, the user can add data to update the database with newer records.
- Validations are added that only one record can exist per year.

