# Check disk usage
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

# Set the threshold
THRESHOLD=80

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    # Create the email content
    EMAIL_CONTENT=Current disk usage: $DISK_USAGE%"

    # Send the email
    echo "$EMAIL_CONTENT" 

    echo "Alert email sent to"
else
    echo "Disk usage is within the threshold. No email sent."
fi
