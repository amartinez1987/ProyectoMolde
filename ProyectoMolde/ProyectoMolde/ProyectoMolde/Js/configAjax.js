var host = "http://" + window.location.host;
var usuarioId = 0;
var aplicacion = "Molde";

function setLocalStorageNavegator(clave , valor)
{
    localStorage.setItem(clave, valor);
    storeCookie(clave, valor);
}

function setCookie(name, value, expires, path, domain, secure)
{
    try {
        var today = new Date();
        today.setTime(today.getTime());
        if (expires) {
            expires = expires * 1000 * 60 * 60 * 24;
        }
        var expires_date = new Date(today.getTime() + (expires));
        document.cookie = name + "=" + escape(value) +
        ((expires) ? ";expires=" + expires_date.toGMTString() : "") + //expires.toGMTString()
        ((path) ? ";path=" + path : "") +
        ((domain) ? ";domain=" + domain : "") +
        ((secure) ? ";secure" : "");
    } catch (err) { }
    
}

function getCookie(name) {
    var start = document.cookie.indexOf(name + "=");
    var len = start + name.length + 1;
    try {
        if ((!start) && (name != document.cookie.substring(0, name.length))) {
            return null;
        }
        if (start == -1) return null;
        var end = document.cookie.indexOf(";", len);
        if (end == -1) end = document.cookie.length;
    } catch (err) { }
    return unescape(document.cookie.substring(len, end));
}

function getLocalStorageNavegator(clave)
{
    return  localStorage.getItem(clave);
}

function storeCookie(name, value)
{
    setCookie(name, value, 1, '', '', '');
}

function enviarComoParametros(url, objeto, functionResult)
{
    var urlComplete = host + url;
    dataParams = getParamsValues(objeto);    
    $.ajax(
    {
        type: "POST",
        url: urlComplete,
        data: dataParams,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: true,
        success: function (result)
        {
            return functionResult(result.d)
        }
    });    
}

    function getParamsValues(objeto)
    {
        var arrayParams ="{";
        for (var atributo in objeto)
        {
            if (objeto.hasOwnProperty(atributo))
            {
                arrayParams += atributo + ':' + JSON.stringify(objeto[atributo]) + ',';
            }
        }
        arrayParams = arrayParams.substring(0, arrayParams.length - 1);
        arrayParams += "}";
        return arrayParams;  
    }
