{{ content() }}

<fieldset>
    <h2 class="mb-3 text-danger">All Articles</h2>
    <table id="articles">
        <tr>
            <th>Publication Date</th>
            <th>Article</th>
        </tr>
        {% for article in articles %}
        <tr>
            <td>{{ date("d M Y", strtotime(article.date)) }}</td>
            <td>{{ link_to('articles/edit/' ~ article.id, article.title, "class": "text-dark") }}</td>
        </tr>
        {% endfor %}
    </table>

    <span class="d-block ml-1 my-3">{{ articleCount }} articles in total.</span>

    {{ link_to('articles/new', 'Add New Article', "class": "ml-1") }}
</fieldset>
