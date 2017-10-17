# Run scripts v1.1

### Scripts

`./run/clean-up-docker.sh` (Attempts to delete everything in docker)

`./run/locally.sh` (Run the project locally)

`./run/tdd.sh` (Watches for any file changes in .js and .jsx files and immediately runs the test suites)

`./run/unit-tests.sh [-j]` (Runs only unit tests once)

`./run/integration-tests.sh [-j]` (Runs only integration tests once)

`./run/acceptance-tests.sh [-j] [-e ENV]` (Runs only acceptance tests once)

`./run/all-tests.sh [-j]` (Runs unit + integration + acceptance tests. Can only be run locally)

`./run/cdc-tests.sh [-j] [-e ENV]` (Runs only cdc tests once)

`./run/e2e-tests.sh [-j] [-e ENV]` (Runs only e2e tests once)

`./run/generate-assets.sh [-j] [-e ENV]` (Generates javascript assets)

### Switches

`-e <ENV>` (Switches environment, with that you can load a different config file. `ENV={local|aslive|live}`)

`-j` (Switches to Jenkins mode, which means that it will use `docker-compose-jeninks.yml` instead)
