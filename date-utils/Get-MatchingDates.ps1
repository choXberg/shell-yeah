<#
.SYNOPSIS
Finds all dates where a specific day of the week falls on a specific day of the month between two years.

.DESCRIPTION
Useful for identifying days like "Friday the 13th" across a range of years.
Returns a comma-separated string of matching dates.

.PARAMETER fromYear
The start year of the range.

.PARAMETER toYear
The end year of the range.

.PARAMETER dayOfWeek
The day of the week to match (e.g. Friday).

.PARAMETER dayOfMonth
The day in the month to match (e.g. 13).

.EXAMPLE
Get-MatchingDates -fromYear 2022 -toYear 2027 -dayOfWeek Friday -dayOfMonth 13
#>

function Get-MatchingDates {
    param(
        [int]$fromYear,
        [int]$toYear,
        [ValidateSet("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")]
        [string]$dayOfWeek,
        [ValidateRange(1,31)]
        [int]$dayOfMonth
    )

    $dates = $fromYear..$toYear | ForEach-Object {
        $year = $_
        1..12 | ForEach-Object {
            $month = $_
            try {
                $date = Get-Date -Year $year -Month $month -Day $dayOfMonth
                if ($date.DayOfWeek -eq $dayOfWeek) { $date }
            } catch {
                # Skip invalid dates
            }
        }
    }

    return ($dates | Sort-Object | ForEach-Object { $_.ToString("yyyy-MM-dd") } -join ", ")
}