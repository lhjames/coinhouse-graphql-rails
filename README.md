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

### GraphQl query to consult all meetings

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
