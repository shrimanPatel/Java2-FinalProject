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
                    $("#error").html('No such movie found! Make sure you spelled it right!');
                    $("#loading").hide();
                }
                else
                {
                    $("#loading").hide();
                    if ($("#search").val() === "") {
                        $("#movieData").hide();
                    } else {
                        $("#movieData").show();
                        $("#Title").html(data.Title);
                        $("#Poster").html("<img src=" + data.Poster + " alt='No Poster Found!'>");
                        $("#Plot").html("<label>Plot:</label>" + data.Plot);
                        $("#Actors").html("<label>Actors: </label>" + data.Actors);
                        $("#Awards").html("<label>Awards: </label>" + data.Awards);
                        $("#Director").html("<label>Directors: </label>" + data.Director);
                        $("#Genre").html("<label>Genre: </label>" + data.Genre);
                        $("#Released").html("<label>Released: </label>" + data.Released);
                        $("#Year").html("<label>Year: </label>" + data.Year);
                        $("#imdbRating").html("<label>IMDb Rating: </label>" + data.imdbRating);
                        $("#imdbVotes").html("<label>IMDb votes: </label>" + data.imdbVotes);
                        $("#imdbID").html('<a href=http://www.imdb.com/title/' + data.imdbID + '>See on IMDb</a>');
                        $("#comment").html("<input id=" + data.imdbID + " type='button' value='Comment' class='comm'></input>");
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