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

// draw white squares
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.borderColor = offWhite
canvas.rotate(by: 45)


for y in stride(from: -1, to: 300, by: 50) {
    for x in stride(from: -1, to: 300, by: 50) {
        if x == y {
            canvas.drawRectangle(at: Point(x: 430, y: 120), width: x, height: y, anchoredBy: AnchorPosition.centre, borderWidth: 10)
            
        }
    }
}

// draw blue squares
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.borderColor = blue


for y in stride(from: -1, to: 300, by: 50) {
    for x in stride(from: -1, to: 300, by: 50) {
        if x == y {
            canvas.drawRectangle(at: Point(x: 400, y: 150), width: x, height: y, anchoredBy: AnchorPosition.centre, borderWidth: 10)
            
        }
    }
}

// counter rotate
canvas.rotate(by: -45)

// draw text
canvas.drawText(message: "with the brattles", at: Point(x: 17, y: 40), size: 8)
canvas.drawText(message: "and dead kennedys", at: Point(x: 17, y: 20), size: 8)

canvas.drawText(message: "matinee and eve", at: Point(x: 150, y: 40), size: 8)
canvas.drawText(message: "saturday/june 13 1961", at: Point(x: 150, y: 20), size: 8)

canvas.drawText(message: "bonds international casino", at: Point(x: 275, y: 40), size: 8)
canvas.drawText(message: "in times square, new york city", at: Point(x: 275, y: 20), size: 8)

canvas.drawText(message: "the clash", at: Point(x: 20, y: 100), size: 40)


/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 *Be sure to commit your work multiple times as you make progress on completing this task.*

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

