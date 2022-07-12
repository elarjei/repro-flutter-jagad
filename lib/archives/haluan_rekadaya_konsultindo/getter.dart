class Recipes {
  String cheese;
  String bun;
  String meat;

  Recipes(this.cheese, this.bun, this.meat);

  String giveMeCheeseBurger() {
    return bun + cheese + meat;
  }

  String get cheeseBurger => giveMeCheeseBurger();
}
