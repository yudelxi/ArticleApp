{{ content() }}

<fieldset>
    <div class="w-75 ml-1">
        <h2 class="mb-3 text-danger">{{ article.title }}</h2>
        <p class="font-italic">{{ article.summary }}</p>
        <p class="">{{ content }}</p>
        <p class="my-2 text-warning font-weight-bold">{{ date("d F Y", strtotime(article.date)) }}</p>
        {{ link_to('index', 'Return to Homepage', "class": "") }}
    </div>
</fieldset>
