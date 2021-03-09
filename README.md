# coinhouse-graphql-rails

Test for Coinhouse: a Rails project with a GraphQL API to manage office hours and workshops

### GraphQl query to consult all meetings

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

### GraphQl query to consult all workshops

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

### GraphQl query to create a workshop

```
mutation {
  createWorkshop(
    name: "Test",
    description: "Test",
    location: "Test",
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
  }
}
```

### GraphQl query to create a meeting

```
mutation {
  createMeeting(
    name: "Meeting with Julie Smith",
    description: "Job interview",
    location: "Remote",
    attendants: 2,
    duration: 1,
    date: "2021-12-20 19:00:00 UTC",
) {
    id
    name
    description
    location
    attendants
    duration
    date
}
}
```

### GraphQl query to sign-in an User

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
`````
