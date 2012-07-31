#include <stdio.h>
#include <math.h>
#include <lbfgs.h>

//params: px,py,pz,a,b,c
//params: o1x,o1y,o1z
//params: o2x,o2y,o2z
//params: ...

static lbfgsfloatval_t evaluate(
    void *instance,
    const lbfgsfloatval_t *x,
    lbfgsfloatval_t *g,
    const int n,
    const lbfgsfloatval_t step
    )
{
int i;
lbfgsfloatval_t v=0;

#define r1 (((float*)instance)[0])
#define r2 (((float*)instance)[1])

#define px (x[0])
#define py (x[1])
#define pz (x[2])
#define a (x[3])
#define b (x[4])
#define c (x[5])

#define ox (x[i+0])
#define oy (x[i+1])
#define oz (x[i+2])

g[0]=g[1]=g[2]=g[3]=g[4]=g[5]=g[6]=g[7]=g[8]=0;

for (i=6;i<n;i+=3)
{
lbfgsfloatval_t d2 = (pow(oz - pz,2) + pow(oy - py,2) + pow(ox - px,2));
lbfgsfloatval_t d = (sqrt(d));
lbfgsfloatval_t d32 = pow(d2, 1.5);


g[0] += -2.*(pow(ox - px,2.)/d32 - 1./d)*((sin(b)*cos(a)*cos(c) + sin(a)*sin(c))*cos(r1)*cos(r2) - (sin(b)*sin(c)*cos(a) - sin(a)*cos(c))*sin(r2)*cos(r1) + sin(r1)*cos(a)*cos(b) - (ox - px)/d) + 2.*(oz - pz)*(ox - px)*(sin(c)*sin(r2)*cos(b)*cos(r1) - cos(b)*cos(c)*cos(r1)*cos(r2) + sin(b)*sin(r1) + (oz - pz)/d)/d32 - 2.*(oy - py)*(ox - px)*((sin(a)*sin(b)*cos(c) - sin(c)*cos(a))*cos(r1)*cos(r2) - (sin(a)*sin(b)*sin(c) + cos(a)*cos(c))*sin(r2)*cos(r1) + sin(a)*sin(r1)*cos(b) - (oy - py)/d)/d32;
g[1] += -2.*(pow(oy - py,2.)/d32 - 1./d)*((sin(a)*sin(b)*cos(c) - sin(c)*cos(a))*cos(r1)*cos(r2) - (sin(a)*sin(b)*sin(c) + cos(a)*cos(c))*sin(r2)*cos(r1) + sin(a)*sin(r1)*cos(b) - (oy - py)/d) + 2.*(oz - pz)*(oy - py)*(sin(c)*sin(r2)*cos(b)*cos(r1) - cos(b)*cos(c)*cos(r1)*cos(r2) + sin(b)*sin(r1) + (oz - pz)/d)/d32 - 2.*(oy - py)*(ox - px)*((sin(b)*cos(a)*cos(c) + sin(a)*sin(c))*cos(r1)*cos(r2) - (sin(b)*sin(c)*cos(a) - sin(a)*cos(c))*sin(r2)*cos(r1) + sin(r1)*cos(a)*cos(b) - (ox - px)/d)/d32;
g[2] +=  2.*(pow(oz - pz,2.)/d32 - 1./d)*(sin(c)*sin(r2)*cos(b)*cos(r1) - cos(b)*cos(c)*cos(r1)*cos(r2) + sin(b)*sin(r1) + (oz - pz)/d) - 2.*(oz - pz)*(oy - py)*((sin(a)*sin(b)*cos(c) - sin(c)*cos(a))*cos(r1)*cos(r2) - (sin(a)*sin(b)*sin(c) + cos(a)*cos(c))*sin(r2)*cos(r1) + sin(a)*sin(r1)*cos(b) - (oy - py)/d)/d32 - 2.*(oz - pz)*(ox - px)*((sin(b)*cos(a)*cos(c) + sin(a)*sin(c))*cos(r1)*cos(r2) - (sin(b)*sin(c)*cos(a) - sin(a)*cos(c))*sin(r2)*cos(r1) + sin(r1)*cos(a)*cos(b) - (ox - px)/d)/d32;
g[3] +=  2.*(pow(ox - px,2.)/d32 - 1./d)*((sin(b)*cos(a)*cos(c) + sin(a)*sin(c))*cos(r1)*cos(r2) - (sin(b)*sin(c)*cos(a) - sin(a)*cos(c))*sin(r2)*cos(r1) + sin(r1)*cos(a)*cos(b) - (ox - px)/d) - 2.*(oz - pz)*(ox - px)*(sin(c)*sin(r2)*cos(b)*cos(r1) - cos(b)*cos(c)*cos(r1)*cos(r2) + sin(b)*sin(r1) + (oz - pz)/d)/d32 + 2.*(oy - py)*(ox - px)*((sin(a)*sin(b)*cos(c) - sin(c)*cos(a))*cos(r1)*cos(r2) - (sin(a)*sin(b)*sin(c) + cos(a)*cos(c))*sin(r2)*cos(r1) + sin(a)*sin(r1)*cos(b) - (oy - py)/d)/d32;
g[4] +=  2.*(pow(oy - py,2.)/d32 - 1./d)*((sin(a)*sin(b)*cos(c) - sin(c)*cos(a))*cos(r1)*cos(r2) - (sin(a)*sin(b)*sin(c) + cos(a)*cos(c))*sin(r2)*cos(r1) + sin(a)*sin(r1)*cos(b) - (oy - py)/d) - 2.*(oz - pz)*(oy - py)*(sin(c)*sin(r2)*cos(b)*cos(r1) - cos(b)*cos(c)*cos(r1)*cos(r2) + sin(b)*sin(r1) + (oz - pz)/d)/d32 + 2.*(oy - py)*(ox - px)*((sin(b)*cos(a)*cos(c) + sin(a)*sin(c))*cos(r1)*cos(r2) - (sin(b)*sin(c)*cos(a) - sin(a)*cos(c))*sin(r2)*cos(r1) + sin(r1)*cos(a)*cos(b) - (ox - px)/d)/d32;
g[5] += -2.*(pow(oz - pz,2.)/d32 - 1./d)*(sin(c)*sin(r2)*cos(b)*cos(r1) - cos(b)*cos(c)*cos(r1)*cos(r2) + sin(b)*sin(r1) + (oz - pz)/d) + 2.*(oz - pz)*(oy - py)*((sin(a)*sin(b)*cos(c) - sin(c)*cos(a))*cos(r1)*cos(r2) - (sin(a)*sin(b)*sin(c) + cos(a)*cos(c))*sin(r2)*cos(r1) + sin(a)*sin(r1)*cos(b) - (oy - py)/d)/d32 + 2.*(oz - pz)*(ox - px)*((sin(b)*cos(a)*cos(c) + sin(a)*sin(c))*cos(r1)*cos(r2) - (sin(b)*sin(c)*cos(a) - sin(a)*cos(c))*sin(r2)*cos(r1) + sin(r1)*cos(a)*cos(b) - (ox - px)/d)/d32;
g[6] += -2.*((sin(a)*sin(b)*cos(c) - sin(c)*cos(a))*cos(r1)*cos(r2) - (sin(a)*sin(b)*sin(c) + cos(a)*cos(c))*sin(r2)*cos(r1) + sin(a)*sin(r1)*cos(b))*((sin(b)*cos(a)*cos(c) + sin(a)*sin(c))*cos(r1)*cos(r2) - (sin(b)*sin(c)*cos(a) - sin(a)*cos(c))*sin(r2)*cos(r1) + sin(r1)*cos(a)*cos(b) - (ox - px)/d) + 2.*((sin(b)*cos(a)*cos(c) + sin(a)*sin(c))*cos(r1)*cos(r2) - (sin(b)*sin(c)*cos(a) - sin(a)*cos(c))*sin(r2)*cos(r1) + sin(r1)*cos(a)*cos(b))*((sin(a)*sin(b)*cos(c) - sin(c)*cos(a))*cos(r1)*cos(r2) - (sin(a)*sin(b)*sin(c) + cos(a)*cos(c))*sin(r2)*cos(r1) + sin(a)*sin(r1)*cos(b) - (oy - py)/d);
g[7] += -2.*(sin(b)*sin(c)*sin(r2)*cos(r1) - sin(b)*cos(c)*cos(r1)*cos(r2) - sin(r1)*cos(b))*(sin(c)*sin(r2)*cos(b)*cos(r1) - cos(b)*cos(c)*cos(r1)*cos(r2) + sin(b)*sin(r1) + (oz - pz)/d) - 2.*(sin(c)*sin(r2)*cos(a)*cos(b)*cos(r1) - cos(a)*cos(b)*cos(c)*cos(r1)*cos(r2) + sin(b)*sin(r1)*cos(a))*((sin(b)*cos(a)*cos(c) + sin(a)*sin(c))*cos(r1)*cos(r2) - (sin(b)*sin(c)*cos(a) - sin(a)*cos(c))*sin(r2)*cos(r1) + sin(r1)*cos(a)*cos(b) - (ox - px)/d) - 2.*(sin(a)*sin(c)*sin(r2)*cos(b)*cos(r1) - sin(a)*cos(b)*cos(c)*cos(r1)*cos(r2) + sin(a)*sin(b)*sin(r1))*((sin(a)*sin(b)*cos(c) - sin(c)*cos(a))*cos(r1)*cos(r2) - (sin(a)*sin(b)*sin(c) + cos(a)*cos(c))*sin(r2)*cos(r1) + sin(a)*sin(r1)*cos(b) - (oy - py)/d);
g[8] += -2.*((sin(a)*sin(b)*cos(c) - sin(c)*cos(a))*sin(r2)*cos(r1) + (sin(a)*sin(b)*sin(c) + cos(a)*cos(c))*cos(r1)*cos(r2))*((sin(a)*sin(b)*cos(c) - sin(c)*cos(a))*cos(r1)*cos(r2) - (sin(a)*sin(b)*sin(c) + cos(a)*cos(c))*sin(r2)*cos(r1) + sin(a)*sin(r1)*cos(b) - (oy - py)/d) - 2.*((sin(b)*cos(a)*cos(c) + sin(a)*sin(c))*sin(r2)*cos(r1) + (sin(b)*sin(c)*cos(a) - sin(a)*cos(c))*cos(r1)*cos(r2))*((sin(b)*cos(a)*cos(c) + sin(a)*sin(c))*cos(r1)*cos(r2) - (sin(b)*sin(c)*cos(a) - sin(a)*cos(c))*sin(r2)*cos(r1) + sin(r1)*cos(a)*cos(b) - (ox - px)/d) + 2.*(sin(c)*cos(b)*cos(r1)*cos(r2) + sin(r2)*cos(b)*cos(c)*cos(r1))*(sin(c)*sin(r2)*cos(b)*cos(r1) - cos(b)*cos(c)*cos(r1)*cos(r2) + sin(b)*sin(r1) + (oz - pz)/d);
v += pow((sin(a)*sin(b)*cos(c) - sin(c)*cos(a))*cos(r1)*cos(r2) - (sin(a)*sin(b)*sin(c) + cos(a)*cos(c))*sin(r2)*cos(r1) + sin(a)*sin(r1)*cos(b) - (oy - py)/d,2.) + pow((sin(b)*cos(a)*cos(c) + sin(a)*sin(c))*cos(r1)*cos(r2) - (sin(b)*sin(c)*cos(a) - sin(a)*cos(c))*sin(r2)*cos(r1) + sin(r1)*cos(a)*cos(b) - (ox - px)/d,2.) + pow(sin(c)*sin(r2)*cos(b)*cos(r1) - cos(b)*cos(c)*cos(r1)*cos(r2) + sin(b)*sin(r1) + (oz - pz)/d,2.);


}

return v;

}

