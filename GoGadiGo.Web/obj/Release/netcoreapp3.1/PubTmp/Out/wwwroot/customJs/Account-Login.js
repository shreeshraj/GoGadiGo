function userLogin() {
    if (validateInputs())
    {

        $.ajax({
            type: "POST",
            url: "/Account/UserLogin",
            data: { "MobileNumber": $.trim($("#txtMobileNo").val()), "Password": $.trim($("#txtPassword").val()) },
            dataType: "json",
            success: function (response) {
                console.log(response.statusCode);
                if (response.statusCode) {
                   
                    window.location.replace(response.targetUrl);
                   

                }
                else {
                    toastr.error(response.message);
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

function validateInputs() {
    return Boolean($.trim($("#txtMobileNo").val()) != "" && $.trim($("#txtPassword").val()) != "" )
}

function clearAllElements() {
    $('input[type="text"]').val('');
    $('input[type="password"]').val('');
}

$(document).ready(function () {
    $('#txtPassword').keypress(function (e) {
        var key = e.which;
        if (key == 13)  // the enter key code
        {
            userLogin();
        }
    }); 
});