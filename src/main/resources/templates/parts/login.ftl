<#macro login path isRegisterForm>
<#if isRegisterForm>
    <h3 class="mb-1">Creating new user</h3>
<#else>
    <h3 class="mb-1">Log In</h3>
</#if>
<form action="${path}" method="post">
    <div class="form-group row">
        <label class="col-sm-3 col-form-label">User Name:</label>
        <div class="col-sm-6">
            <input class="form-control" type="text" name="username" placeholder="username"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-3 col-form-label">Password:</label>
        <div class="col-sm-6">
            <input class="form-control" type="password" name="password" placeholder="password"/>
        </div>
    </div>
    <#if isRegisterForm>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Email:</label>
            <div class="col-sm-6">
                <input class="form-control" type="email" name="email" placeholder="email"/>
            </div>
        </div>
    </#if>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit" class="btn btn-primary"><#if isRegisterForm>Create<#else>Sign In</#if></button>
    <div>
        <#if !isRegisterForm>
            <a href="/registration">Register</a>
        </#if>
    </div>
</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit" class="btn btn-warning">Log Out</button>
</form>
</#macro>
