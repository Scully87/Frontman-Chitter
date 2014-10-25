    $(document).ready(function () {
      // Load THINGS data immediately
      $.ajax({
        url: '/things',
        method: 'GET'
      }).done(function (data) {
        data.forEach(function (d) {
          $('.peeps').append("<p>" + d.body + "</p>");
        });
      });

      // Form to create a new Thing
      $('#greet_button').click(function () {
        var data = {};

        // Get the data from the form elements
        // data.title = $('#new-title').val();
        data.body = $('#post_submits_greet').val();

        $.ajax({
          url: '/things',
          method: 'POST',
          data: data
        }).done(function (response) {
          console.log(response);
        });

        // Prevent the form from being submitted.
        return false;
      });
    });