#!/bin/bash
# Auto-push to GitHub script

echo "Enter your GitHub repository URL (e.g., https://github.com/YOUR_USERNAME/YOUR_REPO.git):"
read REPO_URL

if [ -z "$REPO_URL" ]; then
    echo "Repository URL cannot be empty!"
    exit 1
fi

# Configure git if needed
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"

# Add remote and push
git remote remove origin 2>/dev/null
git remote add origin $REPO_URL
git branch -M main
git push -u origin main

echo "Repository pushed successfully to $REPO_URL"
