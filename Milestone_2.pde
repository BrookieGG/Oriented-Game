float leftShipX;
float leftShipY;

float rightShipX;
float rightShipY;

int leftScore = 0;
int rightScore = 0;

boolean leftShipUp = false;
boolean leftShipDown = false;

boolean rightShipUp = false;
boolean rightShipDown = false;

void setup() {
  size(400, 400);
  leftShipX = width * 0.33;
  leftShipY = height - 25;

  rightShipX = width * 0.66;
  rightShipY = height - 25;
}

void draw() {
  background(0);

  // Move left ship
  if (leftShipUp) {
    leftShipY--;
  } else if (leftShipDown) {
    leftShipY++;
  }

  // Move right ship
  if (rightShipUp) {
    rightShipY--;
  } else if (rightShipDown) {
    rightShipY++;
  }

  // Draw left ship
  ellipse(leftShipX, leftShipY, 20, 20);

  // Draw right ship
  ellipse(rightShipX, rightShipY, 20, 20);

  // Check if left ship reached the top
  if (leftShipY <= 0) {
    leftScore++;
    resetLeftShip();
  }

  // Check if right ship reached the top
  if (rightShipY <= 0) {
    rightScore++;
    resetRightShip();
  }

  // Display scores
  fill(255);
  textAlign(CENTER);
  textSize(20);
  text("Left Score: " + leftScore, width * 0.25, 20);
  text("Right Score: " + rightScore, width * 0.75, 20);
}

void resetLeftShip() {
  leftShipY = height - 25;
}

void resetRightShip() {
  rightShipY = height - 25;
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      rightShipUp = true;
      rightShipDown = false;
    } else if (keyCode == DOWN) {
      rightShipDown = true;
      rightShipUp = false;
    }
  } else {
    if (key == 'w') {
      leftShipUp = true;
      leftShipDown = false;
    } else if (key == 's') {
      leftShipDown = true;
      leftShipUp = false;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      rightShipUp = false;
    } else if (keyCode == DOWN) {
      rightShipDown = false;
    }
  } else {
    if (key == 'w') {
      leftShipUp = false;
    } else if (key == 's') {
      leftShipDown = false;
    }
  }
}
