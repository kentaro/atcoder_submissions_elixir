#include <cstdio>

using namespace std;

#define REP(i,n)   for(int i=0; i<(int)(n); i++)
#define FOR(i,b,e) for(int i=(b); i<=(int)(e); i++)

const int M_MAX = 2;
const int T_I_MAX = 100000;

int N, M;
int S[N_MAX];
int T[M_MAX];

void solve() {
  int ans = 0;
  printf("%d\n", ans);
}

void input() {
  scanf("%d%d", &N, &M);
  REP(i, N) scanf("%d", S + i);
  REP(i, M) scanf("%d", T + i);
}

int main() {
  input();
  solve();
  return 0;
}
