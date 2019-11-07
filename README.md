## Challenges

### 1. Create a Gemfile

- [x] construct a valid Gemfile
- [x] specify a correct source for gems
- [x] specify the latest Ruby version
- [x] add the `rspec` gem to ‘test’ and ’development’ groups
- [x] commit only this Gemfile

### 2. Create RSpec conventional files

- [x] Generate conventional files (helper and config) for an RSpec project using a command-line option of the rspec executable file
- [x] Follow RSpec naming convention for files and folders
- [x] Create a test file for the Oystercard class without any tests but with a `describe` block (doesn't exist yet)

### 3. Review debugging basics

- [ ] Write down the type of error in the issue comments
- [ ] Write down the file path where the error happened
- [ ] Write down the line number of the error
- [ ] Use the Ruby Documentation to find out what the error means
- [ ] Suggest one way of solving the error

### 4. Add the balance

- [x] Write up a plan for how you will interact with your code and manually test in IRB.
  - I will load the Oystercard.rb file in to Pry and test features.
- [x] Create a unit test for the `Oystercard` class
- [x] Write a failing test that checks that a new card has a `balance`
- [x] Write code that will make this test pass
- [x] Now refactor by setting the balance in initialize using an instance variable
- [x] Remove the balance method entirely and replace with an attr_reader

### 5. Enable top up functionality

- [x] Write up a plan for how you will interact with your code and manually test in IRB.
  - I will load Oystercard class in Pry and create a card instance, then try to #top_up card by 100.
- [x] Write a test for the `top_up` method
- [x] Make sure the test fails before implementing the method
- [x] Implement the method to make the test pass

### 6. Enforce maximum balance

- [x] Write up a plan for how you will interact with your code and manually test in IRB.
  - I will assign a limit to a constant, then attempt to #top_up the oystercard, expecting an error to be raised if the new balance would be over the assigned limit.
- [x] Write a test that checks the `top_up` method throws an exception if the new balance would exceed the limit.
- [x] Use a constant to store the limit
- [x] Implement the limit in the top_up method. Use an inline `if` statement to check if the limit would be exceeded
- [x] Make the error message include the limit value
- [x] Use interpolation to keep your code DRY

### 7. Deduct the money

- [x] Write up a plan for how you will interact with your code and manually test in IRB.
  - I will create an instance of an Oystercard in Pry and #top_up(amount), then attempt to #deduct(amount) from the Oystercard instance.
- [x] Write a test for the `deduct` method, see it fail
- [x] Implement the method, see the test pass

### 8. Add touch in/out support

- [x] Write up a plan for how you will interact with your code and manually test in IRB.
  - I will create an instance of an Oystercard in Pry and expect `#in_journey?` to be `true` after calling `#touch_in` and `false` after calling `#touch_out`.
- [ ] Write tests for `in_journey?`, `touch_in` and `touch_out`
- [ ] Write implementation of these methods that will make the tests pass
- [ ] Use an instance variable to track whether the card is in use
- [ ] Use an RSpec predicate matcher to check if the card is in use
- [ ] Use boolean values to store the state of the card

### 9. Checking minimum balance on touch in

- [x] Write up a plan for how you will interact with your code and manually test in IRB.
  - I will create an instance of Oystercard and expect #touch_in to raise an error due do @balance being lower than Oystercard::MINIMUM_FARE
- [x] Write a test that checks that an error is thrown if a card with insufficient balance is touched in
- [x] Write the implementation
- [x] Update existing tests, if necessary, to make sure they still pass
- [x] Refactor to remove any magic numbers and replace with a constant

### 10. Charging for the journey

- [x] Write up a plan for how you will interact with your code and manually test in IRB.
  - I will #top_up(amount) a card instance, #touch_in and then #touch_out, expecting balance to reduce by the minimum_fare
- [ ] Write a test that uses `expect {}.to change{}.by()` syntax to check that a charge is made on touch out.
- [ ] Update the `touch_out` method to make the test pass
- [ ] Make '#deduct' a private method
- [ ] Keep the code DRY