local dom = {}

dom.website = function(name)
	local Page = new("ScrollingFrame",app)
	Page.Size = UDim2.fromScale(1,0.8)
	Page.Position = UDim2.fromScale(0,0.2)
	Page.BackgroundTransparency = 1
	Page.TopImage = Page.MidImage
	Page.BottomImage = Page.MidImage
	Page.ScrollBarThickness = 8
	Page.AutomaticCanvasSize = "Y"
	Page.CanvasSize = UDim2.fromScale(0,1)
	return Page
end

dom.ResizeWebsite = function(size)
  for _,v in pairs(app:GetChildren()) do
		if v.Name == "Page" then
			v.CanvasSize = udim
		end
	end
end

dom.NewWindow = function(name,size,logoId)
  print("NewWindow() is not completed yet!")
end

return dom
