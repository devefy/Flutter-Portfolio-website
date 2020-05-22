Input breakpoint<Input>(
    double input, Input desktop, Input tablet, Input mobile) {
  if (input > 1000) {
    return desktop;
  } else if (input > 650 && input < 1000) {
    return tablet;
  } else {
    return mobile;
  }
}
