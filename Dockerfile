FROM cypress/base:12.6.0

LABEL version="1.0.0"
LABEL repository="https://github.com/kingscooty/actions-yarn-cy"
LABEL homepage="https://github.com/kingscooty/actions-yarn-cy"
LABEL maintainer="KingScooty (Scotty) <scott@wildflame.co.uk>"

LABEL com.github.actions.name="GitHub Action for Yarn + Cypress"
LABEL com.github.actions.description="Wraps the yarn CLI to enable common yarn commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"
COPY LICENSE README.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
