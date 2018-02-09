var app = angular.module('eSante', ['ngRoute']);

app.controller('WorkerCtrl', ['$scope', '$http', function($scope, $http) {
  $http.get('/workers.json')
    .then(function(res){
       $scope.workers = res.data;
    });
}]);
