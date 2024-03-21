# Build builder image from https://github.com/GoogleCloudPlatform/buildpacks first:
# $ bazel build builders/php/builder.image
# Check that local docker image gcp/php is created.
pack build sample-php \
  --builder=gcp/php \
  --env GAE_APPLICATION_YAML_PATH=./app.yaml --env GOOGLE_FLEX_APPLICATION=1 \
  --env PHP_FPM_WORKER_COUNT=5 \
  --env NGINX_SERVES_STATIC_FILES=true

# To verify produced image, run the app image:
# $ docker run --name my-sample-php
#
# And exec /bin/bash inside the container:
# $ docker exec -it my-sample-php /bin/bash
# (in app container) $ cat /layers/google.php.webconfig/webconfig/php-fpm.conf
