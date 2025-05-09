FROM node:alpine
RUN apk add --update nodejs npm
WORKDIR /app

# Instalar dependências necessárias para o Prisma
RUN apk add --no-cache openssl

RUN npm -v

COPY package.json package-lock.json ./

RUN npm install\
        && npm install typescript -g

COPY prisma ./prisma/
RUN npx prisma generate

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
