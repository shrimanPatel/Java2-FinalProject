$(document).ready(function () {
    $("#search").keyup(function ()
    {
        var movieName = $("#search").val();
        $("#loading").show();
        $.ajax({
            url: "http://www.omdbapi.com/?t=" + movieName,
            method: "get",
            dataType: 'json',
            success: function (data) {
                $("#loading").hide();
//                console.log(data);
                if ($("#search").val() === "") {
                    $("#movieData").hide();
                } else {
                    $("#movieData").show();
                    $("#Poster").html("<img src=" + data.Poster + " alt='no img'>");
                    $("#imdbID").html('<a href=http://www.imdb.com/title/' + data.imdbID + '>See on IMDb</a>');
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
                }
            }
        });
    });
});