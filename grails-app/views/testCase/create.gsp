<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'user.label', default: 'Test-Case')}" />
    <title>
        <g:message code="title.testCase.create"/>
    </title>
</head>
<body>
<div class="nav" role="navigation">
    <u1>
        <li>
            <g:link uri="/project/${params.projectId}/testCase/list">
                <g:message code="testCase.list.label.button"/>
            </g:link>
        </li>
    </u1>
</div>
<div id="create-testCase" class="content scaffold-create" role="main">
    <h1>
        <g:message code="testCase.create.label"/>
    </h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">
            ${flash.message}
        </div>
    </g:if>
    <g:hasErrors bean="${this.testCase}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.testCase}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}"> data-field-id="${error.field}" </g:if>>
                    <g:message error="${error}"/>
                </li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:hasErrors bean="${this.testCaseDocument}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.testCaseDocument}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}"> data-field-id="${error.field}" </g:if>>
                    <g:message error="${error}"/>
                </li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form action="save" enctype="multipart/form-data">
        <fieldset class="form">
            <div class="fieldcontain ${hasErrors(bean: testCase, field: 'caseName','error')}">
                <label>
                    <g:message code="testCase.caseName.label.field"/>
                </label>
                <g:textField name="caseName" value="${testCase.caseName}"/>
            </div>
            <div class="fieldcontain ${hasErrors(bean: testCase, field: 'typeCase','error')}">
                <label>
                    <g:message code="testCase.typeCase.label.field"/>
                </label>
                <g:select name="typeCase"
                          from="${testCase.getConstrainedProperties().typeCase.inList}"
                          value="${testCase.getConstrainedProperties().typeCase.inList[0]}"
                          valueMessagePrefix="testCase.type.label" />
            </div>
            <div class="fieldcontain ${hasErrors(bean: testCaseDocument, field: 'data','error')}">
                <label>
                    <g:message code="testCaseDocument.data.label.field"/>
                </label>
                <input type="file" id="data" name="data" code="testCaseDocument.upload"/>
            </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="save"  value="${message(code: 'testCase.create.label.button')}" />
        </fieldset>
    </g:form>
</div>
</body>
</html>