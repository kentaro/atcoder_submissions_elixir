#include <cstdio>

using namespace std;

#define REP(i,n)   for(int i=0; i<(int)(n); i++)
#define FOR(i,b,e) for(int i=(b); i<=(int)(e); i++)

const int N_MAX = 100000;

int n;
int a[N_MAX];

void solve() {
  int ans = 0;
  printf("%d\n", ans);
}

void input() {
  scanf("%d", &n);
  REP(i, n) scanf("%d", a + i);
}

int main() {
  input();
  solve();
  return 0;
}
