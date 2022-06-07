function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
      var x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
  
  function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
      const y = 'in block';  
      console.log(y);
    }
    console.log(x);
  }
  function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
      var y = 'in block';  
      console.log(y);
    }
    console.log(x);
  }
  function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
  
  function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';  
      console.log(x);
    }
    let y = 'out of block again';
    console.log(y);
  }
  

  function madLib(verb, adjective, noun) {
      let verb1 = verb
      let adjective1 = adjective
      let noun1 = noun
      let message = `We shall ${verb1} the ${adjective1} ${noun1}`;
      console.log(message);
  }
// madLib('make', 'best', 'guac');
  

  function isSubstring(string, sub) {
      let text = string
      let sstring = sub
      return text.includes(sstring)
  }
// console.log(isSubstring("time to program", "time"))


// console.log(isSubstring("Jump for joy", "joys"))


// function fizzBuzz(array) {
//     let result = []
//     for (const ele of array) {
//         if (ele % 3  === 0 || ele % 5 === 0 && !(ele % 3 === 0 && ele % 5 === 0));
//         continue;
//      } else {
//         result.push(ele)
//         }
//     }
//     console.log(result)

// }

fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])