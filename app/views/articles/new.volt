{{ content() }}

<h2 class="mb-3 text-danger">New Article</h2>
<div class="bg-warm rounded w-100 mx-auto my-3 p-3 shadow-lg">
    {{ form("articles/create") }}
        <fieldset>
            {% for element in form %}
                {% if is_a(element, 'Phalcon\Forms\Element\Hidden') %}
                    {{ element }}
                {% else %}
                    <div class="form-group">
                        {{ element.label() }}
                        {{ element.render(['class': 'form-control']) }}
                    </div>
                {% endif %}
            {% endfor %}
            <div class="text-center">
                {{ submit_button("Add Article", "class": "btn btn-danger shadow-lg px-5") }}
                {{ link_to("articles", "Cancel", "class": "btn btn-danger shadow-lg px-5") }}
            </div>
        </fieldset>
    </form>
</div>
