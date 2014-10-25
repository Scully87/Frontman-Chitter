<script>
    $(document).ready(function () {
      // Load THINGS data immediately
      $.ajax({
        url: '/things',
        method: 'GET'
      }).done(function (data) {
        data.forEach(function (d) {
          $('#things-index').append("<p><strong>" + d.title + "</strong>: " + d.description + "</p>");
        });
      });

      // Form to create a new Thing
      $('#new-submit').click(function () {
        var data = {};

        // Get the data from the form elements
        data.title = $('#new-title').val();
        data.description = $('#new-description').val();

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
  </script>