#include <cstdio>

using namespace std;

#define REP(i,n)   for(int i=0; i<(int)(n); i++)
#define FOR(i,b,e) for(int i=(b); i<=(int)(e); i++)

const int N_MAX = 100;

int N;
int a[N_MAX];
int b[N_MAX];
int c[N_MAX];
int d[N_MAX];

void solve() {
  int ans = 0;
  printf("%d\n", ans);
}

void input() {
  scanf("%d", &N);
  REP(i, N) scanf("%d%d", a + i, b + i);
  REP(i, N) scanf("%d%d", c + i, d + i);
}

int main() {
  input();
  solve();
  return 0;
}
