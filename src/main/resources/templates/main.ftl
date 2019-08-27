<#import "parts/common.ftl" as common>

<@common.page>
<h3>List of messages</h3>
<div class="form-row">
    <div class="form-group">
        <form class="form-inline" method="get" action="/main">
            <input class="form-control" type="text" name="filter" placeholder="Tag" value="${filter!}">
            <button class="btn btn-primary ml-2" type="submit">Search</button>
        </form>
    </div>
</div>
<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Add new message
  </a>
<div class="collapse" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input class="form-control" type="text" name="text" placeholder="Message text">
            </div>
            <div class="form-group">
                <input class="form-control" type="text" name="tag" placeholder="Tag">
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input name="file" type="file" id="custom">
                    <label class="custom-file-label" for="custom">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <div class="form-group">
                <button class="btn btn-primary" type="submit">Add</button>
            </div>
        </form>
    </div>
</div>
<div class="card-columns">
    <#list messages as message>
    <div class="card my-3">
        <div>
            <#if message.filename??>
                <img class="card-img-top" src="/img/${message.filename}">
            </#if>
        </div>
        <div class="m-2">
            <span>${message.text}</span>
            <i>${message.tag}</i>
        </div>
        <div class="card-footer text-muted">
            ${message.authorName}
        </div>
    </div>
    <#else>
        <h3>No messages</h3>
    </#list>
</div>
</@common.page>
