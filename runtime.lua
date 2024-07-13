

-- Aliases
Status = Controls.Status
SendGet = Controls.SendGet
ResponseText = Controls.ResponseText

-- Constants
StatusState = { OK = 0, COMPROMISED = 1, FAULT = 2, NOTPRESENT = 3, MISSING = 4, INITIALIZING = 5}  -- Status states in designer

-- Variables
RequestTimeout = 10                    -- Timeout of the connection in seconds
Host = Controls.ipaddress                 -- HTTP server host name or IP address to use for connection
IPAddress = Controls.ipaddress            -- IP address can be for host

-- Send an HTTP GET request to the defined
function GetRequest()
  -- Define any HTTP headers to sent
  headers = {
    ["Content-Type"] = "text/html",
    ["Accept"] = "text/html"
  }
  -- Generate the URL of the request using HTTPClient formatter
  url = HttpClient.CreateUrl({
    ["Host"] = Host,
    ["Port"] = Port,
    ["Path"] = "get",
    ["Query"] = QueryData
  })

  print("Sending GET request to: " .. url.Host)
  HttpClient.Download({ 
    Url          = url,
    Method       = "GET",
    Headers      = headers,
    User         = Username,  -- Only needed if device requires a sign in
    Password     = Password,  -- Only needed if device requires a sign in
    Timeout      = RequestTimeout,
    EventHandler = ResponseHandler
  })
end

for snd = 1, 10 do
  Controls["SendGet"..snd].EventHandler = function()
          print("howdy "..snd)
  end
end   