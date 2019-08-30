#include <cstdio>

using namespace std;

#define REP(i,n)   for(int i=0; i<(int)(n); i++)
#define FOR(i,b,e) for(int i=(b); i<=(int)(e); i++)

const int N_MAX = 100;
const int L_I_MAX = 100;
const int X_MAX = 10000;

int N, X;
int L[N_MAX];

void solve() {
  int ans = 0;
  printf("%d\n", ans);
}

void input() {
  scanf("%d%d", &N, &X);
  REP(i, N) scanf("%d", L + i);
}

int main() {
  input();
  solve();
  return 0;
}
