%dw 2.0
output application/json
---
{
  "query": "{getClipByUuid (uuid:"++ "\"" ++ attributes.queryParams.uuid! ++ "\"" ++ ")"++
  "{
    __typename
    createdAt
    creatorName
    embeddableUrl
    note
	participant {
      __typename
      age
      country
      gender
      income
      name
      state
    }
    study {
      __typename
      title
    }
  }" ++
  
  "}"
}