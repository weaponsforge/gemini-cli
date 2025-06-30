FROM node:22-slim AS base

# Create app directory and set ownership
WORKDIR /opt/app
RUN chown -R node:node /opt/app

# Install global dependencies as root (necessary for global packages)
RUN npm install -g @google/gemini-cli

# Switch to non-root user
USER node

# Use a more appropriate entrypoint
CMD ["sh"]
