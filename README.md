die
===
die lets you roll dice on the command line.

```bash
$ ./die 3d6
6
4
6
$ ./die 1d2
1
$ ./die 1d100
45
```

Testing
-------
You'll need [roundup](https://github.com/bmizerany/roundup)
If you use Homebrew:
```bash
$ brew install roundup
```
Otherwise take a look at the [install guide](https://github.com/bmizerany/roundup/blob/master/INSTALLING#files).

Then run the tests with:
```bash
$ ./die_test.sh
```

More Examples
-------------

Sum many dice rolls:
```bash
$ ./die 100d6 | paste -sd+ - | bc
```

Improvements and Comments Welcome
---------------------------------
Thanks for watching!

