# value_notifier_demo

ValueNotifier - updating the data in the parent widget from the child widget. 

## Description

This code will help you solve the problem of updating the data in the parent from the child. Since it is impossible to update a parent from a child, if we pass parent-setState to the child.

I already use bloc + clean arch in my projects, but I wanted to find something less cumbersome, for updating data locally only on the widgets tree.

Locally, I don’t need states - since the data is thrown inside the widget tree. There is no network data that takes a long time to load or contain delivery errors.

Pass the ValueNotifier object from parent to child in global static variable.

Thank @ResoCoder for the idea:
[https://github.com/ResoCoder/powers-of-immutable-state]
[https://youtu.be/4UePKj4vsK8?t=2889]
