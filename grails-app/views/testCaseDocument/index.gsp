<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'testCaseDocument.label', default: 'TestCaseDocument')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create">Upload your document</g:link></li>
            </ul>
        </div>
        <div class="content scaffold-list" role="main">
            <h1>Document List</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                    <tr>
                        <g:sortableColumn title="Filename" property="name"/>
                        <g:sortableColumn title="Upload Date" property="uploadDate"/>
                    </tr>
                </thead>
                <tbody>
                <g:each in="${testCaseDocumentList}" status="i" var="testCaseDocument">
                    <tr class="${(i%2)==0? 'even' : 'odd'}">
                        <td><g:link action="downloadDocument" id="${testCaseDocument.id}">${testCaseDocument.name}</g:link></td>
                        <td><g:formatDate date="${testCaseDocument.uploadDate}"/></td>
                    </tr>
                </g:each>
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${testCaseDocumentCount ?: 0}" />
            </div>
        </div>
    </body>
</html>