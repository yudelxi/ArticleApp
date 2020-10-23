<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        {{ get_title() }}
        {{ stylesheet_link('https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css') }}
        {{ stylesheet_link('css/style.css') }}
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="The best articles from Amsterdam.">
        <meta name="author" content="DTT Team">
    </head>
    <body class="bg-info">
        <div class="container h-100">
            <div class="row h-100 justify-content-center align-items-center">
                <div class="col-11 bg-white my-5 rounded">
                    <header class="row">
                        <div class="col mt-3">
                            {{ image('img/DTTlogo.png') }}
                        </div>
                    </header>
                    <hr>
                    <main class="row">
                        <div class="col">
                            {{ content() }}
                        </div>
                    </main>
                    <hr>
                    <footer class="row">
                        <div class="col mb-3">
                            <p class="m-0">DTT Multimedia &copy; 2019. All rights reserved. {{ link_to('session', 'Site Admin') }} </p>
                        </div>
                    </footer>
                </div>
            </div>
        </div>
        {{ javascript_include('https://code.jquery.com/jquery-3.3.1.slim.min.js') }}
        {{ javascript_include('https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js') }}
        {{ javascript_include('https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js') }}
    </body>
</html>
