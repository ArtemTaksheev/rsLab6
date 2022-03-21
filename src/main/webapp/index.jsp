<!DOCTYPE html>
<html>
    <head>
        <title>jQuery UI Autocomplete</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            .ui-autocomplete-loading {
                background: white url("img/anim_16x16.gif") right center no-repeat;
            }
        </style>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {

                $("#musics").autocomplete({
                    source: "Musics",
                    minLength: 1,
                });
            });
        </script>
    </head>
    <body>

        <form action="showMusic.jsp">

            <div class="ui-widget">
                <label for="musics">Musics:</label>
                <input id="musics" name="music">
            </div>
            <br>
            <div>
                <input class="ui-widget" type="submit" value="Submit">
            </div>

        </form>

    </body>
</html>