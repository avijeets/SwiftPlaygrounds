var todo : [String] = [
    "Finish collections course",
    "Buy groceries",
    "Respond to emails",
    "Pick up dry cleaning",
    "Order book online",
    "Mow lawn"
]

for task in todo {
    print(task)
}

// Range Operators

for number in 1...10 {
    print("\(number) times 5 is equal to \(number * 5)")
}


//While Loop

var index = 0
while index < todo.count {
    print(todo[index])
    index+=1
}

// Repeat While

var counter = 1

while counter < 1 {
    print ("I'm inside the while loop")
    counter+=1
}
repeat {
    print ("I'm inside the repeat loop")
    counter+=1
}
while counter < 1
