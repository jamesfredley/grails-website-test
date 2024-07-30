<div class="row${required?' mb-3 required':''}${invalid?' invalid':''}">
    <label class="col-sm-2 col-form-label" for="${(prefix?:'')}${property}">${label}<g:if test="${required}"><span class="required-indicator"> *</span></g:if>
    </label>
    <div class="col-sm-10">
    <f:widget class="form-control" bean="${bean}" property="${property}" />
    </div>
</div>