$(document).ready(function () {
    $("#search").keyup(function ()
    {
        var movieName = $("#search").val();
        $("#loading").show();
        $.ajax({
            url: "http://www.omdbapi.com/?t=" + movieName,
            method: "get",
            dataType: 'json',
            success: function (data)
            {
                console.log(data);
                if (data.Error === "Movie not found!")
                {
                    $("#error").html('No Movie found for this search! Make sure you spelled it right...');
                    $("#loading").hide();
                }
                else
                {
                    $("#loading").hide();
//                
                    if ($("#search").val() === "") {
                        $("#movieData").hide();
                    } else {
                        $("#movieData").show();
                        $("#Poster").html("<img src=" + data.Poster + " alt='no img'>");
                        $("#Plot").html("<p>" + data.Plot + " </p>");
                        $("#Actors").html("<p>" + data.Actors + "</p>");
                        $("#Awards").html("<p>" + data.Awards + "</p>");
                        $("#Director").html("<p>" + data.Director + "</p>");
                        $("#Genre").html("<p>" + data.Genre + "</p>");
                        $("#Released").html("<p>" + data.Released + "</p>");
                        $("#Title").html("<p>" + data.Title + "</p>");
                        $("#Year").html("<p>" + data.Year + "</p>");
                        $("#imdbRating").html("<p>" + data.imdbRating + "</p>");
                        $("#imdbVotes").html("<p>" + data.imdbVotes + "</p>");
                        $("#imdbID").html('<a href=http://www.imdb.com/title/' + data.imdbID + '>See on IMDb</a>');
                        $("#comment").html("<input id=" + data.imdbID + " type=button value='Comment' class='comm'>" + data.imdbVotes + "</input>");
                    }
                }
            }
        });
    });

    $("#comment").on('click', '.comm', function () {
        var movieId = $(this).attr('id');
       // alert(movieId);
        $("#allcomments").slideDown(500);
        //alert("before alert");
        $.ajax({
            url: "rs/movieComments/comments/" + movieId,
            type: "get",
//            dataType: 'json',
            success: function (data)
            {
                alert(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(textStatus, errorThrown);
            }
        });

    });

});