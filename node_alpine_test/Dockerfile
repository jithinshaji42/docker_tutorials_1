FROM node:14-alpine AS builder
ENV NODE_ENV production
# Add a work directory
WORKDIR /app
# Cache and Install dependencies
COPY package.json .
COPY yarn.lock .
RUN yarn install --production
# Copy app files
COPY . .
# Build
CMD yarn build

FROM node:14-alpine AS production
# Copy built assets/bundle from the builder
COPY --from=builder /app/build .
EXPOSE 80
# Start the app
CMD node app.js

