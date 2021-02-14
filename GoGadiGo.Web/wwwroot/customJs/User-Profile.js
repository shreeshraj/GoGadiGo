
$(document).ready(function () {
    loadUserProfile();
    loadUserActivity();
    $("#userProfileFile").change(function () {
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



function updateUserProfile()
{
    var firstname = $.trim($("#txtFirstname").val());
    var lastname = $.trim($("#txtLastname").val());
    var mobile = $.trim($("#txtMobileNo").val());
    var address = $.trim($("#txtAddress").val());
    var email = $.trim($("#txtEmail").val());
    var data = new FormData();
    data.append("FirstName", firstname);

    data.append("LastName", lastname);
    data.append("MobileNumber", mobile);
    data.append("Email", email);
    data.append("Address", address);
    var fileUpload = $("#userProfileFile").get(0);
    var files = fileUpload.files;
    data.append("Image", files[0]);  


    if (validateInputs(firstname, lastname, mobile, address)) {
        $.ajax({
            type: "POST",
            url: "/Account/CreateProfile",
            data: data,
            contentType: false, // Not to set any content header  
            processData: false, // Not to process data  
           
            success: function (res) {
                if (res.statusCode) {
                    toastr.success(res.message);

                    setTimeout(function () {
                        window.location.href = res.targetUrl;
                    },10000);
                    
                }
                
            },
            error: function (xhr, ajaxOptions, thrownError) {

                toastr.error('Error', thrownError);
            },
            complete: function (x) {
               

            }
        });

    }
    else {
        toastr.error('Please enter all fields');
    }

}


function loadUserProfile()
{

    $.ajax({
        type: "POST",
        url: "/Account/ShowUserProfile",
        success: function (res) {
            $("#firstname").html(res.firstName);
            $("#txtFirstname").val(res.firstName);
            $("#txtLastname").val(res.lastName);
            $("#lastname").html(res.lastName);
            $("#txtAddress").val(res.address);
            $("#address").html(res.address);
            $("#email").html(res.email);
            $("#txtEmail").val(res.email);
            $("#txtMobileNo").val(res.mobileNumber);
            $("#mobile").html(res.mobileNumber);
            $("#userprofile").attr("src", "../../customerpic/" + res.imagePath);
          
        },
        error: function () {

        }
    });

}


function validateInputs(firstname, lastname, mobile, address) {

    return Boolean(firstname != "" && lastname != "" && mobile != "" && address != "");


}

function validateChangePasswordFields(newPass, reNewPass) {
    return Boolean(newPass === reNewPass);
}

function changePassword()
{
   
    var newPassword = $.trim($("#txtNewPassword").val());
    var newRePassword = $.trim($("#txtReNewPassword").val());
    if (validateChangePasswordFields(newPassword, newRePassword)) {
        $.ajax({
            type: "POST",
            url: "/Account/ChangePassword",
            data: { "newPassword": newPassword },
            success: function (res) {
                if (res.statusCode) {
                    toastr.success(res.message);
                }
                else {
                    toastr.success(res.message);
                }
                
            },
            error: function (res) {
                toastr.success(res);

            },
            complete: function () {
            }


        });
    }
    else {
        alert("");
    }


}

function loadUserActivity() {
    $.ajax({
        type: "POST",
        url: "/Account/RecentPosted",
        success(res)
        {
            if (res.length > 0) {
                $.each(res, function (index, value) {
                    var string = '<ul class="list-group shadow"><li class="list-group-item">' +
                        '<div class="media align-items-lg-center flex-column flex-lg-row p-3">' +
                        '<div class="media-body order-2 order-lg-1">' +
                        '<h5 class="mt-0 font-weight-bold mb-2">Awesome product</h5>' +
                        '<p class="font-italic text-muted mb-0 small">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum..</p > ' +
                        '<div class="d-flex align-items-center justify-content-between mt-1">' +
                        '<h6 class="font-weight-bold my-2">$120.00</h6>' +
                        '<ul class="list-inline small">' +
                        '<li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>' +
                        '<li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>' +
                        '<li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>' +
                        '<li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>' +
                        '<li class="list-inline-item m-0"><i class="fa fa-star-o text-gray"></i></li>' +
                        '</ul>' +
                        '</div>' +
                        '</div>' +
                        '<img style="width:150px;height:150px;" src="../../customervehiclepic/' + value.vehicleImagePath  + '"  alt="Generic placeholder image" width="200" class="ml-lg-5 order-1 order-lg-2">' +
                        '<input type="button" class="btn btn-danger" value="Edit" style="float:right;margin-bottom:0px;" />' +
                        '</div></li></ul>';
                    $("#activity").append(string);
                });

            }
            else {
                $("#activity").html("No record found!");
            }
           


        }
    });
}