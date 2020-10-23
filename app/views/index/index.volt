{{ content() }}

<fieldset>
    <div class="my-3 ml-1">
        {% for article in articles %}
            <div class="w-70 mb-3">
                <span class="h6 text-danger text-uppercase d-inline-block article-block">{{ date("d F", strtotime(article.date)) }}</span>{{ link_to('index/article/' ~ article.id, article.title, "class": "h-custom text-warning d-inline") }}
                <table class="mt-2">
                    <tr>
                        <td class="article-block"></td>
                        <td>{{ article.summary }}</td>
                    </tr>
                </table>
            </div>
        {% endfor %}
        {{ link_to('index/archive', 'Article Archive', "class": "mb-0") }}
    </div>
</fieldset>
