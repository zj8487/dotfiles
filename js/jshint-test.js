//
// ---------------- Enforcing options ----------------
//

// bitwise:true
var a = true, b = true;
if (a & b) {}

// camelcase:true
var variable_p = false;

// curly:true
var count = 0;
while (count < 10)
  count++;

// eqeqeq:true
if (count == 10) {}

// forin:false/true (doesn't seem to work)
var prop, obj = { name: 'magnus' };
for (prop in obj) { console.log(this) }

// immed:false/true (doesn't seem to work)
function immed() {} ();

// indent:2
function foo() {
 return true;
}

// latedef:false (this is default)
bar();
function bar() {}

// newcap:true
function SomeConstructor() {}
SomeConstructor();

// noarg:true
function usingArgumentsCaller() {
  var callee = arguments.callee;
  var caller = arguments.caller;
}

// noempty:true
function containsEmptyBlock() {
  if (true) {}
}

// nonew:true
new SomeConstructor();

// plusplus:false (this is default and allowed)
var i;
for (i = 1; i < 10; ++i) {}

// quotmark:true
var str = 'some string';
var str2 = "some other string";

// regexp:false (this is default and allowed)
var match = /.*/.match('dude');

// undef:true ----------- WTF this is broken now!
var myVariable = thisVariableDoesNotExist

// unused:true ----------- WTF this is broken now!
var thisVariableIsNeverUsed;

// strict:false/true, don't know how this warning manifests itself,
// using false for now
function strictFunction() {
  'use strict';
}
strictFunction();

// trailing:true
// not working now since js3 removes trailing whitespace, which is good!
var someString = 'some string ';
console.log(someString);

// maxparams:3
function tooManyParameters(a, b, c, d);

// maxdepth:2
function doSomeStuff(number) {
  var k = 1;
  while (k < 10) {
    if (k < number) {
      if (k > number) {
        k -= 10;
      }
    }
    k++;
  }
}
doSomeStuff(10);

// maxstatements:7
function doSomeOtherStuff(number) {
  /*jshint maxstatements:7 */
  var k = 1, p = doSomeStuff(number);
  while (k < 10) {
    if (k < number) {
      k -= 10;
      p += k;
      console.log(k);
      console.log(p);
    }
    console.log(k);
  }
}
doSomeOtherStuff(10);

// maxcomplexity
function complexFunction() {
  /*jshint maxstatements:20 */
  var foo = 0, goo = 1;
  if (!foo) {
    ++foo;
    if (foo === 1) {
      foo *= 2;
      return true;
    }
    else {
      console.log('some statement');
    }
    return false;
  }
  if (foo > 1) {
    console.log('bla bla');
  }
  if (goo === 1) {
    console.log(goo);
    goo++;
    if (goo === 2) {
      console.log(goo);
    }
  }
  return true;
}
complexFunction();

// maxlen: 80
var thisLineIsProbablyTooGoddamnlooooooooooooooooooooooooooooooooongRiiiiiiight = true;

//
// ---------------- Relaxing options ----------------
//

// asi:true, semicolons should be optional
var someVariable = 4
console.log(someVariable)

// boss:true
(function foo() {
  var p = 0
  if (p = 1) {
    console.log(p)
  }
})()

// debug:false
debugger;

// eqnull:false
(function foo() {
  /*jshint eqeqeq:false */
  var p = null
  if (p == null) {
    console.log('p is null')
  }
})()

// FIX this .. complaining on comma first ffs !!
var obj = {
  prop1: 'magnus'
, prop2: 'skog'
}

// es5:true
(function foo() {
  var objWithGetter = {
    dude: 1,
    get value() { return this.dude },
    set value(val) { this.dude = val }
  }
})()

// esnext:true (false or true doesn't matter)
(function foo() {
  const variable = 1
})()

// eval:true
eval('1+1')

// expr:false
var someFunction = null
function someOtherFunction() { console.log(this) }
someFunction ? someFunction() : someOtherFunction()

// funcscope:false
function funcScope() {
  if (true) {
    var x = 1
  }
  x += 3
}

// iterator:false
(function foo() {
  /*jshint camelcase:false */
  var obj = {}
    , iterator = obj.__iterator__
})()

// lastsemic:true (true or false doesn't matter)
var name = (function () { return 'Anton' }());

// laxbreak:false
(function foo() {
  var goo = bar
          ? 'yes'
          : 'no';
})()

// loopfunc:false
(function foo() {
  var nums = [], i
  for (i = 0; i < 10; i++) {
    nums[i] = function (j) {
      return i + j;
    }
  }
  nums[0](2); // Prints 12 instead of 2
})()

// multistr:false
(function foo() {
  var multistr = 'bla bla bla bla\
bla bla'
})()

// onecase:false
(function foo() {
  var dude = 1
  switch (dude) {
  case 1:
    console.log(dude)
    break;
  }
})()

// proto:false
(function foo() {
  var obj = {}
    , proto = obj.__proto__
})()

// regexp:false
var regex = /[a-z-]/

// scripturl:true
var orderTypes = {
  linkAction: 'javascript:setOrderType(OrderTypes.Delivery)'
}

// smarttabs:false, don't know how to reproduce this

// shadow:false
function blabla(kalle) {
  var kalle
}

// sub:false
var someObj = { name: 'magnus' }
  , name = someObj['name']

// supernew:false
var singleton = new function () {}

// validthis:true (allow)
function validThis() {
  'use strict';
  alert(this.prop)
}

//
// ---------------- Legacy ----------------
//

// nomen:false (allow dangling _)
var dangling_

// onevar:false
function oneVarFunction() {
  var k
  var p
}

// white:true
var missingSpaceAfterFunction = (function() { return 'Anton' }())
if(true) {
  console.log('some string');
}

// this is a good warning
foo()
[1, 2, 3].forEach(console.log)
