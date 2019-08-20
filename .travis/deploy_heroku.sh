##!/bin/sh
#wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
#heroku plugins:install heroku-container-registry
#docker login -e _ -u _ --password=$HEROKU_API_KEY registry.heroku.com
#heroku container:push web --app $HEROKU_APP_NAME
#heroku container:release web --app $HEROKU_APP_NAME



#!/bin/sh
# https://github.com/heroku/heroku-container-registry
# https://devcenter.heroku.com/articles/heroku-cli
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
heroku plugins:install @heroku-cli/plugin-container-registry
docker login --username=_ --password=$HEROKU_API_KEY registry.heroku.com
heroku container:push web --app $HEROKU_APP_NAME
heroku container:release web --app $HEROKU_APP_NAME