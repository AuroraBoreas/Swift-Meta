/*

? Foundation

! A: Foundation is a class, just like System.Object in C#
! A: it provides primitive(or meta) data types services
! A: it includes:
!           data storage and persistence
!           text processing
!           date and time calculation
!           sorting and filtering
!           networking

*/

import Foundation

var keepPlaying = true
var continueGuess = true
var randomNumber = 1
var input = ""

while keepPlaying {
    /*
    ? arc4random_uniform(lbound, ubound)

    similar to 
    ```C#
        using System;

        namespace MyNS
        {
            class MyCls
            {
                public static Main(String[])
                {
                    Random rnd as new Random();
                    int x = rnd.next(lbound, ubound);
                    Console.log($"x = {x}");
                }
            }
        }
    ```

    ```C++
        #include <cstdlib>
        #include <ctime>
        #include <iostream>

        int main()
        {
            std::srand(std::time(nullptr));
            int x;
            for(int i = 0; i < 10; ++i)
            {
                x = std::rand() % 101;
                std::cout << x << std::endl;
            }
        }
    ```

    */ 
    randomNumber = Int(arc4random_uniform(101))
    print("the random number to guess is: \(randomNumber)")

    while continueGuess {
        print("pick a number between 0 and 100")

        /*
        ? NSString vs String
        ! NSString is heritage type before swift. NS shorts for NexTStep;

        */ 
        input = NSString(data:FileHandle.standardInput.availableData,
                        encoding:String.Endcoding.utf8.rawValue)! as String

        input = input.replacingOccurrences(
            of: "\n",
            with: "",
            options: NSString.CompareOptions.literal,
            range: nil
        )

        if let userGuess = Int(input) {
            if userGuess == randomNumber {
                continueGuess = false
                print("Correct number!")
            }
            else if userGuess > randomNumber {
                print("your guess is too high!")
            }
            else {
                print("You guess is too low")
            }
        }
        else {
            print("Invalid guess, please try again.")
        }
    }

    print("Play again? Y or N")
    
    input = NSString(
        data:FileHandle.standardInput.availableData,
        encoding:String.Endcoding.utf8.rawValue
    )! as String

    input = input.replacingOccurrences(
        of: "\n",
        with: "",
        options: NSString.CompareOptions.literal,
        range: nil
    )

    if input.uppercase == "N" {
        keepPlaying = false
    }

    continueGuess = true
}