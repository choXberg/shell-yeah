# Date Utils

This folder contains reusable PowerShell functions related to date and time calculations.

## Function: `Get-MatchingDates`

Finds all dates between a given year range where a specific weekday (e.g., Friday) falls on a specific day of the month (e.g., 13th).

### Parameters:
- `fromYear`: Start year
- `toYear`: End year
- `dayOfWeek`: Day of the week (e.g., "Friday")
- `dayOfMonth`: Numeric day in month (1-31)

### Example:
```powershell
Get-MatchingDates -fromYear 2022 -toYear 2027 -dayOfWeek Friday -dayOfMonth 13
```

### Output:
A single string of matching dates in the format `yyyy-MM-dd`, separated by commas.