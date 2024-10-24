FROM node:18-alpine
WORKDIR /app
RUN npm install -g npm@9
COPY package*.json .
COPY themes ./themes
COPY extensions ./extensions
COPY public ./public
COPY media ./media
COPY config ./config
COPY translations ./translations
COPY packages ./packages
RUN npm install
RUN npm run build

EXPOSE 3000
CMD ["npm", "run", "start"]