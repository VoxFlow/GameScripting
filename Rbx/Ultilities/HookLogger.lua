local excluded_Url = { "test.com" }
local request = http_request or request or HttpPost or syn and syn.request or http and http.request
webhookdetect = hookfunction(request, function(self)
    if self.Method and self.Method == "POST" and self.Url and not table.find(excluded_Url, self.Url) then
        request{ Url = self.Url, Method = "DELETE" }
        self.Url = ""
    end
    return webhookdetect(self)
end)