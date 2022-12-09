## counter app using Bloc

A new Flutter project.

The first thing we're going to take a look at is how to create a BlocObserver which will help us observe all state changes in the application.

Let's create lib/counter_observer.dart:

# Note:
In app.dart, We are extending MaterialApp because CounterApp is a MaterialApp. In most cases, we're going to be creating StatelessWidget or StatefulWidget instances and composing widgets in build but in this case there are no widgets to compose so it's simpler to just extend MaterialApp.

# Note: 
It's important to separate or decouple the creation of a Cubit from the consumption of a Cubit in order to have code that is much more testable and reusable.

Add counter.dart to export all the public facing parts of the counter feature.

export 'cubit/counter_cubit.dart';
export 'view/view.dart';

That's it! We've separated the presentation layer from the business logic layer. The CounterView has no idea what happens when a user presses a button; it just notifies the CounterCubit. Furthermore, the CounterCubit has no idea what is happening with the state (counter value); it's simply emitting new states in response to the methods being called.


