
# Dart OOP Assignment: Kigali Bus Card

**Name:** Muhira Mohammed Abdulrhman Ibrahim

**Student ID:** 27444

## My Numbers

- D = 44
- L = 4
- Starting balance = 1440 RWF
- Bus fare = 244 RWF
- Student discount = 14%

## Part 1: Why Is There No Setter for Balance?

The balance has no setter to prevent users from changing it directly. It should only change through methods such as `topUp()` and `pay()`.

## Part 2: What Does `~/` Do?

The `/` operator returns a decimal result, while `~/` returns an integer by removing the decimal part.

```text
237 * 17 / 100 = 40.29
237 * 17 ~/ 100 = 40
```

## Part 4: Bug Hunt

| Bug | The line | Why it is wrong | Your fix |
|---|---|---|---|
| 1 | `String _brand;` | The non-nullable field needs an initial value. | Initialize the field or use `late`. |
| 2 | `int _battery;` | The non-nullable field needs an initial value. | Initialize it through the constructor. |
| 3 | SmartPhone constructor | The parent constructor is not called. | Add `: super(brand, battery)`. |
| 4 | `@override void restart()` | The parent class has no `restart()` method. | Add `restart()` to Phone. |
| 5 | `print(p.battery());` | `battery` is a getter, not a method. | Use `print(p.battery)`. |
| Not a bug | `p.battery = 100;` | This is valid when a setter exists. | Keep the line and add a setter that accepts values from 0 to 100. |

## Part 5: Predict the Output

### My Prediction

- Question 1: A (-5)
- Question 2: A (2)

My reason: I thought the setter would accept -5, and I thought each call to `add()` would increase the items by one.

### Real Output

```text
1
5
```

### Was I Right?

No. My prediction was different from the real output. The setter rejected -5, and `BigBag.add()` increases the items by two each time.

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
