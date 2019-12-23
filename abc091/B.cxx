#include <cstdio>

using namespace std;

#define REP(i,n)   for(int i=0; i<(int)(n); i++)
#define FOR(i,b,e) for(int i=(b); i<=(int)(e); i++)

const int M_MAX = 100;

int N;
char s[N_MAX][S_MAX + 1];
int M;
int t[M_MAX];

void solve() {
  int ans = 0;
  printf("%d\n", ans);
}

void input() {
  scanf("%d", &N);
  REP(i, N) scanf("%s", s[i]);
  scanf("%d", &M);
  REP(i, M) scanf("%d", t + i);
}

int main() {
  input();
  solve();
  return 0;
}
