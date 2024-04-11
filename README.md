# Todo List w/ SwiftData

This project is just one of the many ways you can practice implementing SwiftData. There are warnings throughout the app that contain step-by-step instructions to implement SwiftData.

## Step 1:
Step one can be found in the `DataModel` file. Step 1 says to "import SwiftData and add `@Model` to the top of this class."

## Step 2:
Step 2 is found in the main file called `TodoListApp`. Step 2 says "import SwiftData and add `.modelContainer` for `Task.self`."

## Step 3 & 4:
Steps 3 & 4 can be found in the `ContentView`. Step 3 says "import SwiftData and add `@Environment(\.modelContext)` variable," and Step 4 says to add `@Query` variable of type `[Task]`.

## Step 5 & 6:
Steps 5 & 6 are found in the `AddItem` view. Step 5 says "Add an `@State` variable called `newTask` and initialize an empty string," and Step 6 says "Add an `@Environment` variable for the `modelContext` to access the container."

## Guiding Resources
[This is the tutorial I used personally to understand SwiftData, and this tutorial goes further into detail about this topic, it's a Hacking w/ Swift Tutorial](https://www.hackingwithswift.com/quick-start/swiftdata/swiftdata-tutorial-building-a-complete-project)
