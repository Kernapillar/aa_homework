// const

// 1. can be declared and assigned ONLY once
// aka it must be initialized at the time of declaration.
// 2. const is block scoped
// 3. reassignment is not allowed, however mutations are allowed
// 4. try to use const where possible

// scope: "the scope of a variable is the region of a program where it can be accessed"

function scopeExample(){
    const x = "x";
    if (true){
        const y = "y";
        console.log(x);

    }

    {
        const z = "z"
        console.log(x);
    }
}
// each section of curly braces is a separate scope, 1 overall, 2 smaller interior scopes
    // nested scopes can access things in the "greater" parrent scope

function howToConst(){
    const username = 'Harold';

    if (true) {
        const username = "Url";

        console.log(username);

    }

    console.log(username);

}
// howToConst() outputs Url, then Harold. first checks the local inner scope then the greater scope after

function howToConst2() {

    const username = 'Harold';

    if (true) {
        console.log(username);

    }

    console.log(username);

} 
// checks local scope, then greater scope afterwards. outputs Harold Harold


function howToConst3() {
    
    
    if (true) {
        const username = 'Harold';
        console.log(username);

    }

    console.log(username);

} 
//  outputs Harold then error, as we dont have username defined in the greater scope
// howToConst3()


// let
// 1. let can be declared only once, but reassignment is allowed
// 2. let is also block scoped 

function howToLet() {
    let secret = "Im secretly a cat";
    console.log(secret);

    if (true){
        secret = "Im secretly a banana";
        console.log(secret);
    }
}
// outputs cat then banana, let can be reassigned within the nested inner scope

function howToLet2() {
    let secret = "Im secretly a cat";
    
    if (true){
        secret = "Im secretly a banana";
        console.log(secret);
        
        let secret = "nope definitely a cat";
    }
    console.log(secret);
}
// howToLet2()
// outputs an error because the first console.log is looking for an initialized let secret, finds one below on line 95 and says no you cant do that




// var

function howToVar(){
    var username = 'Harold';
    
    console.log(username);

    var username = "Url";
    if (true) {


    }

    console.log(username);

}