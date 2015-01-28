angular.module( 'ngBoilerplate', [
  'templates-app',
  'templates-common',
  'ngBoilerplate.home',
  'ngBoilerplate.about',
  'ui.router',
  'ngResource'
])

.config( function myAppConfig ( $locationProvider, $stateProvider, $urlRouterProvider ) {

  $locationProvider.html5Mode( true );
  $stateProvider.state( 'swencarlin', {
    url: '/*',
    views: {
      "main": {
        controller: 'HomeCtrl',
        templateUrl: 'home/home.tpl.html'
      }
    },
    data:{ pageTitle: 'Home' }
  });

})

.run( function run () {
})

.controller( 'AppCtrl', function AppCtrl ( $scope, $location, $resource ) {

  var url = $location.url();

  if(!url) {
    url = '/';
  }

  var resource = $resource('/json' + url);
  var data = resource.get(function(data) {
    console.log(data);
  });

  console.log($location);
  console.log(url);


  $scope.$on('$stateChangeSuccess', function(event, toState, toParams, fromState, fromParams){
    if ( angular.isDefined( toState.data.pageTitle ) ) {
      $scope.pageTitle = toState.data.pageTitle + ' | ngBoilerplate' ;
    }
  });
})

;
