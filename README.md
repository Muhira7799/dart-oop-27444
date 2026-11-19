
Name: Muhira Mohammed Abdulrhman Ibrahim

Student ID: 27444

My numbers:
- D: 44
- L: 4
- Initial Balance: 1440 RWF
- Bus Fare: 244 RWF
- Student Discount: 14%

 ## Output of `main.dart`

```text
Error: name too short
Owner: Ama | Balance: 1440 RWF
Owner: Muhira Mohammed Abdulrhman Ibrahim | Balance: 1440 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 244 RWF
Paid 244 RWF
Owner: Muhira Mohammed Abdulrhman Ibrahim | Balance: 2952 RWF
Student discount: 34 RWF
Paid 210 RWF
Owner: Muhira Mohammed Abdulrhman Ibrahim | Balance: 1230 RWF
Student card: 14% off
```


## Part 1: Why Is There No Setter for the Balance?

There is no setter for the balance so users cannot change it directly. Balance updates should happen through specific methods, such as topUp() to add funds and pay() to pay the fare.
• Key takeaway: Anyone could set arbitrary values if a direct setter existed, so changes must stay controlled.

## Part 2: What Does the ~/ Operator Do?

The / operator performs standard division and can return a decimal result. The ~/ operator (integer division) returns a whole number and drops any decimal remainder.
• Examples:
	• 237 * 17 / 100 = 40.29
	• 237 * 17 ~/ 100 = 40
• Key takeaway: / keeps the decimal part, while ~/ removes it.

## Part 4: Bug Detection and Fixes

| Bug | The line | Why it is wrong | My fix |
|---|---|---|---|
| 1 | `String _brand;` | The field has no initial value. | Use `late` or give it a value. |
| 2 | `int _battery;` | The field has no initial value. | Set its value in the constructor. |
| 3 | `SmartPhone` constructor | It does not call the parent constructor. | Add `: super(brand, battery)`. |
| 4 | `restart()` | The parent class has no `restart()` method. | Add `restart()` to `Phone`. |
| 5 | `print(p.battery());` | `battery` is a getter, not a method. | Write `print(p.battery);`. |
| Not a bug | `p.battery = 100;` | This line is correct when a setter exists. | Keep the line and add a setter that accepts values from 0 to 100. |

## Part 5: Predicting Program Output

### Prediction Before Running the Code

• Question 1: -5

• Question 2: 2

• Reason: I expected the setter to accept -5, and I thought each call to add() increased the item count by 1.

### Real Output

```text
1
5
```

### Was My Prediction Correct?
No. The setter rejected -5, and add() in BigBag increases the count by 2 per call.

