param($eventID,$subjectusername,$targetusername,$targetsid,$subjectusersid)

function event-passreset ($eventID,$subjectusername,$targetusername)
{
    "EventID: " + $eventID + ", " + $subjectusername + " attempted to reset the password for " + $targetusername + " at " + (get-date) | out-file C:\scripts\output.var -Append
}
function event-membershipchange ()
{

}
if ($eventID -eq 4724)
{
    event-passreset -eventID $eventID -subjectusername $subjectusername -targetusername $targetusername
}
