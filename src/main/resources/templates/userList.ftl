<#import "parts/common.ftl" as common>

<@common.page>
    <h3>All users</h3>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Role</th>
                <th></th>
            </tr>
        </thead>

        <tbody>
            <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">edit</a></td>
            </tr>
            </#list>
        </tbody>
    </table>
</@common.page>
