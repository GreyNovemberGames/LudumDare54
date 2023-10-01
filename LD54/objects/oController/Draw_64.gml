// Draw Event of oHealthBar
var maxHealth = 100; // Set your maximum health here
var healthPercentage = clamp(oPlayer.hp / maxHealth, 0, 1); // Ensure the percentage is between 0 and 1

var barWidth = 25; // Adjust the width of your health bar
var barHeight = 4; // Adjust the height of your health bar

var barColor = make_color_rgb(97,38,56); // Set the color of your health bar (e.g., green)

var barX = view_xview[0] + 8; // Adjust the X position
var barY = view_yview[0] + 8; // Adjust the Y position

// Draw the background of the health bar
draw_set_color(c_gray);
draw_rectangle(barX, barY, barX + barWidth, barY + barHeight, false);

// Draw the actual health based on the player's HP
draw_set_color(barColor);
draw_rectangle(barX, barY, barX + (barWidth * healthPercentage), barY + barHeight, false);

draw_set_color(c_white);
draw_sprite(sHealthbar,0,barX,barY);

draw_sprite(sIcon,oPlayer.candash,barX + 32, barY);