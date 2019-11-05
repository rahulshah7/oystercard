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

- [ ] Write up a plan for how you will interact with your code and manually test in IRB.
- [ ] Create a unit test for the `Oystercard` class
- [ ] Write a failing test that checks that a new card has a `balance`
- [ ] Write code that will make this test pass
- [ ] Now refactor by setting the balance in initialize using an instance variable
- [ ] Remove the balance method entirely and replace with an attr_reader
