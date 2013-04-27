#!/usr/bin/env node

var http = require('http')

var options = {
        hostname: 'data.mtgox.com'
      , path: '/api/2/BTCUSD/money/ticker'
      , method: 'GET'
    }

var req = http.request(options, function (res) {
      var result = ''

      res.on('data', function (data) {
        result += data
      })

      res.on('end', function () {
        var data = JSON.parse(result)
        if (data.result && data.result == 'success') {
          data = data.data
          var maxLength = maxElementLength(Object.keys(data))
          Object.keys(data).forEach(function (key) {
            var value = data[key]
            if ('object' === typeof value && value.value) {
              console.log(key + separator(key, maxLength) + value.value)
            }
          })
        }
      })

      function maxElementLength(array) {
        array = array.map(function (el) { return el.length })
        return Math.max.apply(null, array)
      }

      function separator(key, max) {
        var result = ': '
        for (var i = 0; i < max - key.length; ++i) {
          result += ' '
        }
        return result
      }
    })

req.end()
