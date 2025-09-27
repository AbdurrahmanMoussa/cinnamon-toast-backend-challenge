# Instructions

## PHP Challenge:

- PHP 8.x must be installed (`php -v` in terminal to check).
- In your terminal, navigate to the project folder (e.g., `cinnamon-toast-backend-challenge`).
- Run the script:
  ```bash
  php php-challenge.php
  ```
- See `/screenshots/php-debug-output-1.png` and `/screenshots/php-debug-output-2.png` for step-by-step output of the acronym function.

## SQL Challenge:

- Need to have MySQL 8.x or compatible SQL editor installed.
- Open the `sql-challenge.sql` file in your SQL client.
- Run the query against a `contacts` table with an `id` and `phone` column.
- A contacts table with seed data was included at the bottom of the file. If needed, simply uncomment the code below the `SELECT`.

## SQL Demo:

- Need to have MySQL 8.x or compatible SQL editor installed.
- Open the `sql-demo.sql` file in your SQL client.
- Run the entire file. CTEs have been provided so no extra tables are necessary.

- See `/screenshots/sql-challenge-output.png` for output of SQL queries.

## Notes:

- **PHP (`php-challenge.php`):** Ignores punctuation, treats hyphens as word separators, and only includes letters when creating the acronym.
- **SQL (`sql-challenge.sql`):** Outputs phone numbers in the two required formats.
- **SQL Demo (`sql-demo.sql`):** Adds seed data and basic edge-case handling (too short/long values, empty inputs).
