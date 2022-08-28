$(document).ready(function() {
    $.ajax({
          url: "api/api.php", //the page containing php script
          type: "post", //request type,
          data: {
                'req': '1',
                'param': '1',
              },
        dataType: "json",
        success: function(result) {
        $("#country").html(result);
        }
        });

     $.ajax({
          url: "api/api.php", //the page containing php script
          type: "post", //request type,
          data: {
                'req': '2',
                'param': '1',
              },
        dataType: "json",
        success: function(result) {
        $("#division").html(result);
        }
        });

      $('#division').on('change', function() {
         var division = $(this).val();
         $.ajax({
            type: 'POST',
            url: 'api/api.php',
            data: {
               'req': '3',
               'param': '2',
               'filter': 'dist_id = ' + division
            },
            dataType: "json",
            success: function(result) {
               $('#district').html(result);
            }
         });

      });

        $('#district').on('change', function() {
         var district = $(this).val();
         $.ajax({
            type: 'POST',
            url: 'api/api.php',
            data: {
               'req': '4',
               'param': '2',
               'filter': 'up_id = ' + district
            },
            dataType: "json",
            success: function(result) {
               $('#upzilla').html(result);
            }
         });

      });
      $('#upzilla').on('change', function() {
         var upzilla = $(this).val();
         $.ajax({
            type: 'POST',
            url: 'api/api.php',
            data: {
               'req': '5',
               'param': '2',
               'filter': 'p_id = ' + upzilla
            },
            dataType: "json",
            success: function(result) {
               $('#post_office').html(result);
            }
         });

      });

       $('#post_office').on('change', function() {
         var post_office = $(this).val();
         $.ajax({
            type: 'POST',
            url: 'api/api.php',
            data: {
               'req': '6',
               'param': '2',
               'filter': 'w_id = ' + post_office
            },
            dataType: "json",
            success: function(result) {
               $('#word').html(result);
            }
         });

      });

        $('#word').on('change', function() {
         var word = $(this).val();
         $.ajax({
            type: 'POST',
            url: 'api/api.php',
            data: {
               'req': '7',
               'param': '2',
               'filter': 'villa_id = ' + word
            },
            dataType: "json",
            success: function(result) {
               $('#village').html(result);
            }
         });

      });

      $.ajax({
         url:"api/api.php", //the page containing php script
         type: "POST", //request type,
         data: {'req': '8', 'param':'3'},
         dataType:"json",
         success:function(result)
         { 
           $("#userdata").html(result);
         }
      });

     $('#add_user').submit(function (event)
     {
         event.preventDefault();
         $.ajax({
             data: $('form').serialize(),
             url:"controller/insert_user.php", //php page URL where we post this data to save in database
             type: 'POST',
             success: function (result) {
                 alert('Success');
                $.ajax({
                  url:"api/api.php", //the page containing php script
                  type: "POST", //request type,
                  data: {'req': '8', 'param':'3'},
                  dataType:"json",
                  success:function(result)
                  { 
                    $("#userdata").html(result);
                  }
                  });
             }
         });
         $("#add_user")[0].reset();
        
     });

});


