/*

Style and Syntax 
camelCase instead of snake_case
semicolons
have to declare variables
epxlicit returns, no negative indexing
7 falsey values
*/

// camelCase, first word lowercase everything else is capitalized
const bestCat = 'Ivy';

// Semicolon usage: 

    // end of a statement:
        let learner = 'Alex';
    //not around functions
    function doubler(){
        // {} curly braces are the "end of statement, no semicolon needed"
    }
        // exception is when we are initializing a "hash"
            hash = {};

// Declare your Variables!
    // must declare variables using let, const, and var keywords:

        // let is for changeable variables (block scoped)
            let favoriteFood = 'french fries';

        // const is for unchanging constants (block scoped)
            const bestDoggo = "Aiko";

        // we try to avoid using var (function scoped)
        var bestCity = "San Francisco";

        // when you dont have a key word, the variable becomes a Global Variable, always avoid!
        globalVar = 14
    

// explicit returns (CANNOT RETURN WITHIN A forEach!!)

function doubler(array){
    let newArray = [];
    array.forEach(el => {
        newArray.push((el * 2));
    })
    return newArray
}


// if else statements
if (something === somethingElse){
    // some logic
} else if (something >= somethingElse){
    
} else {

}

// cannot negative index like in ruby (arr[-1])
    // instead use:
        let array = [2, 3, 4, 5, 6, 7, 8]
        array[array.length - 1]

// The Falsy 7:
    // null
    // undefined
    // 0, -0
    // NaN
    // ""
    // false