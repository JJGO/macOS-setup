# macOS Cleanup

- Run DaisyDisk to do cleanup

- Spotify: Ensure that `~/Library/Application Support/Spotify/prefs` has an entry of the form `storage.size=2048` where the number is the max cache size in megabytes

- Docker:
  - Delete all containers: `docker rm -vf $(docker ps -a -q)`
  - Delete all images `docker rmi -f $(docker images -a -q)`

- Xcode caches - `xcrun simctl delete unavailable`
