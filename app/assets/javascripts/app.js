var app = angular.module('eSante', ['ngRoute', 'ui.bootstrap']);

app.controller('WorkerCtrl', ['$scope', '$http', function($scope, $http) {
  $http.get('/workers.json')
    .then(function(res){
       $scope.workers = res.data;
       pagination();
    });

  function pagination() {
    $scope.currentPage = 1;
    $scope.numPerPage = 10;
    // $scope.maxSize = 10;

    $scope.numPages = function () {
      return Math.ceil($scope.workers.length / $scope.numPerPage);
    };

    $scope.$watch('currentPage + numPerPage', function() {
          var begin = (($scope.currentPage - 1) * $scope.numPerPage)
          , end = begin + $scope.numPerPage;
          console.log('there are begin and end');
          console.log(begin);
          console.log(end);
          $scope.final_workers = $scope.workers.slice(begin, end);
          console.log($scope.final_workers);
    });
  }
}]);


