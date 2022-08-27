$(document).ready(function () {
    loadDistricts();
    loadVehicleType();
    $("#vehicleImages").change(function () {
        readURL(this);
    });

});
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]); // convert to base64 string
    }
}


function vehicleRegistration()
{
    var ownername = $.trim($("#txtOwnername").val());
    var ownermobile = $.trim($("#txtMobilenumber").val());
    var vehicleNumber = $.trim($("#txtVehicleNumber").val());
    var vehicleAddress = $.trim($("#txtVehicleAddress").val());
    var alternatenumber = $.trim($("#txtAlternatenumber").val());
    var type = $.trim($("#ddlVehicleType option:selected").text());;
    var district = $("#ddlDistrict option:selected").text()
    var block = $("#ddlBlock option:selected").text()

    var fileUpload = $("#vehicleImages").get(0);
    var files = fileUpload.files;
    var data = new FormData();
    if (validateInput(ownername, ownermobile, vehicleNumber, vehicleAddress, alternatenumber, type, block, district)) {
        data.append("Ownername", ownername);
        data.append("VehicleContactNumber", ownermobile);
        data.append("IsDL", true);
        data.append("VehicleType", type);
        data.append("VehicleNumber", vehicleNumber);
        data.append("VehicleLocation", vehicleAddress);
        data.append("District", district);
        data.append("Block", block);
        data.append("AlternativeContactNumber", alternatenumber);
        data.append("VehicleImage", files[0]);
        $.ajax({
            type: "POST",
            url: "/Vehicle/VehicleRegistration",
            data: data,
            contentType: false, // Not to set any content header  
            processData: false, // Not to process data  
            success: function (res) {
                if (res.statusCode) {
                    clearAllElements();
                    toastr.success(res.message);
                    setTimeout(function () {
                        window.location.href = res.targetUrl;
                    }, 10000);
                }
            }
        });
    }
    else {
        toastr.error("Enter all details");

    }
    
    
    
}

function validateInput(ownername, ownermobile, vehicleNumber, vehicleAddress, alternatenumber, type, block, district) {
    return Boolean(ownername != "" && ownermobile != "" && vehicleNumber != "" && vehicleAddress != "" && alternatenumber != "" && type != "" && block != "" && district!="");
}

function loadVehicleType() {
    $.ajax({
        type: "POST",
        url: "/Vehicle/GetVehicleTypes",
        success: function (response) {
            console.log(response);
            $.each(response, function (data, value) {

                $("#ddlVehicleType").append($("<option></option>").val(value.vId).html(value.vehicleTypes));
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

function loadDistricts() {

    $.ajax({
        type: "POST",
        url: "/Vehicle/GetDistrictsName",
        success: function (response) {

            $.each(response, function (data, value) {

                $("#ddlDistrict").append($("<option></option>").val(value.districtCode).html(value.districtName));
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
function loadBlocks()
{
    var value = $("#ddlDistrict option:selected").val();
    $.ajax({
        type: "POST",
        url: "/Vehicle/GetBlocksNamebyDistrictCode",
        data: { districtCode: value },
        success: function (response) {

            $("#ddlBlock").html('');
            $.each(response, function (data, value) {
                $("#ddlBlock").append($("<option></option>").val(value.blockId).html(value.blockName));
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

function clearAllElements() {
    $('input[type="text"]').val('');
    $('input[type="password"]').val('');
}

