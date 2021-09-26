local w,h = term.getSize()

function centerWrite(text, yOffset)
    term.setCursorPos(math.floor(w / 2 - string.len(text) / 2), h / 2 + yOffset)
    write(text)
end

function drawOutlinedBox(xDiff, yDiff, fillColor, outlineColor)  
    paintutils.drawFilledBox(math.floor(w / 2 - xDiff), math.floor(y / 2 - yDiff), math.floor(w / 2 + xDiff), math.floor(w / 2 + yDiff), fillColor)
    paintutils.drawBox(math.floor(w / 2 - xDiff), math.floor(y / 2 - yDiff), math.floor(w / 2 + xDiff), math.floor(w / 2 + yDiff), outlineColor)
end

function getMid()
    return math.floor(w / 2), math.floor(h / 2)
end

function termColors(txtColor, bgColor)
    term.setTextColor(txtColor)
    term.setBackgroundColor(bgColor)
end
