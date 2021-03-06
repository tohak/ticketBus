<#macro navbar>
<#include "security.ftl">
 <nav class="teal">
    <div class="nav-wrapper">
        <div class="container">
        <a href="#" class="brand-logo left">  <i class="material-icons large" style="margin-top: 3px">directions_bus</i> One Click Bus</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down" style="margin-right: 250px">
            <li><a href="/public/main">Купить билет</a></li>
            <li><a href="/public/info">Информация</a></li>
            <!--   <li><a href=/staff">Персонал</a></li> -->
            <#if user??>
            <li><a href="/profile">Личный кабинет</a></li>
            <li><input type="hidden" name="_csrf" value="${_csrf.token}" />
                <a href="/logout">Выйти</a></li>
            <li><label><h7>${user?ifExists}</h7></label></li>
           <#-- <form action="/logout" method="post" >
                       <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                         <button class="waves-effect waves-light btn-large blue-grey"
                                 type="submit">
                             Выйти
                             <i class="material-icons right">exit_to_app</i></button>
                   </form>-->

            <#else>
                <li ><a href="/public/login">Войти на сайт</a></li>
            </#if>
        </ul>
        </div>
    </div>
 </nav>
</#macro>