# Identification Number validation

Given a number, determine whether or not it is valid per the Luhn formula.

## The assignment

This code assignment has a few rules or guidelines:

1. This is a code assignment suited for just-starting and well-seasoned Ruby engineers.
2. Please spend 2 hours on it. Not more. Not less. This goes for experienced and inexperienced engineers
3. We care for quality over quantity.
    * We rather see a well factored but incomplete solution, over a badly factored but complete solution.
    * Keep the single responsibility principle (SRP) in mind.
4. If you think the spec for the assignment is incomplete: Add test(s).
5. If you add code that isn't covered by (a) test(s): Add it/them.

The [Luhn algorithm](https://en.wikipedia.org/wiki/Luhn_algorithm) is a checksum formula used to validate a variety of numbers, such as credit card numbers and social security numbers.

## Validating a Number

Strings of length 1 or less are not valid. Spaces are allowed in the input, but they should be stripped before checking. All other non-digit characters are disallowed.

### Example 1: valid credit card number

    4539 1488 0343 6467

The first step of the Luhn algorithm is to double every second digit, starting from the right. We will be doubling

    4_3_ 1_8_ 0_4_ 6_6_

If doubling the number results in a number greater than 9 then subtract 9 from the product. The results of our doubling:

    8569 2478 0383 3437

Then sum all of the digits:

    8+5+6+9+2+4+7+8+0+3+8+3+3+4+3+7 = 80

If the sum is evenly divisible by 10, then the number is valid. This number is valid!

### Example 2: invalid credit card number

    8273 1232 7352 0569

Double the second digits, starting from the right

    7253 2262 5312 0539

Sum the digits

    7+2+5+3+2+2+6+2+5+3+1+2+0+5+3+9 = 57

57 is not evenly divisible by 10, so this number is not valid.

## How to get started

For running the tests provided, you will need the Minitest gem. Open a terminal window and run the following command to install minitest:

    gem install minitest

Run the tests from the assignment directory using the following command:

    ruby identification_number_test.rb

## Source

The Luhn Algorithm on Wikipedia: [en.wikipedia.org/wiki/Luhn_algorithm](https://en.wikipedia.org/wiki/Luhn_algorithm)
