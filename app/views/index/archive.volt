{{ content() }}

<fieldset>
    <div class="my-3 ml-1">
        <h2 class="mb-3 text-danger">Article Archive</h2>
        {% for article in articles %}
            <div class="w-70 mb-3">
                <span class="h6 text-danger text-uppercase d-inline-block mb-0 archive-block">{{ date("d F Y", strtotime(article.date)) }}</span>{{ link_to('index/article/' ~ article.id, article.title, "class": "h-custom text-warning d-inline") }}
                <table class="mt-2">
                    <tr>
                        <td class="archive-block"></td>
                        <td>{{ article.summary }}</td>
                    </tr>
                </table>
            </div>
        {% endfor %}
        <span class="d-block my-3">{{ articleCount }} articles in total.</span>
        {{ link_to('index', 'Return to Homepage', "class": "mb-0") }}
    </div>
</fieldset>
