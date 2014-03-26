SdkTest.describe('WorkshopTests', {

  'a simple test': [

    When('returning some data', function () {
      return 'simple';
    }).to('result'),

    Then('returned data should be simple', function (result) {
      assertThat(result, is('simple'));
    }).from('result')

    // parameters to from ends up in the callback
    //}).from('result', 'result2')


    // Possible stuff
    //Given
    //When
    //Then
    //And
  ],

  setUp: function () {
    this.someValue = 'foo';
  },

  tearDown: function () {
    delete this.someValue;
  },

  "setup and teardown": [
    Then("someValue should exist", function (someValue) {
      assertThat(someValue, is('foo'));
    }).from('someValue')
    //}).from(Value(5)) ????
  ],

  loadBeans: ['diskspaceManager'],


  //loadPackages: ['blablapackage'],

  'access diskspaceManager': [
    Then('can access getFreeGigs', function () {
      //logger.dev('got some stuff', this.diskspaceManager.getFreeGigs());
      this.diskspaceManager.getFreeGigs();
    })
  ],

  'a simple test 2': [

    When('returning some data', function () {
      return 'simple';
    }).to('result'),

    When('returning some more data', function () {
      return ['simple2', 'simple3'];
    }).to('result2', 'result3'),
    // ^^^^^^
    // map each items in the array to the to argument .. OR use one variable to take the whole array

    Then('returned data should be simple', function (result, result2, result3) {
      assertThat(result, is('simple'));
      assertThat(result2, is('simple2'));
      assertThat(result3, is('simple3'));
    }).from('result', 'result2', 'result3')

  ],

  'passing data using deferred': [
    Given('return a deferred', function () {
      var d = new DP.Deferred();
      var d2 = new DP.Deferred();
      window.setTimeout(function () { d.callback('dude'); }, 1000);
      window.setTimeout(function () { d2.callback('dude2'); }, 1500);
      return [d, 3, d2];
      //in case we want to use the actual deferred and not the value
      //return [d, 3, new DP.CalledDeferred(d2)];
    }).to('result', 'number', 'result2'),

    Then('check the result', function (result, number, result2) {
      assertThat(result, is('dude'));
      assertThat(number, is('3'));
      assertThat(result2, is('dude2'));
    }).from('result', 'number', 'result2')
  ],

  FOO: 'dude',

  'passing data using deferred 2': [
    Given('return a deferred 2').to('result', 'number', 'result2'),
    Then('check the result 2').from('result', 'number', 'result2'),
    Then('check the result 2').from(Value('dude'), 'number', 'result2'),
    Then('check the result 2').from('FOO', 'number', 'result2')
  ],

  'return a deferred 2': function () {
    var d = new DP.Deferred();
    var d2 = new DP.Deferred();
    window.setTimeout(function () { d.callback('dude'); }, 1000);
    window.setTimeout(function () { d2.callback('dude2'); }, 1500);
    return [d, 3, d2];
    //in case we want to use the actual deferred and not the value
    //return [d, 3, new DP.CalledDeferred(d2)];
  },

  'check the result 2': function (result, number, result2) {
    assertThat(result, is('dude'));
    assertThat(number, is('3'));
    assertThat(result2, is('dude2'));
  },

  'ignoring all tests': Ignore([
    Given('return a deferred', function () {
      var d = new DP.Deferred();
      var d2 = new DP.Deferred();
      window.setTimeout(function () { d.callback('dude'); }, 1000);
      window.setTimeout(function () { d2.callback('dude2'); }, 1500);
      return [d, 3, d2];
      //in case we want to use the actual deferred and not the value
      //return [d, 3, new DP.CalledDeferred(d2)];
    }).to('result', 'number', 'result2'),

    Then('check the result', function (result, number, result2) {
      assertThat(result, is('dude'));
      assertThat(number, is('3'));
      assertThat(result2, is('dude2'));
    }).from('result', 'number', 'result2')
  ]),

  'ignoring a single test by appending .ignore()': [
    Given('foo', function () {
      // bla
    }).to('result', 'number', 'result2').ignore()
  ]

  // you can use SkipIf
  //"adding a valid new end user should succeed": [
    //SkipIf("in secure mode"),
    //When("add end user 'test'"),
    //Then("end user 'test' should exist")
  //],

  //"in secure mode": function () {
    //return DP.secureModeSDKTestWorkaround;
  //}

});
