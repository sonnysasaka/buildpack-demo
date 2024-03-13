pack build sample-php \
  --builder=gcr.io/gae-runtimes/buildpacks/google-gae-22/php/builder \
  --env GAE_APPLICATION_YAML_PATH=./app.yaml --env GOOGLE_FLEX_APPLICATION=1 \
  --env NGINX_SERVES_STATIC_FILES=true
