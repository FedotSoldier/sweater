<#import "login.ftl" as login>

<#include "security.ftl">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <font class="navbar-brand">Sweater</font>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/main">Messages</a>
            </li>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">Users</a>
                </li>
            </#if>
        </ul>
        <div class="navbar-text mr-3">${name}</div>
        <#if known>
            <@login.logout />
        <#else>
            <a class="btn btn-primary" href="/login" type="button">Log In</a>
        </#if>
    </div>
</nav>
