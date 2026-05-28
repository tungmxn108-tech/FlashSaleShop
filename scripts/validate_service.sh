#!/bin/bash
set -e

echo "Validating service..."

for i in {1..10}; do
  if curl -fsS http://localhost/health.html; then
    echo "Service is healthy"
    exit 0
  fi

  echo "Waiting for service to become healthy..."
  sleep 5
done

echo "Service validation failed"
exit 1
