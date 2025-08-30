# Laravel Todo List

A simple Todo List web application built with [Laravel](https://laravel.com/).

## Features

- Add, edit, and delete todo items
- Mark tasks as completed
- User authentication (login/register)
- RESTful API endpoints
- Elegant UI with Blade templating
- Validation and error handling
- Responsive design

## Requirements

- PHP >= 8.1
- Composer
- MySQL or compatible database
- Node.js and npm (for frontend assets)
- Laravel >= 10.x

## Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/lycheang/laravel-todolist.git
   cd laravel-todolist
   ```

2. **Install dependencies**
   ```bash
   composer install
   npm install
   ```

3. **Copy .env and configure**
   ```bash
   cp .env.example .env
   ```
   Edit `.env` with your database credentials.

4. **Run migrations**
   ```bash
   php artisan migrate
   ```

5. **Build frontend assets**
   ```bash
   npm run dev
   ```

6. **Start development server**
   ```bash
   php artisan serve
   ```
   Access your app at [http://localhost:8000](http://localhost:8000).

## Usage

- Register a new user or login
- Add new todo items
- Mark items as completed or delete them
- View your todo list

## API Endpoints

| Method | Endpoint           | Description           |
|--------|--------------------|----------------------|
| GET    | /api/todos         | List all todos       |
| POST   | /api/todos         | Create a new todo    |
| PUT    | /api/todos/{id}    | Update a todo        |
| DELETE | /api/todos/{id}    | Delete a todo        |

## Testing

Run automated tests:

```bash
php artisan test
```

## Contributing

Pull requests are welcome. Please open an issue to discuss changes or improvements before submitting a PR.

## License

This project is licensed under the [MIT License](LICENSE).

## Resources

- [Laravel Documentation](https://laravel.com/docs)
- [Laracasts](https://laracasts.com/)
- [Composer](https://getcomposer.org/)