static int progress(
    void *instance,
    const lbfgsfloatval_t *x,
    const lbfgsfloatval_t *g,
    const lbfgsfloatval_t fx,
    const lbfgsfloatval_t xnorm,
    const lbfgsfloatval_t gnorm,
    const lbfgsfloatval_t step,
    int n,
    int k,
    int ls
    )
{
    printf("Iteration %d:\n", k);
    printf("  fx = %f, x[0] = %f, x[1] = %f\n", fx, x[0], x[1]);
    printf("  xnorm = %f, gnorm = %f, step = %f\n", xnorm, gnorm, step);
    printf("\n");
    return 0;
}

/*

var('ox,oy,oz')
o=vector([ox,oy,oz])
var('px,py,pz')
p=vector([px,py,pz])
var('r1 r2 a b c')

u1 = matrix([[Integer(Integer(1)),Integer(Integer(0)),Integer(Integer(0))],[Integer(Integer(0)),cos(r2), -sin(r2)],[Integer(Integer(0)),sin(r2),cos(r2)]]) * vector([sin(r1), Integer(0), cos(r1)])
u2 = matrix([[cos(a), -sin(a), Integer(Integer(0))],[sin(a), cos(a), Integer(Integer(0))],[Integer(Integer(0)),Integer(Integer(0)),Integer(Integer(1))]])*\
 matrix([[cos(b), Integer(0), sin(b)],[Integer(0),Integer(1),Integer(0)], [-sin(b), Integer(0), cos(b)]])*\
 matrix([[Integer(Integer(1)),Integer(Integer(0)),Integer(Integer(0))],[Integer(Integer(0)),cos(c), -sin(c)],[Integer(Integer(0)),sin(c),cos(c)]])*\
 u1
u3 = o-p
u3l = sqrt(u3.dot_product(u3))
u4 = u3 / u3l
ev = u4-u2
e=ev.dot_product(ev)

diff(e,px)
diff(e,py)
diff(e,pz)
diff(e,ox)
diff(e,oy)
diff(e,oz)
diff(e,a)
diff(e,b)
diff(e,c)
e
*/
