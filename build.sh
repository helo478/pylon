docker build -t pylon:${GIT_COMMIT_HASH_ABBREV} .
docker tag pylon:${GIT_COMMIT_HASH_ABBREV} pylon:latest

