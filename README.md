# Backend App - Employees REST API

This is a NestJS backend app with a PostgreSQL database using Prisma ORM.  
It exposes a REST API to manage employees with the following model:

```ts
model Employee {
  id        Int      @id @default(autoincrement())
  name      String
  email     String   @unique
  role      Role
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt
}


enum Role {
  INTERN
  ENGINEER
  ADMIN
}


```

## Features

- Create, Read, Update, and Delete (CRUD) employees
- Role-based enum system: `INTERN`, `ENGINEER`, `ADMIN`
- PostgreSQL database with Prisma ORM
- Dockerized for easy setup and deployment
- Environment variable support

##  Start the app with Docker

```
docker-compose up -d --build
```
This will:

Start PostgreSQL on port 5432

Run the NestJS app on http://localhost:3000

## Run Prisma Migrations  

```
docker exec -it nest_app npx prisma migrate dev

```
## API Endpoints
```
Method	    Endpoint	          Description
GET	        api/employees	      List all employees
GET	        api/employees/:id	  Get single employee
POST	    api/employees	      Create new employee
PATCH	    api/employees/:id	  Update employee
DELETE	    api/employees/:id	  Delete employee
```
