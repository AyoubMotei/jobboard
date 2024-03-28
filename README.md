# JobBoard Application

The JobBoard Application is a dynamic multi-user website developed using Laravel 10, providing a comprehensive platform for job seekers and employers to connect. This project aims to build a fully functional job portal from scratch while learning Laravel framework.

## Features

- User authentication and authorization.
- CRUD functionalities for job listings and applications.
- Search and filtering functionality for job listings.
- Employer dashboard for managing job listings and applications.
- Secure file uploads for resumes and other documents.
- Integration of Laravel Passport for API authentication.
- Seamless integration with third-party services for enhanced functionality.

## Setup Instructions

### Prerequisites

- PHP (>=7.4)
- Composer
- MySQL
- Node.js (for compiling assets)

### Installation

1. Clone the repository:

git clone https://github.com/ayoubmotei/jobboard-application.git


2. Navigate to the project directory:

cd jobboard


3. Install PHP dependencies using Composer:

composer install


4. Copy the `.env.example` file to `.env`:

cp .env.example .env


5. Generate application key:

php artisan key:generate



6. Update the `.env` file with your database credentials.

7. Run database migrations:

php artisan migrate



8. Install JavaScript dependencies:

npm install


9. Compile assets:

npm run dev



10. Serve the application:

php artisan serve



The application will now be running at `http://localhost:8000`.

### Configuration

- Configure mail settings in the `.env` file for sending email notifications.
- Set up Laravel Passport for API authentication as per the [official documentation](https://laravel.com/docs/passport).
- Configure third-party services like AWS S3 and Stripe for additional functionality as needed.

### Usage

- Register as a new user or login with existing credentials.
- Explore job listings, filter by category, location, etc.
- Apply for jobs by submitting applications with resumes.
- Employers can post job listings, manage applications, and track recruitment activities through the dashboard.

## Contribution

Contributions to the project are welcome! If you have any suggestions, enhancements, or bug fixes, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).



