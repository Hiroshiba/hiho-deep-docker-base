set -eu

target=${1:-'*'}

for dockerfile in Dockerfile_$target; do
  tag=${dockerfile/Dockerfile_/}
  docker build -f $dockerfile -t hiroshiba/hiho-deep-docker-base:$tag .
  docker push "hiroshiba/hiho-deep-docker-base:$tag"
done
