{{ content() }}

{{ form('session/start', 'role': 'form') }}
<fieldset>
    <div class="form-group mx-3 mt-3">
        <label for="username">Username</label>
        <div class="controls">
            {{ text_field('username', 'class': "form-control", 'placeholder' : "Your admin username") }}
        </div>
    </div>
    <div class="form-group mx-3">
        <label for="password">Password</label>
        <div class="controls">
            {{ password_field('password', 'class': "form-control", 'placeholder' : "Your admin username") }}
        </div>
    </div>
    <div class="form-group text-center mx-3 mb-3">
        {{ submit_button('Login', 'class': 'btn btn-danger shadow-lg px-5') }}
    </div>
</fieldset>
