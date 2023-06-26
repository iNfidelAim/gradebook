<%@ include file="/init.jsp"%>

<%-- Generate add / edit action URL and set title. --%>
<c:choose>
    <c:when test="${not empty assignment}">
        <portlet:actionURL var="assignmentActionURL" name="<%
=MVCCommandNames.EDIT_ASSIGNMENT %>">
            <portlet:param name="redirect" value="${param.red
irect}" />
        </portlet:actionURL>
        Exercise: Implement the Assignment Editing View
        110
        <c:set var="editTitle" value="edit-assignment"/>
    </c:when>
    <c:otherwise>
        <portlet:actionURL var="assignmentActionURL" name="<%
=MVCCommandNames.ADD_ASSIGNMENT %>">
            <portlet:param name="redirect" value="${param.red
irect}" />
        </portlet:actionURL>
        <c:set var="editTitle" value="add-assignment"/>
    </c:otherwise>
</c:choose>
<div class="container-fluid-1280 edit-assignment">
    <h1><liferay-ui:message key="${editTitle}" /></h1>
    <aui:model-context bean="${assignment}" model="${assignme
ntClass}" />
    <aui:form action="${assignmentActionURL}" name="fm">
        <aui:input name="assignmentId" field="assignmentId" t
                   ype="hidden" />
        <aui:fieldset-group markupView="lexicon">
            <aui:fieldset>
                <%-- Title field. --%>
                <aui:input name="title">
                </aui:input>
                <%-- Description field. --%>
                <aui:input name="description">
                    <aui:validator name="required" />
                </aui:input>
                Exercise: Implement the Assignment Editing View
                111
                <%-- Due date field. --%>
                <aui:input name="dueDate">
                    <aui:validator name="required" />
                </aui:input>
            </aui:fieldset>
        </aui:fieldset-group>
        <%--Buttons. --%>
        <aui:button-row>
            <aui:button cssClass="btn btn-primary" type="subm
it" />
            <aui:button cssClass="btn btn-secondary" onClick=
                    "${param.redirect}" type="cancel" />
        </aui:button-row>
    </aui:form>
</div>
