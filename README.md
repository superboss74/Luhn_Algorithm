# The Luhn Algorithm

Is a method that credit cards and other identification numbers can use to distinguish valid numbers from invalid ones. It’s meant to prevent users from making accidental errors.

By running a quick mathematical formula on the numbers of a card, you can quickly determine whether or not it passes the Luhn algorithm.

## How the Algorithm Works

* **Step 1** - break the credit card into its individual digits.
* **Step 2** - Start from the right, double every second digit (that is, digit 2, 4, 6 etc.).
* **Step 3** - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
* **Step 4** - Sum the digits.
* **Step 5** - If the sum is divisible by 10, it's a valid number. Otherwise it's invalid.

## A Valid Case Example

The number `4194560385008504` is an example of a credit card that passes the Luhn algorithm (although it's not actually an issued card).

|Digits to Test|4| 1|9|4|5|6|0|3|8|5|0|0|8|5|0|4|
|-----|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|--:|
|Double Every Other|8|1|18|4|10|6|0|3|16|5|0|0|16|5|0|4|
|Subtract |9|8|1|9|4|1|6|0|3|7|5|0|0|7|5|0|4|

**Sum of the Digits:** 60. Is divisible by 10. `Valid!`

## An Invalid Case Example

The number `4194560385008505` is an example of a credit card that fails the Luhn algorithm.

|Digits to test |4|1|9|4|5|6|0|3|8|5|0|0|8|5|0|5|
|-----|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|--:|
|Double Every Other|8|1|18|4|10|6|0|3|16|5|0|0|16|5|0|5|
|Subtract|9|8|1|9|4|1|6|0|3|7|5|0|0|7|5|0|5|

## Solution

1. Clone or download this Repository
2. Then `cd` into /lib subdirectory
3. Open Terminal and run

```ruby
ruby luhn.rb
```

### Testing

Validation was done using Ruby v2.5.3p105 and RSPEC.

### Credits

* [Converting Integers to Arrays](https://www.ruby-forum.com/t/convert-integer-to-array/137353/24)
* [Stack overflow - How to sum array of numbers in Ruby?](https://stackoverflow.com/questions/1538789/how-to-sum-array-of-numbers-in-ruby)
* [Stack overflow - How do I iterate through the digits of an integer?](https://stackoverflow.com/questions/13091558/how-do-i-iterate-through-the-digits-of-an-integer)
