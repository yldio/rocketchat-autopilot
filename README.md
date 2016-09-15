# Autopilot Pattern for Rocket.Chat

This docker compose configuration configures [rocket.chat](https://rocket.chat/)
and it's dependencies with the [Autopilot Pattern](http://autopilotpattern.io/).

## Notes

* Version 2 of docker-compose files tries to create networks implicitly even if
you don't specify any. Joyent Triton doesn't implement the network bits of the
docker API because it makes no sense when the containers are running on bare
metal.  So stick to version 1.

* The `COPY` command behaves differently with respect to trailing slashes
between Joyent Triton and local docker running on linux
