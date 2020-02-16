//kZime
#include <bits/stdc++.h>
using namespace std;
#ifndef ONLINE_JUDGE
#define wi(x) cerr << #x << ": " << x << '\n';
#else
#define wi(x)
#endif
typedef long long ll;
typedef unsigned long long ull;
const int INF = 0x3f3f3f3f;
template<typename T>
inline T getNum() {
    T k = 0;
    char c = getchar(), f = 1;
    for (; !isdigit(c); c = getchar()) if (c == '-') f = -1;
    for (; isdigit(c); c = getchar()) k = k * 10 + c - '0';
    return k * f;
}
#define gn() getNum<int>()
#define gl() getNum<ll>()
clock_t opt, edt;
inline void init() {
#ifndef ONLINE_JUDGE
    freopen("../input.txt", "r", stdin);
    opt = clock();
#endif
}
inline void tini() {
#ifndef ONLINE_JUDGE
    edt = clock();
    cerr << "\n#cost: " <<  (double)(edt - opt) / CLOCKS_PER_SEC << "s\n";
#endif
}



int main() {
    init();
///////////////////////////////////////////////////////////////////////////////

//codes

///////////////////////////////////////////////////////////////////////////////
    tini();
}
