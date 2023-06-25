#include <stdlib.h>

struct Vampire {
  char *location;
  int birthday;
  int deathdate;
  char *weaknesses[2];
};

int _calcAge(struct Vampire *v) { return v->deathdate - v->birthday; }

int get_age(struct Vampire *v) { return _calcAge(v); }

int main() {
  struct Vampire v;

  /* There was a guy named Vlad */
  v.location = malloc(12 * sizeof(char));
  v.location = "Transylvania";
  v.birthday = 1428;
  v.deathdate = 1476;
  v.weaknesses[0] = "Sunlight";
  v.weaknesses[1] = "Garlic";

  get_age(&v);

  return 0;
}
