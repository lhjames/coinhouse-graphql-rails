# coinhouse-graphql-rails

Test for Coinhouse: a Rails project with a GraphQL API to manage office hours and workshops

### GraphQl query to check all meetings

```
{
  allMeetings {
    id
    name
    location
    description
    attendants
    date
  }
}
```

### GraphQl query to check all workshops

```
{
  allWorkshops{
    id
    name
    location
    description
    attendants
    date
  }
}
```

### GraphQl query to sign-in an user

`````
mutation {
  signinUser(
    credentials: {
      email: "lok@gmail.com",
      password: "1234"
    }
  ) {
    token
    user {
      id
    }
  }
}
````

### GraphQl query to create a workshop once an user is signed-in

```
mutation {
  createWorkshop(
   name: "Workshop created by awesome-user",
    description: "Test",
    location: "Remote",
    attendants: 3,
    duration: 1,
    date: "2021-09-01 19:00:00 UTC",
  ) {
    id
    name
    description
    location
    attendants
    duration
    date
    createdBy {
      id
      name
    }
  }
}
```

### GraphQl query to create a meeting once an user is signed-in

```
mutation {
  createWorkshop(
   name: "Workshop created by awesome-user",
    description: "Test",
    location: "Remote",
    attendants: 3,
    duration: 1,
    date: "2021-09-01 19:00:00 UTC",
  ) {
    id
    name
    description
    location
    attendants
    duration
    date
    createdBy {
      id
      name
    }
  }
}
```
`````
