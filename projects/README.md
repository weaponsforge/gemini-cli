## gemini-cli/project

### Projects Directory

Place your project repositories in this folder to enable Gemini CLI inspection when running via Docker Compose.

> [!WARNING]
> Avoid including the projects' installation dependencies (e.g., /node_modules) to minimize the number of files/codes reflected in the Docker container (since it uses bind-mount.)

Sample folder structure

📂 projects<br>
└─ 📂 my-app<br>
└─ 📂 cool-website<br>
└─ 📂 my-portfolio<br>

@weaponsforge<br>
20250630
