# https://rosettacode.org/wiki/Linear_congruential_generator#jq

def RAND_MAX:
	32767;


# 15-bit integers generated using the same formula as rand() 
# from the Microsoft C Runtime.
# Input: [ count, state, rand ]
def next_rand:
  .[0] as $count | .[1] as $state
  | ( (214013 * $state) + 2531011) % 2147483648 # mod 2^31
  | [$count+1 , ., (. / 65536 | floor) ];
 
# Generate the first n pseudo-random numbers:
def rand(seed; n):
  [0,seed]
  | next_rand  # the seed is not so random
  | recurse(if .[0] < n then next_rand else empty end)
  | .[2];
