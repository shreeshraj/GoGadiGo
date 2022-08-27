$(document).ready(function () {
    loadDistricts();
    loadVehicleType();
    loadallVehicleList();
    
});

function loadVehicleType() {
    $.ajax({
        type: "POST",
        url: "/Vehicle/GetVehicleTypes",
        success: function (response)
        {
            console.log(response);
            $.each(response, function (data, value) {

                $("#inputVehicleType").append($("<option></option>").val(value.vId).html(value.vehicleTypes));
            })
            toastr.success("All vehicle loaded")
        },
        failure: function (response) {
            
            toastr.error(response.responseText);
        },
        error: function (response) {
            toastr.error(response.responseText);
        }
    });

}

function loadDistricts() {

    $.ajax({
        type: "POST",
        url: "/Vehicle/GetDistrictsName",
        success: function (response) {
           
            $.each(response, function (data, value) {
               
                $("#inputDistrict").append($("<option></option>").val(value.districtCode).html(value.districtName));
            })  
        },
        failure: function (response) {
            console.log(response.responseText);
        },
        error: function (response) {
            console.log(response.responseText);
        }
    });

}
function loadBlocks() {
    var value = $("#inputDistrict option:selected").val();
    $.ajax({
        type: "POST",
        url: "/Vehicle/GetBlocksNamebyDistrictCode",
        data: { districtCode: value},
        success: function (response) {
            
            $("#inputBlock").html('');
            $.each(response, function (data, value) {
                $("#inputBlock").append($("<option></option>").val(value.blockId).html(value.blockName));
            })
        },
        failure: function (response) {
            console.log(response.responseText);
        },
        error: function (response) {
            console.log(response.responseText);
        }
    });

}


function loadSearchVehiclesList()
{

    var selectedDistrict = $("#inputDistrict option:selected").text();
    var selectedBlock = $("#inputBlock option:selected").text();
    var selectedCarType = $("#inputVehicleType option:selected").text();

    $.ajax({
        type: "POST",
        url: "/Vehicle/GetFilteredVehicleList",
        data: { BlockName: selectedBlock, DistrinctName: selectedDistrict, VehicleType: selectedCarType},
        success: function (response) {

           
            if (response.length > 0)
            {
                $("#vehicleList").html('');
                $.each(response, function (data, value) {

                    $("#vehicleList").append('<div class= "col-lg-4 col-md-4 col-sm-4 col-xs-12" >'

                        + '<div class="box-part text-center">' +
                        '<div class="title">' +
                        '<center><img style="height:150px;width:150px;" src="../../customervehiclepic/' + value.vehicleImagePath +'" class="img-responsive img-rounded" alt=""></center>' +
                        '</div>' +
                        '<div class="text">' +
                        '<span>' + 'District Name:- ' + value.district + '</span>' + "<br/>" + "<br/>" +
                        '<span>' + 'Block Name:- ' + value.block + '</span>' + "<br/>" + "<br/>" +
                        '<span>' + 'Vehicle Number:- ' + value.vehicleNumber + '</span>' + "<br/>" + "<br/>" +
                        '<span>' + 'Vehicle Type:- ' + value.vehicleType + '</span>' + "<br/>" + "<br/>" +
                        '</div>' + "<br/>" +
                        '<span class="d-block p-2 bg-primary text-white">Mobile No:- ' + value.vehicleContactNumber + '</span><br/>' +
                        '<span class="d-block p-2 bg-success text-white">Alternate Mobile No:- ' + value.alternativeContactNumber + '</span>' +
                        '</div>' +
                        '</div>');
                })
            }
            else {
                $("#vehicleList").html('');
               
                toastr.error("No Record Found!");
            }
        },
        failure: function (response) {
            toastr.error(response.responseText);
        },
        error: function (response) {
            toastr.error(response.responseText);
        }
    });
    
}

function loadallVehicleList() {
    $.ajax({
        type: "POST",
        url: "/Vehicle/GetAllVehicleList",
        success: function (response) {
           
            $.each(response, function (data, value)
            {

                $("#vehicleList").append('<div class= "col-lg-4 col-md-4 col-sm-4 col-xs-12" >'

                    +'<div class="box-part text-center">'+
                    '<div class="title">' +
                    '<center><img style="height:150px;width:150px;" src="../../customervehiclepic/' + value.vehicleImagePath+'" class="img-responsive img-rounded" alt=""></center>' +
                            '</div>'+

                            '<div class="text">'+
                    '<span>' + 'Owner Name:- ' + value.vehicleOwnerName + '</span>' + "<br/>" + "<br/>" +
                    '<span>' + 'District Name:- ' + value.district + '</span>' + "<br/>" + "<br/>" +
                    '<span>' + 'Block Name:- ' + value.block + '</span>' + "<br/>" + "<br/>" +
                    '<span>' + 'Vehicle Number:- ' + value.vehicleNumber.substring(0, 4) +'*****'+ '</span>' + "<br/>" + "<br/>" +
                    '<span>' + 'Vehicle Type:- ' + value.vehicleType + '</span>' + "<br/>" + "<br/>" +
                    '</div>' + "<br/>" +
                    '<button type="button" class="btn btn-success"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">  </svg> Click Here To Call </button><br/>' +
                    '<span class="d-block p-2 bg-primary text-white">Mobile No:- ' + value.vehicleContactNumber + '</span><br/>' +
                    '<span class="d-block p-2 bg-success text-white">Alternate Mobile No:- ' + value.alternativeContactNumber + '</span>' +
                       '</div>'+
                    '</div>');
            })
        },
        failure: function (response) {
            toastr.error(response.responseText);
        },
        error: function (response) {
            toastr.error(response.responseText);
        }
    });
}
