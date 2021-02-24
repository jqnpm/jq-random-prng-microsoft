<p align="center">
  <a href="https://github.com/joelpurra/jqnpm"><img src="https://raw.githubusercontent.com/joelpurra/jqnpm/master/resources/logotype/penrose-triangle.svg?sanitize=true" alt="jqnpm logotype, a Penrose triangle" width="100" border="0" /></a>
</p>

# [jq-random-prng-microsoft](https://github.com/joelpurra/jq-random-prng-microsoft)

An implementation of the [Microsoft C Runtime `rand()`](https://rosettacode.org/wiki/Linear_congruential_generator) [pseudorandom number generator (PRNG)](https://en.wikipedia.org/wiki/Pseudorandom_number_generator) function. The range is `[0,32767]`.

This is a package for the command-line JSON processor [`jq`](https://stedolan.github.io/jq/). Install the package in your jq project/package directory with [`jqnpm`](https://github.com/joelpurra/jqnpm):

```bash
jqnpm install joelpurra/jq-random-prng-microsoft
```



## Usage


```jq
import "joelpurra/jq-random-prng-microsoft" as RandomPrngMicrosoft;

# RandomPrngMicrosoft::rand(seed; n)
RandomPrngMicrosoft::rand(1;5)		# 41, 18467, 6334, 26500, 19169

# RandomPrngMicrosoft::RAND_MAX
RandomPrngMicrosoft::RAND_MAX		# 32767
```



---

## License
Copyright (c) 2014, 2015 Peter Koppstein <https://github.com/pkoppstein> and Joel Purra <https://joelpurra.com/>
All rights reserved.

When using **jq-random-prng-microsoft**, comply to the MIT license. Please see the LICENSE file for details.
