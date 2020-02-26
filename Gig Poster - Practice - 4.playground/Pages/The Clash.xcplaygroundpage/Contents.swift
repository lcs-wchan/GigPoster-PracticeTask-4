//: # Gig Poster - Practice Task 4
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![the-clash-no-grid](the-clash-no-grid.png "The Clash")
 ![the-clash-with-grid](the-clash-with-grid.png "The Clash")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 72, brightness: 85, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your work below...

// draw background
canvas.fillColor = orange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// draw blue squares
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.rotate(by: 45)
canvas.borderColor = blue


for y in stride(from: -1, to: 300, by: 50) {
    for x in stride(from: -1, to: 300, by: 50) {
        if x == y {
            canvas.drawRectangle(at: Point(x: 400, y: 150), width: x, height: y, anchoredBy: AnchorPosition.centre, borderWidth: 10)
            
        }
    }
}

// draw white squares
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.borderColor = offWhite


for y in stride(from: -1, to: 300, by: 50) {
    for x in stride(from: -1, to: 300, by: 50) {
        if x == y {
            canvas.drawRectangle(at: Point(x: 450, y: 100), width: x, height: y, anchoredBy: AnchorPosition.centre, borderWidth: 10)
            
        }
    }
}

// draw text
canvas.drawText(message: "with the brattles", at: Point(x: 17, y: 40), size: 8)
canvas.drawText(message: "september 12, 13, 14, 1975", at: Point(x: 17, y: 20), size: 8)

canvas.drawText(message: "at cbgb and omfug", at: Point(x: 150, y: 40), size: 8)
canvas.drawText(message: "315 bowery, new york city", at: Point(x: 150, y: 20), size: 8)

canvas.drawText(message: "also appearing:", at: Point(x: 275, y: 40), size: 8)
canvas.drawText(message: "from brooklyn, the shirts", at: Point(x: 275, y: 20), size: 8)

canvas.drawText(message: "talking heads", at: Point(x: 20, y: 150), size: 40)


/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 *Be sure to commit your work multiple times as you make progress on completing this task.*

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

