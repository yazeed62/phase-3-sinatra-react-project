# Project Name - sinatra-react-project

This is the backend component of the Project Name application. It provides the necessary APIs and server-side functionality for the Project Name project using the Sinatra framework.

## Prerequisites

- Ruby [version]
- Sinatra [version]

## Getting Started

These instructions will get you a copy of the backend project up and running on your local machine for development and testing purposes.

1. Clone the repository:

   ```shell
   git clone [https://github.com/yazeed62/phase-3-sinatra-react-project.git]
   ```

2.Install dependencies:

bundle install

3.Start the server:

ruby app.rb

4.The backend server will be running at http://localhost:9292.

API Endpoints

The backend API provides the following endpoints:

Base URL
The base URL for all endpoints is http://localhost:9292.

Authentication
This API uses token-based authentication. To access protected endpoints, include the Authorization header in your requests with a valid token.

Endpoints
GET /
Returns a welcome message.

GET /tasks
Returns a list of all tasks.

Database Schema
The database schema for this project consists of two tables: tasks and categories. The tasks table stores information about each task, and the categories table stores information about each category.

The relationship between tasks and categories is established using a foreign key (category_id) in the tasks table.

Built With
Sinatra - The web framework used
[Other dependencies or libraries]

License
This project is licensed under the MIT License.

Contact
email:dee3ayahmed25@gmail.com
