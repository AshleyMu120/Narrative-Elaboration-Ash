/// @description Insert description here
// You can write your code in this editor


if (place_meeting(x, y, obj_player2)) {
    // If there is a collision, move the player outside the wall
    with (obj_player2) {
        // Move the player back to the previous position before the collision
        x = xprevious;
        y = yprevious;
    }
}












