## gemini-cli

This repository contains Docker files and recommended configurations for a quick and minimal setup of the [Google Gemini CLI](https://github.com/google-gemini/gemini-cli), installing it in an isolated container to avoid direct installation in a host machine.

### 📋 Requirements

1. Google Gemini API Key
   - See the [Generating a Google Gemini Key](#-generating-a-google-gemini-key) reference for more information.

2. Docker
   - Windows OS (Docker Desktop): Docker version 27.4.0, build bde2b89
   - Linux/Mac OS: _(applicable Docker versions)_


Demo

https://github.com/user-attachments/assets/7e7edb8c-3b97-4933-b2a6-14c48e54c0c7

## 🛠️ Installation

1. Clone this repository.
   - `git clone https://github.com/weaponsforge/gemini-cli.git`

2. Create a `.env` file from the `.env.example` file. Replace the value of the `GEMINI_API_KEY` with your own Google Gemini API key.

   | ID | Description |
   | --- | --- |
   | GEMINI_API_KEY | Google Gemini API key |
   | GEMINI_MODEL | Gemini model<br><ul><li>`gemini-2.5-pro` (default)</li><li>`gemini-2.5-flash`, `gemini‑1.5‑pro`, etc</li><li><blockquote>**INFO:** Exclude this from the `.env` file if there's no need to change the default model</blockquote></li><ul> |

   💡 Other Gemini CLI **environment variables** are available in its [Environment Variables & .env Files](https://github.com/google-gemini/gemini-cli/blob/main/docs/cli/configuration.md#environment-variables--env-files) documentation.

3. (Optional) Put code repositories or directories for Gemini CLI inspection under the `"/projects"` directory.
   - See  the [projects/README.md](projects/README.md) file for more details on organizing your project repositories.
   - **INFO:** this step is optional since the Gemini CLI does not require code repositories to answer general prompts.

4. **Local build:** build the Docker image.
   - Run this command only during the **initial installation** or if there are **changes to the `Dockerfile`**.<br>
   - `docker compose build`

5. **Pull the pre-built Docker image**: (Optional) This repository deploys the "latest" Docker image to Docker Hub on the creation of new Release/Tags. It is available at: https://hub.docker.com/r/weaponsforge/gemini-cli
   - Use this step to skip building the image locally at **step # 4**.
   - Pull the pre-built development Docker image:
      `docker pull weaponsforge/gemini-cli`

## 📖 Usage

1. Run the container.
   - `docker compose up -d`

2. Verify the container is running.
   - `docker ps`

3. Start the Gemini CLI from the container's command line.
   - `docker exec -it weaponsforge-gemini-cli gemini`

4. Use the Gemini CLI.
   - Select a theme (eg., "ANSI Light")
   - Type messages or prompts in the Gemini CLI's input message area.
   - Use the `projects/` folder to reference codes or repositories within the Gemini CLI (mounted as Docker volumes) eg., `@projects/my-app`

5. Exit the Gemini CLI.
   - Press `Ctrl + C`

6. Stop the container.
   - `docker compose down`

7. Verify the container stopped running. The following should yield empty logs.
   ```
   docker ps
   docker ps -a
   ```

8. Cleanup: delete unused volumes.
   - `docker volume prune`

### 💡 Generating a Google Gemini Key

<details>
<summary>Click to view notes</summary>

_(These steps require a Google account)_

1. Create one from [Google AI Studio](https://aistudio.google.com/app/apikey).
2. Follow the prompts for creating an API key.
   - Type a project name in which to create the API key.
   - > **INFO:** You may also select an existing Google project in which to create the key.
3. Copy the resulting API key in a safe and secure location.

</details>

### 💡 Tips

- The [Gemini CLI](https://github.com/google-gemini/gemini-cli) (using the free Gemini 2.5 Pro model) provides precise and accurate results but quickly exhausts the free subscription quotas when analyzing entire code bases. Use it alongside the (free-tier) [Cursor AI code editor](https://www.cursor.com/) to maximize free accounts/trial usage.

## 📝 References

- [Google Gemini CLI](https://github.com/google-gemini/gemini-cli)
- [Google Gemini Cookbook](https://github.com/google-gemini/cookbook)

@weaponsforge<br>
20250630
