<html>
    <head>
        <title>JS API Test</title>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript"></script>
        <script src="scripts/transparent_js.js" type="text/javascript"></script>
        <link type="text/css" rel="stylesheet" href="styles/stylesdk.css"/>
        <style>
            div#container{
                border: 1px solid #009cc3;
                margin: 0 auto;
                padding: 20px;
                width: 225px;
            }

            div{
                padding:10px;
            }

            label{
                color:#009cc3;
            }

            button{
                background:#009cc3;
                border:1px solid #009cc3;
                padding:3px 7px;
                cursor:pointer;
            }
        </style>
    </head>
    <body>
    <div class="heading">Velocity Test App (JAVA)</div>
        <div id="container">
            <div id="result"></div> 

            <form action="nabClientServlet" method="POST" id="payment">
            
             <input type="checkbox" name="enableTestMode" checked="checked" /> Enable Test mode
            	<div>
                    <label>Identity Token</label>
                    <input name="identityToken" class="" id="identityToken" size="30" type="text" 
                    	value="PHNhbWw6QXNzZXJ0aW9uIE1ham9yVmVyc2lvbj0iMSIgTWlub3JWZXJzaW9uPSIxIiBBc3NlcnRpb25JRD0iXzdlMDhiNzdjLTUzZWEtNDEwZC1hNmJiLTAyYjJmMTAzMzEwYyIgSXNzdWVyPSJJcGNBdXRoZW50aWNhdGlvbiIgSXNzdWVJbnN0YW50PSIyMDE0LTEwLTEwVDIwOjM2OjE4LjM3OVoiIHhtbG5zOnNhbWw9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjEuMDphc3NlcnRpb24iPjxzYW1sOkNvbmRpdGlvbnMgTm90QmVmb3JlPSIyMDE0LTEwLTEwVDIwOjM2OjE4LjM3OVoiIE5vdE9uT3JBZnRlcj0iMjA0NC0xMC0xMFQyMDozNjoxOC4zNzlaIj48L3NhbWw6Q29uZGl0aW9ucz48c2FtbDpBZHZpY2U+PC9zYW1sOkFkdmljZT48c2FtbDpBdHRyaWJ1dGVTdGF0ZW1lbnQ+PHNhbWw6U3ViamVjdD48c2FtbDpOYW1lSWRlbnRpZmllcj5GRjNCQjZEQzU4MzAwMDAxPC9zYW1sOk5hbWVJZGVudGlmaWVyPjwvc2FtbDpTdWJqZWN0PjxzYW1sOkF0dHJpYnV0ZSBBdHRyaWJ1dGVOYW1lPSJTQUsiIEF0dHJpYnV0ZU5hbWVzcGFjZT0iaHR0cDovL3NjaGVtYXMuaXBjb21tZXJjZS5jb20vSWRlbnRpdHkiPjxzYW1sOkF0dHJpYnV0ZVZhbHVlPkZGM0JCNkRDNTgzMDAwMDE8L3NhbWw6QXR0cmlidXRlVmFsdWU+PC9zYW1sOkF0dHJpYnV0ZT48c2FtbDpBdHRyaWJ1dGUgQXR0cmlidXRlTmFtZT0iU2VyaWFsIiBBdHRyaWJ1dGVOYW1lc3BhY2U9Imh0dHA6Ly9zY2hlbWFzLmlwY29tbWVyY2UuY29tL0lkZW50aXR5Ij48c2FtbDpBdHRyaWJ1dGVWYWx1ZT5iMTVlMTA4MS00ZGY2LTQwMTYtODM3Mi02NzhkYzdmZDQzNTc8L3NhbWw6QXR0cmlidXRlVmFsdWU+PC9zYW1sOkF0dHJpYnV0ZT48c2FtbDpBdHRyaWJ1dGUgQXR0cmlidXRlTmFtZT0ibmFtZSIgQXR0cmlidXRlTmFtZXNwYWNlPSJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcyI+PHNhbWw6QXR0cmlidXRlVmFsdWU+RkYzQkI2REM1ODMwMDAwMTwvc2FtbDpBdHRyaWJ1dGVWYWx1ZT48L3NhbWw6QXR0cmlidXRlPjwvc2FtbDpBdHRyaWJ1dGVTdGF0ZW1lbnQ+PFNpZ25hdHVyZSB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnIyI+PFNpZ25lZEluZm8+PENhbm9uaWNhbGl6YXRpb25NZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzEwL3htbC1leGMtYzE0biMiPjwvQ2Fub25pY2FsaXphdGlvbk1ldGhvZD48U2lnbmF0dXJlTWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnI3JzYS1zaGExIj48L1NpZ25hdHVyZU1ldGhvZD48UmVmZXJlbmNlIFVSST0iI183ZTA4Yjc3Yy01M2VhLTQxMGQtYTZiYi0wMmIyZjEwMzMxMGMiPjxUcmFuc2Zvcm1zPjxUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjZW52ZWxvcGVkLXNpZ25hdHVyZSI+PC9UcmFuc2Zvcm0+PFRyYW5zZm9ybSBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyI+PC9UcmFuc2Zvcm0+PC9UcmFuc2Zvcm1zPjxEaWdlc3RNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjc2hhMSI+PC9EaWdlc3RNZXRob2Q+PERpZ2VzdFZhbHVlPnl3NVZxWHlUTUh5NUNjdmRXN01TV2RhMDZMTT08L0RpZ2VzdFZhbHVlPjwvUmVmZXJlbmNlPjwvU2lnbmVkSW5mbz48U2lnbmF0dXJlVmFsdWU+WG9ZcURQaUorYy9IMlRFRjNQMWpQdVBUZ0VDVHp1cFVlRXpESERwMlE2ZW92T2lhN0pkVjI1bzZjTk1vczBTTzRISStSUGRUR3hJUW9xa0paeEtoTzZHcWZ2WHFDa2NNb2JCemxYbW83NUFSWU5jMHdlZ1hiQUVVQVFCcVNmeGwxc3huSlc1ZHZjclpuUytkSThoc2lZZW4vT0VTOUdtZUpsZVd1WUR4U0xmQjZJZnd6dk5LQ0xlS0FXenBkTk9NYmpQTjJyNUJWQUhQZEJ6WmtiSGZwdUlablp1Q2l5OENvaEo1bHU3WGZDbXpHdW96VDVqVE0wU3F6bHlzeUpWWVNSbVFUQW5WMVVGMGovbEx6SU14MVJmdWltWHNXaVk4c2RvQ2IrZXpBcVJnbk5EVSs3NlVYOEZFSEN3Q2c5a0tLSzQwMXdYNXpLd2FPRGJJUFpEYitBPT08L1NpZ25hdHVyZVZhbHVlPjxLZXlJbmZvPjxvOlNlY3VyaXR5VG9rZW5SZWZlcmVuY2UgeG1sbnM6bz0iaHR0cDovL2RvY3Mub2FzaXMtb3Blbi5vcmcvd3NzLzIwMDQvMDEvb2FzaXMtMjAwNDAxLXdzcy13c3NlY3VyaXR5LXNlY2V4dC0xLjAueHNkIj48bzpLZXlJZGVudGlmaWVyIFZhbHVlVHlwZT0iaHR0cDovL2RvY3Mub2FzaXMtb3Blbi5vcmcvd3NzL29hc2lzLXdzcy1zb2FwLW1lc3NhZ2Utc2VjdXJpdHktMS4xI1RodW1icHJpbnRTSEExIj5ZREJlRFNGM0Z4R2dmd3pSLzBwck11OTZoQ2M9PC9vOktleUlkZW50aWZpZXI+PC9vOlNlY3VyaXR5VG9rZW5SZWZlcmVuY2U+PC9LZXlJbmZvPjwvU2lnbmF0dXJlPjwvc2FtbDpBc3NlcnRpb24+" />
                </div>
				
				<div>
                    <label>Work Flow Id</label>
                    <input name="workFlowId" class="" id="workFlowId" size="30" type="text" value="2317000001" />
                </div>
                
                <div>
                    <label>Application Profile Id</label>
                    <input name="appProfileId" class="" id="appProfileId" size="30" type="text" value="14644" />
                </div>
                
                <div>
                    <label>Merchant Profile Id</label>
                    <input name="merchantProfileId" class="" id="merchantProfileId" size="30" type="text" value="PrestaShop Global HC" />
                </div>
				
				<div>
                    <label>Transaction Name</label>
                    <select name="txn_name" >
                    	<option value="verify">Verify</option>
						<option value="auth">Authorize</option>
						<option value="authWotoken">Authorize w/o Token</option>
						<option value="authAndCapture">AuthAndCapture</option>
						<option value="authAndCaptureWoToken">AuthAndCapture w/o Token</option> 
						<option value="capture">Capture</option>
						<option value="undo">Void(Undo)</option>					
						<option value="adjust">Adjust</option>
						<option value="returnById">ReturnById</option>
						<option value="returnUnlinked">ReturnUnlinked</option>
						<option value="returnUnlinkedWoToken">ReturnUnlinked w/o Token</option>
                    </select>
                </div>
                <div>
                    <label>Employee/Customer Id</label>
                    <input name ="empID" id="empID" size="30" type="text" value="11" />
                </div>
                <div>
                    <label>Card holder name</label>
                    <input name ="cardHolderName" id="cardHolderName" size="30" type="text" value="Vimal Kumar" />
                </div>
                <div>
                    <label>Street</label>
                    <input class="div-6" name="street" id="street" size="30" type="text" value="4 corporate sq" />
                </div>
                <div>
                    <label>City</label>
                    <input id="city" name="city" size="30" type="text" value="Denver" />
                </div>
                <div>
                    <label>State</label>
					<select id="state" name="state">
                    <option value="CO">Colorado</option>
                    <option value="NY">NewYork</option>
                    </select>
                </div>
                <div>
                    <label>Zip</label>
                    <input class="" id="zip" name="zip" size="30" type="text" value="80202" />
                </div>
                <div>
                    <label>Country</label>
                    <input id="country" size="30" type="text" value="India" />
                </div>
                <div>
                    <label>Email</label>
                    <input class="div-6" id="email" name="email" size="30" type="text" value="vimalk2@chetu.com" />
                </div>
                <div>
                    <label>Phone</label>
                    <input class="div-6" id="phone" name="phone" size="30" type="text" value="7849477899" />
                </div>
                
                <div>
                    <label>Industry Type</label>
                    <input class="div-6" id="industryType" name="industryType" size="30" type="text" value="Ecommerce" />
                </div>
                
                <div>
                    <label>Currency code</label>
                    <select name="currencyCode" id="currencyCode" />
                    <option value="USD">USD</option>
                    <option value="INR">INR</option>
                    </select>
                </div>
                
                <div>
                    <label>Card Type</label>
                    <select name="cardtype" id="cardtype" />
                    <option value="Visa">Visa</option>
                    <option value="Master">Master</option>
                    </select>
                </div>
                
                <div>
                    <label>PAN Number: </label>
                    <input name="panNumber" id="panNumber" type="text" maxlength="16" autocomplete="off" value="4012888812348882" autofocus />
                </div>
                
                <div>
                    <label>Amount: </label>
                    <input name="amount" id="amount" type="text" maxlength="16" autocomplete="off" value="1000.00" autofocus />
                </div>
                
                <div>
                    <label>Tip Amount: </label>
                    <input name="tipAmount" id="tipAmount" type="text" maxlength="16" autocomplete="off" value="3.00" autofocus />
                </div>
                
                <div>
                    <label>CVC: </label>
                    <input id="cvc" name="cvc" type="text" autocomplete="off" value="123" autofocus />
                </div>
                
                <div>
                    <label>TransactionDateTime: </label>
                    <input id="transactionDateTime" name="transactionDateTime" type="text" maxlength="4" autocomplete="off" value="2013-04-03T13:50:16"/>
                </div>
                
                <div>
                    <label>Expiry Date: </label>
                    <select id="cc-exp-month" name="month">
                        <option value="01" selected="selected">Jan</option>
                        <option value="02">Feb</option>
                        <option value="03">Mar</option>
                        <option value="04">Apr</option>
                        <option value="05">May</option>
                        <option value="06">Jun</option>
                        <option value="07">Jul</option>
                        <option value="08">Aug</option>
                        <option value="09">Sep</option>
                        <option value="10">Oct</option>
                        <option value="11">Nov</option>
                        <option value="12">Dec</option>
                    </select>
                    <select id="cc-exp-year" name="year">
                        <option value="13">2013</option>
                        <option value="14">2014</option>
                        <option value="15" selected="selected">2015</option>
                        <option value="16">2016</option>
                        <option value="17">2017</option>
                        <option value="18">2018</option>
                        <option value="19">2019</option>
                        <option value="20">2020</option>
                        <option value="21">2021</option>
                        <option value="22">2022</option>
                    </select>
                </div><br />
                
                <button id="process-payment-btn" type="submit" style="margin-left: 42px;">Process Payment</button>
            </form>
        </div>
    </body>
</html>