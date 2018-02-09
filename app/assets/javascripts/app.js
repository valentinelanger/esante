var app = angular.module('eSante', ['ngRoute']);

app.controller('WorkerCtrl', ['$scope', '$http', function($scope, $http) {
  $scope.currentPage = 1,
  $scope.numPerPage = 10,
  $scope.maxSize = 10,

  $http.get('/workers.json')
    .then(function(res){
       $scope.workers = res.data;
    });

  $scope.numPages = function () {
    return Math.ceil($scope.workers.length / $scope.numPerPage);
  };

  $scope.$watch('workers', function(workers) {
    console.log(workers);

    // $scope.final_workers = $scope.workers.slice(begin, end);
    if (workers) {
        console.log('there are workers');
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
  });



}]);
