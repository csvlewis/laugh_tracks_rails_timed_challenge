## Laugh Tracks

This Rails application is intended to be used as an opportunity for students to measure their own learning of material taught in Module 2 of the Back End program of the Turing School of Software & Design.

Fork this repository and clone your newly created repository. At the end of one hour, push your code to your repository and create a pull request to Turing's repository.

## Be sure to read all user stories BEFORE beginning your work

## Setup

Before you begin work, run the following commands:

```
bundle install
bundle update
rake db:{drop,create,migrate,seed,test:prepare}
```

## Requirements

- TDD all new work; you may postpone model tests *for attribute validations only* -- any model methods you create MUST be tested.

## Not Required

- No form input is required
- No visual styling is required

## User Stories

```
User Story 1 of 5

As a visitor,
When I visit `/comedians`
Then I see a list of comedians with the following
information for each comedian:
  * Name
  * Age
```

```
User Story 2 of 5

As a visitor,
When I visit `/comedians`
Then I also see a list of each comedian's TV specials.
```

```
User Story 3 of 5

As a visitor,
When I visit `/comedians`
Then I also see the average age for all comedians.

Example: "Average Age: 33"
```

```
User Story 4 of 5

As a visitor,
when I visit `/comedians?age=34`
Then I see a list of all comedians with an age of 34.

Testing should check that excluded comedians do not show up.
```

```
User Story 5 of 5

As a visitor,
When I visit `/comedians`
Then I also see the count of TV specials for each comedian.
```
