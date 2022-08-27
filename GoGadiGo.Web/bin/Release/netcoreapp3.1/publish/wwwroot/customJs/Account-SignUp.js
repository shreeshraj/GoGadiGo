$(document).ready(function () {
    $('#txtPassword').keypress(function (e) {
        var key = e.which;
        if (key == 13)  // the enter key code
        {
            userRegistration();
        }
    });
});

//new user registration using jquery

function userRegistration() {
    if (validateInputs()){
        $.ajax({
            type: "POST",
            url: "/Account/Registration",
            data: { "MobileNumber": $.trim($("#txtMobileNo").val()), "Password": $.trim($("#txtPassword").val()) },
            dataType: "json",
            success: function (response) {
                
                if (response.statusCode) {
                    window.location.replace(response.targetUrl)
                }
                else {
                    toastr.success(response.message);
                    clearAllElements();
                }
                

            },
            error: function (xhr, ajaxOptions, thrownError) {

                toastr.error('Error', thrownError);
            }
        });
    }
    else {
        toastr.error('Please enter all fields');
    }

}

function validateInputs()
{
    return Boolean($.trim($("#txtMobileNo").val()) != "" && $.trim($("#txtPassword").val()) != "" && $.trim($("#txtConfirmPassword").val()) != "" && ($.trim($("#txtPassword").val()) == ($.trim($("#txtConfirmPassword").val()))))      
}

function clearAllElements() {
    $('input[type="text"]').val('');
    $('input[type="password"]').val('');
}


