#!/bin/bash

# === Step 1: Go to project directory ===
cd /path/to/your/project || exit
echo "Inside project folder: $(pwd)"

# === Step 2: Stage changes ===
git add .
echo "Staged all changes"

# === Step 3: Commit changes ===
read -p "Enter commit message: " msg
git commit -m "$msg"
echo "Committed changes locally"

# === Step 4: Push to GitHub ===
git push origin main
echo "Pushed changes to GitHub"

# === Step 5: Trigger Jenkins build manually (optional) ===
# Replace USER and API_TOKEN with your Jenkins credentials
JENKINS_URL="http://13.232.239.24:8081/job/first_job/build"
JENKINS_USER="your_jenkins_username"
JENKINS_TOKEN="your_jenkins_api_token"

curl -X POST "$JENKINS_URL" --user "$JENKINS_USER:$JENKINS_TOKEN"
echo "Triggered Jenkins build"

