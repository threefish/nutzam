<div class="doc-info row">
    <#if doc.lm??>
        <div class="col-md-2 col-sm-3 col-xs-12 doc-lm">${doc.lm?datetime}</div>
    </#if>
    <#if doc.verifiers??>
        <div class="col-md-2 offset-md-6 col-sm-3 offset-sm-3 col-xs-12 doc-au doc-verifiers">
            <#if (doc.verifiers?size)&gt;0><i>校验:</i></#if>
            <#list doc.verifiers as au>
            <span class="doc-aui doc-verif">
                <#if (au.email)??>
                    <a href="mailto:${au.email}">${au.name}</a>
                <#else>
                    <b>${au.name}</b>
                </#if>
            </span>
            </#list>
        </div>
    </#if>
    <#if doc.authors??>
        <div class="col-md-2 col-sm-3 col-xs-12 doc-au doc-authors">
            <#if (doc.authors?size)&gt;0><i>作者:</i></#if>
            <#list doc.authors as au>
            <span class="doc-aui doc-author">
                <#if (au.email)??>
                    <a href="mailto:${au.email}">${au.name}</a>
                <#else>
                    <b>${au.name}</b>
                </#if>
            </span>
            </#list>
        </div>
    </#if>
</div>
