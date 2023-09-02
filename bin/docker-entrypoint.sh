#!/bin/bash
set -e

echo -e "----------------------\nInitializing Rails App\nMODE: $RAILS_ENV\n----------------------\n"

# Remove a potentially pre-existing server.pid for Rails.
rm -f /usr/src/app/tmp/pids/server.pid

echo "rails: installing gems..."
bundle check || bundle install --jobs 4

echo "rails: creating database..."
bundle exec rake db:create
echo "rails: migrating database..."
bundle exec rake db:migrate

# productionモードの場合はassetsをコンパイルする
if [ "$RAILS_ENV" = 'production' ]; then
  echo "rails: precompiling assets..."
  bundle exec rake assets:precompile
fi

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
