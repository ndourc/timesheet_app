# timesheet_manager_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Project Name: Cross-Platform Time Sheet Application

Introduction:
The Cross-Platform Time Sheet Application is a mobile and desktop tool developed using Flutter, aimed at allowing users to track their work hours, manage client appointments, and generate time sheet reports. It provides a user-friendly interface and seamless accessibility across Android, iOS/Mac, and PC platforms.

Features:
•	Users can enter start and finish times for their work shifts.
•	Users can manage up to 6 clients per day, including entering client names and corresponding start and finish times.
•	The system automatically calculates the total hours worked for each day and each user.
•	Client identities can be added by managers or nominated staff members, enabling efficient client management.
•	Managers have control over user authorities and can lock specific functions as needed.
•	Appointments for clients are set by management, and if a user exceeds the allocated time, they must provide a reason or justification.
•	The application follows a Monday-to-Sunday week format.
•	The application collates all time sheets submitted by staff, allowing managers or authorized personnel to view and monitor time sheets.
•	Export functionality enables users to generate Excel reports of the time sheets.
•	Users can save their time sheets in progress and continue later, and submission is done by pressing "Submit."
•	Upon submission, the app prompts the user to confirm if the entered hours are a true reflection of their work hours for the week.
•	Successful submission results in a confirmation message: "Your timesheet has been submitted successfully."
•	Submitted timesheets can be downloaded by management, while they remain on the application for a period of 3 months.

The above features can be separated into functional and non-functional requirements to give us the following requirements;
Functional Requirements:
1.	Users can enter start and finish times for their work shifts.
2.	Users can manage up to 6 clients per day, including entering client names and corresponding start and finish times.
3.	The system automatically calculates the total hours worked for each day and each user.
4.	Client identities can be added by managers or nominated staff members, enabling efficient client management.
5.	Managers have control over user authorities and can lock specific functions as needed.
6.	Appointments for clients are set by management, and if a user exceeds the allocated time, they must provide a reason or justification.
7.	The application follows a Monday-to-Sunday week format.
8.	The application collates all time sheets submitted by staff, allowing managers or authorized personnel to view and monitor time sheets.
9.	Export functionality enables users to generate Excel reports of the time sheets.
10.	Users can save their time sheets in progress and continue later, and submission is done by pressing "Submit."
11.	Upon submission, the app prompts the user to confirm if the entered hours are a true reflection of their work hours for the week.
12.	Successful submission results in a confirmation message: "Your timesheet has been submitted successfully."
13.	Submitted timesheets can be downloaded by management, while they remain on the application for a period of 3 months.
Non-Functional Requirements:
1.	Usability: The application should have an intuitive and user-friendly interface for easy navigation and efficient time entry.
2.	Performance: The application should perform smoothly and respond quickly to user interactions, even with large datasets.
3.	Security: The application should ensure the security and confidentiality of user data, including client information and time sheet records.
4.	Scalability: The application should be able to handle a growing number of users and time sheet entries without compromising performance.
5.	Reliability: The application should be reliable and available for users to access and submit their time sheets without frequent downtime or disruptions.
6.	Compatibility: The application should be compatible with different operating systems (Android, iOS, Windows, macOS) to ensure accessibility from multiple devices.
7.	Data Backup and Recovery: The application should have mechanisms in place to regularly back up time sheet data and provide a way to recover data in case of any unexpected issues or data loss.

Development Methodology:
To ensure efficient development, an Agile development methodology, such as Scrum, will be employed. This methodology allows for iterative development, continuous feedback, and adaptability to changing requirements, ensuring timely delivery of quality software.

Cost-Effective Practices and Technologies:
To develop the application cost-effectively, the following practices and technologies are recommended:
•	Utilize open-source libraries and tools available in the Flutter ecosystem to reduce licensing costs.
•	Leverage cloud services, such as Firebase, for backend functionalities like user authentication, data storage, and synchronization.
•	Employ efficient resource allocation by assigning developers based on their expertise and experience.
•	Implement continuous integration and deployment (CI/CD) practices to automate the build, testing, and deployment processes.
•	Utilize low-code platforms or pre-built components to accelerate development and reduce coding effort.
•	Optimize development time and cost by leveraging cross-platform frameworks like Flutter for simultaneous development across Android, iOS, and desktop platforms.

Mobile or Web-Based Application:
Considering the accessibility requirements and ease of development, a mobile application is recommended for this project. Mobile applications provide flexibility for users to track their work hours on-the-go and offer a convenient user experience. Additionally, Flutter's cross-platform capabilities ensure the application can be developed for Android, iOS/Mac, and PC using a single codebase, reducing development costs and time.

Design and Prototyping:
The overall design of the application should be minimalistic with a default light theme. However, the theme changes with respect to the device’s current theme. The application automatically detects the change in theme from dark to light and so changes accordingly theme: ThemeData.light(), //Default theme
darkTheme: ThemeData.dark(),//the app will be able to conform its theme to the system theme
The application should have a consistent colour palette which is;
Colour Palette: #F0F9F9, #A8D4D7, #6AABB1, #083A41, #F6630A, #4A51B7 and #9BB6B5
The pages should be as follows;
	Login Page and Sign Up: This page will allow users to log in to the application using their credentials.
	Dashboard Page: Once logged in, users will be redirected to the dashboard page, where they can view all their current and past timesheets.
	Timesheet Form Page: This page will allow users to enter their timesheet information, including start and finish times for work shifts and client details.
	Client Management Page: Managers or authorized personnel can add and manage clients using this page.
	User Management Page: Managers can manage user authorities and permissions using this page.
	Export/Download Page: This page allows users to export their timesheets into Excel format or download previously submitted timesheets.

Page Design:
a.	Login Page
The login page should be very minimalistic, with text fields in the centre of the screen of the device. The text fields should have a rounded shape at the edges. The overall page design is as shown;
 
The black parts can be replaced with the bluest colour in our colour palette. The colour palette is shown in design by the following design;
 
b.	Dashboard Page
The dashboard will be the default home page. The general design of the dashboard should be as follows;
 
This design is for the admin viewing the employee information. Note how there is a functionality of automatically detecting whether or not the employee is late or absent or on time. This implies some time calculation functionality in the backend. Rather than having a yearly info filter, we can have a weekly and monthly filter. Under the download dropdown menu, we can have 3 file formats xlsx, csv or pdf. We can also include a side menu which will have buttons to take us to different pages of the application. Under employee details, we can maintain the average check in and check out time and remove the role model. We can then add the client list button before the ‘Avg Check In Time’ and this button will show us the employee’s client for whatever time frame depending on the time filter next to the download info button.
 
Backend Development:
Since the application requires the storage of information for at least 3 months, a database is required. We are aware that there should be a difference between a general employee and a member of the admin. The admin privileges are as follows (from functional requirements);
	Client identities can be added by managers or nominated staff members, enabling efficient client management.
	Managers have control over user authorities and can lock specific functions as needed.
	Appointments for clients are set by management, and if a user exceeds the allocated time, they must provide a reason or justification.
	The application collates all time sheets submitted by staff, allowing managers or authorized personnel to view and monitor time sheets.
	Submitted timesheets can be downloaded by management, while they remain on the application for a period of 3 months.
Frontend Development:

Integration and Testing:

Deployment and Maintenance:

