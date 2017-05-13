=begin
You have a bank of switches before you numbered from 1 to 1000. Each switch is connected to exactly one light that is initially off. You walk down the row of switches, and turn every one of them on. Then, you go back to the beginning and toggle switches 2, 4, 6, and so on. Repeat this for switches 3, 6, 9, and so on, and keep going until you have been through 1000 repetitions of this process.

Write a program that determines which lights are on at the end.

Example with 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4.

With 10 lights, 3 lights are left on: lights 1, 4, and 9.

Input:
Integer representing number of lights for the process

Output:
Array with number of each light turned on

Rules:
Change each n light's value where n is the current round of iteration

Examples/Tests:


Data Structure:
Create a hash based on the number such that { number: false }

Algorithm:
After initializng above hash through an interation, then:
Iterate number of rounds
  -create loop to... come back here once structure is built.

Summary Sentence:
=end

def lights(num)
  lights_hash = {}
  for light in (1..num)
    lights_hash[light] = false # initialize all lights to false which is "off"
  end

  for index in (1..num)
    lights_hash.each do |light, boolean|
      lights_hash[light] = !boolean if light % index == 0
    end
  end

  lights_hash.select { |_, v| v == true }.keys # true means light is on
end

p lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196,
                   225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676,
                   729, 784, 841, 900, 961]
p lights(10) == [1, 4, 9]
p lights(5) == [1, 4]
p lights(1) == [1]
p lights(2) == [1]
p lights(3) == [1]