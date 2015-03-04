redis = require('redis').createClient();
redis.subscribe('reading')


angular.module 'myApp',[]
.controller 'myCtrl',($scope)->
  $scope.greet = "hello?"
  $scope.greets = ["gyoogyogyo"]
  $scope.say = (message)->
    $scope.greets.push message
  redis.on 'message',(channel,message)->
    console.log message
    $scope.$apply ->
      $scope.greets.push message
