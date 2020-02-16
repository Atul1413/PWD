
var app = angular.module("PWSCRMApp", ["ngRoute"]);
var apiUrl = "http://localhost:56926/api/";//Hosted API Url
//Set Active Menu
app.controller("EstimateController", function ($scope, $http) {

    $scope.GetWorkDataList = function () {
        $scope.WorkDataRequest = {};
        $scope.WorkDataRequest.StatusCode = "200";
        $scope.WorkDataRequest.Token = "msdhfksh kskjahskgjhdskfjgshglkjshgkljh";
        $scope.WorkDataRequest.WorkDataDetails = null;
      
        $http({
            method: "post",
            url: apiUrl + "EstimateAPI/GetListWorkData",
            datatype: "json",
            data: JSON.stringify($scope.WorkDataRequest)
        }).then(function (response) {
            $scope.workDataList = response.data.workDataList;
            console.log(response.data);
            angular.element(document).ready(function () {
                if ($.fn.dataTable.isDataTable('#bindtblWorkData')) {
                    dTable = $('#bindtblWorkData').DataTable();
                }
                else {
                    dTable = $('#bindtblWorkData').DataTable({
                        "bSort": true,
                        "searching": true,
                        "bLengthChange": true,
                        "bfilter": true
                    });
                }
               // $("#bindtblWorkData_filter").hide();
                //$("#txtUserSearch").keyup(function () {
                //    dTable.search($(this).val()).draw();
                //});
            });
        });
    };



    //$scope.emailFormat = /^[_a-z0-9]+(\.[_a-z0-9]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/;
    //$scope.passwordFormat = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;

    //$scope.onSubmit = function (formsubmit) {
    //    if (formsubmit.$invalid) {
    //        alert("Please enter all required field");
    //    }
    //    else {
    //        $scope.InvestorRegistorVM = {};
    //        $scope.objInvestorDetail = {};
    //        $scope.objInvestorDetail.Id = 0;
    //        $scope.objInvestorDetail.FirstName = $scope.FirstName;
    //        $scope.objInvestorDetail.MobileNumber = $scope.MobileNumber;
    //        $scope.objInvestorDetail.Email = $scope.Email;
    //        $scope.objInvestorDetail.Password = $scope.Password;
    //        console.log(JSON.stringify($scope.objInvestorDetail));
    //        $scope.InvestorRegistorVM.objInvestorDetail = $scope.objInvestorDetail;
    //        console.log(JSON.stringify($scope.InvestorRegistorVM.objInvestorDetail));
    //        $scope.InvestorRegistorVM.Token = "GFJGSFGSFGASGFKSAGFKSGAFGSJF";
    //        $scope.InvestorRegistorVM.Message = "Registor Requst";
    //        //Call Registor Investor method in Investor Controller
    //        $http({
    //            method: "post",
    //            url: apiUrl + "Investor/RegisterInvestor",
    //            datatype: "json",
    //            data: JSON.stringify($scope.InvestorRegistorVM)
    //        }).then(function (response) {
    //            console.log(response.data);
    //        }).catch(function onError(error) {
    //            console.log(error);
    //        });

          
    //    }
    //};
});


app.controller("AddItemController", function ($scope, $http) {
   // alert();
    var counter = 0;

    $scope.AddDataCount = [];
    $scope.elements = [{ id: counter, value: '',name:'' }];
    $scope.Length;
    $scope.newItem = function () {
        counter++;       
        $scope.elements.push({ id: counter, value: '', name: '' });

    };

    $scope.show = function (AddDataCount) {
        console.log(AddDataCount);

    };

    $scope.youFunction = function (id,value) {

        alert(id);
    };

});

function youFunction(value) {
   // alert(id);
    alert(value);
}