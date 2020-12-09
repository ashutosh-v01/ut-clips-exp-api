%dw 2.0
output application/json
---
{
	message: if(vars.errorCode == 'INTERNAL_SERVER_ERROR') 'Internal server error occurred. Please check logs.' else error.description,
	code: vars.errorCode
}