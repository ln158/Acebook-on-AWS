!/bin/bash
set -e
sleep 10
curl -f http://localhost:3000/health || curl -f http://localhost:3000