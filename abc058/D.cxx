#include <cstdio>

using namespace std;

#define REP(i,n)   for(int i=0; i<(int)(n); i++)
#define FOR(i,b,e) for(int i=(b); i<=(int)(e); i++)

const int NM_MAX = 100000;
const int X_N_MAX = 1000000000;
const int Y_M_MAX = 1000000000;

int n, m;
int x[N_MAX];
int y[M_MAX];

void solve() {
  int ans = 0;
  printf("%d\n", ans);
}

void input() {
  scanf("%d%d", &n, &m);
  REP(i, n) scanf("%d", x + i);
  REP(i, m) scanf("%d", y + i);
}

int main() {
  input();
  solve();
  return 0;
}
