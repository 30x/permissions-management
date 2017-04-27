FROM mhart/alpine-node:7

WORKDIR /authz/permissions-maintenance
ADD permissions-maintenance/package.json .
RUN npm install --production
ADD permissions-maintenance/. .

WORKDIR /authz/permissions-migration
ADD permissions-migration/package.json .
RUN npm install --production
ADD permissions-migration/. .

WORKDIR /authz/folders
ADD folders/package.json .
RUN npm install --production
ADD folders/. .

WORKDIR /authz/teams
ADD teams/package.json .
RUN npm install --production
ADD teams/. .

WORKDIR /authz/permissions-audit
ADD permissions-audit/package.json .
RUN npm install --production
ADD permissions-audit/. .

WORKDIR /authz/permissions-management
ADD permissions-management/package.json .
RUN npm install --production
ADD permissions-management/. .

ENV COMPONENT_NAME="permissions-management" 
ENV PORT=3000
EXPOSE 3000
CMD ["node", "permissions-management.js"]