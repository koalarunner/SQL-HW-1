CREATE TABLE "department" (
    "dept_no" CHAR(4)   NOT NULL,
    "dept_name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_department" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" CHAR(4)   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "dep_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" CHAR(4)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    CONSTRAINT "pk_dep_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE "employee" (
    "emp_no" INTEGER   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employee" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
    "emp_no" INTEGER   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "emp_no","title","from_date"
     )
);

CREATE TABLE "salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "dep_emp" ADD CONSTRAINT "fk_dep_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "dep_emp" ADD CONSTRAINT "fk_dep_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");