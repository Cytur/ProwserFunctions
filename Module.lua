function website(name)
	local Page = new("ScrollingFrame",app)
	Page.Size = UDim2.fromScale(1,0.8)
	Page.Position = UDim2.fromScale(0,0.2)
	Page.BackgroundTransparency = 1
	Page.TopImage = Page.MidImage
	Page.BottomImage = Page.MidImage
	Page.ScrollBarThickness = 8
	Page.AutomaticCanvasSize = "Y"
	Page.CanvasSize = UDim2.fromScale(0,1)
	Page.Name = "Page"
	return Page
end

function ResizeWebsite(size)
   for _,v in pairs(app:GetChildren()) do
     if v.Name == "Page" and v:IsA("ScrollingFrame") then
	v.CanvasSize = udim
     end
   end
end

function NewWindow(name,size,logoId)
	print("NewWindow() is not completed yet!")
end

function topbar()
	local websiteLoaded = false
	for _,v in pairs(app:GetChildren()) do
		if v.Name == "Page" and v:IsA("ScrollingFrame") then
			websiteLoaded = true
		end
	end
	if websiteLoaded == true then
		local bar = new("Frame",app)
		bar.Size = UDim2.fromScale(1,0.1)
		bar.Position = UDim2.fromScale(0,0.2)
		local page = app.Page
		page.Position = UDim2.fromScale(0,0.3)
		return bar
	end
end
