<# ==========================================
 # Friday 13th
 # ------------------------------------------
 # Our beloved neighbor is a bit superstitious and we would like to help to find the next critical Fridays when it is better to stay at home.
 # It should definitely be a one-liner that we can write on a piece of paper and pin to the door. 
 # Will you help our neighbor keep his peace of mind?
 #
 # ========================================== #>

 # Load function
. "$PSScriptRoot/date-utils/Get-MatchingDates.ps1"

# Use function with humorous emoji output
"💣 Stay in bed on: " + (Get-MatchingDates -fromYear 2022 -toYear 2027 -dayOfWeek Friday -dayOfMonth 13)