#include <cstdio>

using namespace std;

#define REP(i,n)   for(int i=0; i<(int)(n); i++)
#define FOR(i,b,e) for(int i=(b); i<=(int)(e); i++)

const int N_MAX = 50;
const int S_I_MAX = 50;

int n;
char S[N_MAX][S_MAX + 1];

void solve() {
  int ans = 0;
  printf("%d\n", ans);
}

void input() {
  scanf("%d", &n);
  REP(i, n) scanf("%s", S[i]);
}

int main() {
  input();
  solve();
  return 0;
}
