<#outputformat "plainText">
<#assign requiredActionsText><#if requiredActions??><#list requiredActions><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#sep></#items></#list></#if></#assign>
</#outputformat>

<html>
  <head>
    <style>
      @font-face {
        font-family: "Inter-Regular_Light";
        font-weight: 1 1000;
        src: url('https://anima-uploads.s3.amazonaws.com/5c7943ea965b31000c3e68cb/Inter-upright.var.ttf') format("truetype");
      }

      .email-box {
        padding: 20px;
        display: flex;
        max-width: 800px;
      }
      .title-logo-prepi {
        width: 150px;
        margin-top: 10px;
        margin-bottom: 20px;
      }

      .email-content {
        border-top: 5px solid #F27271;
        border-bottom: 5px solid #0076FF;
        margin: 0 auto;
        max-width: 700px;
        padding: 10px;
      }

      p {
        font-size: 1.4em;
        font-family: 'Inter-Regular_Light';
      }
    </style>
  </head>

  <body>
    <div class="email-box">
      <div class="email-content">
        <img class="title-logo-prepi" src="https://prepiproductsimages.blob.core.windows.net/prepi-1b834335-c9b2-426e-a94f-54115f2744cf/LOGO_PREPI_%20(1).png">

        ${kcSanitize(msg("executeActionsBodyHtml",link, linkExpiration, realmName, requiredActionsText, linkExpirationFormatter(linkExpiration)))?no_esc}
      </div>
    </div>
  </body>
</html>
