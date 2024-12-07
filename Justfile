create-tofu-stack dirname:
  #!/usr/bin/env bash

  mkdir -p $PWD/{{dirname}}
  touch $PWD/{{dirname}}/{main,versions,variables,outputs}.tf

checkov:
  checkov -c .checkov_config.yaml -d .

lint:
  pre-commit run -a
