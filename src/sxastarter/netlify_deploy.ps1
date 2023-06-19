$netlifyTOken="8PsVWpVEYRxDv7w57Cdya8SYHYo1eeU6HaZ0INkyFc4"
#$projectname="headlessstarterkit"

#$subfolder="../src/rendering"

#$currentDir = Get-Location
# Check if the Vercel CLI is installed
if (-not (Get-Command vercel -ErrorAction SilentlyContinue)) {
    # Install the Vercel CLI using npm
    npm install -g netlify
}

# Change to the Next.js project subfolder
#cd $subfolder

# Log in to your Vercel account
netlify login 

# Set the Vercel project context to your project
#vercel switch $vercelProjectName

# Deploy the project using the Vercel CLI
netlify deploy --build --prod  --auth $netlifyTOken

# Change back to the original directory
# $currentDir 