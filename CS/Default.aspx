<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .content
        {
            width: 100%;
            height: 140px;
        }


        .dxMacOSMobilePlatform #qr,
        .dxAndroidMobilePlatform #qr,
        .dxWindowsPhonePlatform #qr
        {
            display: none;
        }

        .dxMacOSMobilePlatform .content,
        .dxAndroidMobilePlatform .content,
        .dxWindowsPhonePlatform .content
        {
            background-color: #66CCFF;
        }

        .dxIE .content
        {
            background-color: blue;
        }

        .dxFirefox .content
        {
            background-color: #FF6633;
        }
        .dxChrome .content
        {
            background-color: #C0C9CA;
        }
        .dxOpera .content
        {
            background-color: red;
        }
        .dxSafari .content
        {
            background-color: sandybrown
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="element">
        </div>
        <dx:ASPxRoundPanel ID="ASPxPanel1" ClientInstanceName="panel" runat="server" Width="100%" CssClass="panel" HeaderText="Check on your device!">
            <PanelCollection>
                <dx:PanelContent runat="server">
                    <img id="qr" style="float:left" />
                    <div class="content"></div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </form>
    <script type="text/javascript">
        (function () {
            var qr = document.getElementById("qr");
            qr.src = "https://chart.googleapis.com/chart?chs=140x140&cht=qr&chld=L|0&chl=" + escape(location.href);
        })();
    </script>
</body>
</html>
