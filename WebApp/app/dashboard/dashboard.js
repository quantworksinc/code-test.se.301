'use strict';

angular.module('myApp.dashboard', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/dashboard', {
    templateUrl: 'dashboard/dashboard.html',
    controller: 'DashboardCtrl'
  });
}])

.controller('DashboardCtrl', function($scope, $http, $timeout) {
  $scope.listOfSeasons = []; 
  $scope.listOfEpisodes = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  $scope.labels = [];
  $scope.deathCount = [];
  $scope.showDeathError = false;
  $scope.showDeathSuccess = false;

  // Function to fetch the Death Details for the chart
  var getCharDeathDetails = function(){
    $http({
      method: 'GET',
      url: 'http://localhost:3000/get-death'
    }).then(function successCallback(response) {
        let seasonDeathCount = response.data;
        seasonDeathCount.forEach(function(season) {
          $scope.listOfSeasons.push(
            season['season_died'] 
          )
          $scope.labels.push(
            'Season ' + season['season_died'] // to display x-axis labels on the chart 
          )
          $scope.deathCount.push({
            y: season['count']
          });
        });
        prepareChart();
    }, function errorCallback(response) {
        console.log(response);
    });
  }

  // Function to add all the customisations required for the chart
  var prepareChart = function(){
    $scope.options = {
      scales: {
        yAxes: [{
            ticks: {
                beginAtZero: true
            }
        }]
      }
    }
  }

  // Function to create a new death on Valar Morghulis
  $scope.createDeath = function(){
    $http({
      method: 'POST',
      url: 'http://localhost:3000/add-death',
      data: $scope.formData // formData is a json object with name, killedBy, seasonDied, episodeDied.
    }).then(function successCallback(response) {
        $scope.showDeathSuccess = true;
        $scope.formData = '';
        $timeout(function () {
          $scope.createDeathForm.$setPristine();
        })
    }, function errorCallback(response) {
        $scope.showDeathError = true;
    });
  }

  // to reset the state of the variable once alert has been dismissed
  $scope.toggleDeathError = function () {
    $scope.showDeathError = !$scope.showDeathError;
  }

  // to reset the state of the variable once alert has been dismissed
  $scope.toggleDeathSuccess = function () {
    $scope.showDeathSuccess = !$scope.showDeathSuccess; 
  }
 
  // To fetch the chart data on load of the dashboard
  getCharDeathDetails(); 
});