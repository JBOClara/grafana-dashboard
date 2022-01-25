#!/bin/bash

for x in *-dashboard.json; do
  echo "Processing $x"
  cat ${x} | jq -r '.dashboard' | sed -e 's/\${DS_PROMETHEUS}/Prometheus/g' > ./raw/${x}
done

