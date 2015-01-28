#!/usr/bin/env bash


fileUnderTest="${BASH_SOURCE%/*}/../jq/main.jq"


read -d '' fourLineTests <<-'EOF' || true
rand: creates predicted outputs for seed 1, 5 numbers.
null
[ rand(1;5) ]
[ 41, 18467, 6334, 26500, 19169 ]

RAND_MAX: returns the maximum value.
null
RAND_MAX
32767

rand: all outputs for seed 843, 1000000 numbers are [0,RAND_MAX].
null
[ rand(843;1000000) ] | map(. >= 0 and . <= RAND_MAX) | all
true
EOF

function testAllFourLineTests () {
	echo "$fourLineTests" | runAllFourLineTests
}


# Run tests above automatically.
# Custom tests can be added by adding new function with a name that starts with "test": function testSomething () { some test code; }
source "${BASH_SOURCE%/*}/test-runner.sh"
