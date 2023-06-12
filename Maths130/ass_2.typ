#let title = [
    MATHS 120 – Assignment 2
]
#let author = [Aidan Webster]
#let email = link("mailto:aweb904@aucklanduni.ac.nz")

#let pageNumbers(nums) = {

}

// create header of document and number each page
#set page(
    header: align(right + horizon)[
        #title – #author
    ],
    numbering: 		
		(..nums) => {
			let pageNumber = nums
				.pos()
				.at(0)
			// Make coverpage number blank
			if (pageNumber == 1) {
				return
			}
			// Set contents page to "i"
			if (pageNumber == 2) {
				"i"		
			} else {
				pageNumber - 2
			}
		}
	
)

#align(horizon)[
	// display title
	#align(center, text(24pt)[
		*#title*
	])
	// display subtitle
	#align(center, text(18pt)[
		University of Auckland
	])

	// display author
	#grid(
		columns: (1fr, 1fr),
		align(center)[
			#author
		],
		align(center)[
			#email
		]
	)
	#align(center)[
		May 19, 2023
	]
]
#pagebreak()

#outline()

#pagebreak()

// set numbering system for numeric lists
#set enum(
	numbering: "(a)",
)

#set math.vec(delim: "[")
#set math.mat(delim: none)

= Question One
Let $S_1 subset.eq RR^3$ be the set of solutions to the following linear system: 
#align(center)[$
3x + 2y + z = 10 \ 
x - y - z = -4
$]
and $S_2 subset.eq RR^3$ be the set of solutions to this one:
#align(center)[$
x + y + z = 6 \
3x - 2y + z = 2
$]

*(a)* What is $S_1$? \
#align(center)[$
3x + 2y + z = 10 \ 
x - y - z = -4 \
arrow.b.double \
3x + 2y + z = 10 \
4x + y = 6 \
arrow.b.double \
3x + 2y + z = 10 \
5x - z = 2 \
$]
Now we have an equation for both $y$ and $z$ in terms of $x$. \
Let $t$ be a parameter which can take any real value \
Let $x = t$ \
$arrow.r.double 4t + y = 6 \
arrow.r.double y = 6 - 4t \
arrow.r.double 5t - z = 2 \
arrow.r.double z = 5t - 2$ \
Since we have all 3 variables in terms of $t$ we can find $S_(1)$ in terms of $t$. \
$therefore S_(1) = vec(t, 6 - 4t, 5t - 2)$

\
*(b)* What is $S_2$? \
#align(center)[$
x + y + z = 6 \
3x - 2y + z = 2 \
arrow.b.double \
x + y + z = 6 \
2x - 3y = -4 \
arrow.b.double \
x + y + z = 6 \
5x + 3z = 14 \
$]
Now we have an equation for both $y$ and $z$ in terms of $x$. \
Let $t$ be a parameter which can take any real value \
Let $x = t$ \
$arrow.r.double 2t - 3y = -4 \
arrow.r.double y = (2t + 4)/(3) \
arrow.r.double 5t + 3z = 14 \
arrow.r.double z = (14 - 5t)/(3)$ \
Since we have all 3 variables in terms of $t$ we can find $S_(2)$ in terms of $t$. \
$therefore S_(2) = vec(t, (2t + 4)/(3), (14 - 5t)/(3))$
\
*(c)* What is $S_1 sect S_2$? \
The intersection between $S_(1)$ and $S_(2)$ will be the points that satisfy both $S_(1)$ and $S_(2)$. \
That is, $S_(1) = S_(2)$
$arrow.r.double vec(t, 6 - 4t, 5t - 2) = vec(t, (2t + 4)/(3), (14 - 5t)/(3))$.
This gives us 3 equations, 
#align(center)[$
t = t \
6 - 4t = (2t + 4)/(3) \
5t - 2 = (14 - 5t)/(3) \
arrow.b.double \
t = t \
18 - 12t = 2t + 4 \
15t - 6 = 14 - 5t \
arrow.b.double \
t = t \
14 = 14t \
20t = 20
$]
The only values for $t$ that satisfy this system is $1$. This means that $S_(1) = S_(2)$ when $t = 1$. \
$therefore S_1 sect S_2 &= vec(1, 6 - 4(1), 5(1) - 2) \
&= vec(1, 2, 3) \
$
#align(right)[
	$square$
]

#pagebreak()

= Question Two 
Let $V$ be a vector space. Recall that a subset $S subset.eq V$ is said to be a *linear subspace* of $V$ if it satisfies the following properties:
#list(
	indent: 12pt,
	[$0 in S$;],
	[For all $u, v in S$, we have $u + v in S$;],
	[For all $u in S$ and all scalars $a$, we have $a u in S.$]
)
Consider the linear system 
#align(center)[$
a_(11) x_(1) + dots.h + a_(1n) x_(n) = b_(1) \
dots.v \
a_(m 1) x_(1) + dots.h + a_(m n) x_(n) = b_(m)
$] 
where $a_(i j) in CC, b_(i) in CC$ for $1 lt.eq i lt.eq m$ and $i lt.eq j lt.eq n$. Let $S subset.eq CC^(n)$ denote the set of solutions to this linear system.

*(a)* If $vec(b_(1), dots.v, b_(m)) eq 0$, prove that $S$ is a linear subspace. \ \
If the vector $vec(b_(1), dots.v, b_(m)) eq 0$, that means the system of equations is homogenous, that is, all equations are equal to 0. 
#align(center)[$
a_(11) x_(1) + dots.h + a_(1n) x_(n) = 0 \
dots.v \
a_(m 1) x_(1) + dots.h + a_(m n) x_(n) = 0
$] 
Now we need to show that the solution set, $S$, satisfies the properties of a linear subspace. \
 - *0 $in$ $S$*: If we substitute in $x_(1) = x_(2) = dots.h = x_(n) = 0$ into any of the equations, we get $0 = 0$ as a result. Since this is true, we have $0$ as a solution, thus $0 in S$. 
 - *For all $u, v in S$, we have $u + v in S$*: Suppose we take two vectors $u, v$ from $S$. By definition, these two vectors satisfy all equations in the system. Thus we can write 
#align(center)[$
a_(11) u + dots.h + a_(1n) u = 0 \
dots.v \
a_(m 1) u + dots.h + a_(m n) u = 0
$] 
and
#align(center)[$
a_(11) v + dots.h + a_(1n) v = 0 \
dots.v \
a_(m 1) v + dots.h + a_(m n) v = 0
$] 
If we add $u$ and $v$ and substitute it into the system, we get 
#align(center)[$
a_(11) (u + v) + dots.h + a_(1n) (u + v) = 0 \
dots.v \
a_(m 1) (u + v) + dots.h + a_(m n) (u + v) = 0 \
arrow.b.double \
a_(11) u + a_(11) v + dots.h + a_(1n) u + a_(1n) v = 0 \
dots.v \
a_(m 1) u + a_(m 1) v + dots.h + a_(m n) u + a_(m n) v = 0 \
arrow.b.double \
(a_(11) u + dots.h + a_(1n) u) + (a_(11) v + dots.h + a_(1n) v) = 0 \
dots.v \
(a_(m 1) u + dots.h + a_(m n) u) + (a_(m 1) v + dots.h + a_(m n) v)= 0 \
arrow.b.double \
0 + 0 = 0 \
dots.v \
0 + 0 = 0 \
arrow.b.double \
0 = 0 \
dots.v \
0 = 0
$] 
 Since we get 0 = 0 for every equation in the system, we know that $u + v$ must also be a solution, and thus $u + v in S$.

 - *For all $u in S$ and all scalars $a$, we have $a u in S$*: Suppose we take a vector $u$ from $S$, and we have a scalar $a$. By definition $u$ satisfies every equation in the system. Thus, we can write 
 #align(center)[$
a_(11) u + dots.h + a_(1n) u = 0 \
dots.v \
a_(m 1) u + dots.h + a_(m n) u = 0
$] 
 If we multiply our vector $u$ by our scalar $a$ and substitute it into the system we get
 #align(center)[$
a_(11) a u + dots.h + a_(1n) a u = 0 \
dots.v \
a_(m 1) a u + dots.h + a_(m n) a u = 0 \
arrow.b.double \
a(a_(11) u + dots.h + a_(1n) u) = 0 \
dots.v \
a(a_(m 1) u + dots.h + a_(m n) u) = 0 \
arrow.b.double \
a(0) = 0 \
dots.v \ 
a(0) = 0 \
arrow.b.double \
0 = 0 \
dots.v \
0 = 0
$] 
Since we get $0 = 0$ for every equation in the system, we know that $a u$ must also be a solution to the system, thus $a u in S$. \

Since every property for linear subspaces is satisfied, we can say that $S$ is a linear subspace of $V$ when $vec(b_(1), dots.v, b_(m)) eq 0$

\
*(b)* If $vec(b_(1), dots.v, b_(m)) eq.not 0$, prove that $S$ is not a linear subspace. \ \
If the vector $vec(b_(1), dots.v, b_(m)) eq.not 0$, that means the system of equations is non-homogenous, that is, at least one of the equations is not equal to 0. 
#align(center)[$
a_(11) x_(1) + dots.h + a_(1n) x_(n) = b_(1) \
dots.v \
a_(m 1) x_(1) + dots.h + a_(m n) x_(n) = b_(m)
$] 
Now we need to show that the solution set, $S$, does not satisfy all the properties of a linear subspace.
 - *0 $in$ $S$*: If we substitute in $x_(1) = x_(2) = dots.h = x_(n) = 0$ into any of the equations, we get $0 = b_(i)$, for some $i$. This is not true, as $b_(i) eq.not 0$. Therefore $0$ is not a solution, thus $0 in.not S$. 
$therefore$ $S$ is not a linear subspace of $V$ as it does not satisfy the first property of a linear subspace.

#pagebreak()

= Question Three
Let $X :ident {v_1, v_2, v_3, v_4}$ where \ 
#align(center)[$
v_1 :ident vec(1, 0, 2), v_2 :ident vec(0, i, -1), v_3 :ident vec(0, -3i, 1), v_4 :ident vec(1, 2-2i, i).
$]
*(a)* Show that span($X$) = $CC^3$. \
#align(center)[
	Let $z = vec(z_(1), z_(2), z_(3)) in CC^3$ \
	Suppose $z = c_(1) v_(1) + c_(2) v_(2) + c_(3) v_(3) + c_(4) v_(4) | c_(1), c_(2), c_(3), c_(4) in RR$ \ \
	$arrow.r.double vec(z_(1), z_(2), z_(3)) = c_(1) vec(1, 0, 2) + c_(2) vec(0, i, -1) + c_(3) vec(0, -3i, 1) + c_(4) vec(1, 2-2i, i)$

	$arrow.r.double
	lr([
		mat(1, 0, 0, 1;
			0, i, -3i, 2 - 2i;
			2, -1, 1, i
		)
		#colbreak()
		lr(|
		#colbreak()
			mat(z_(1);
				z_(2);
				z_(3)
			)
		)
	])
	$

	$arrow.r.double
	lr([
		mat(1, 0, 0, 1;
			0, i, -3i, 2 - 2i;
			0, -1, 1, -2 + i
		)
		#colbreak()
		lr(|
		#colbreak()
			mat(z_(1);
				z_(2);
				-2 z_(1) + z_(3)
			)
		)
	]) (R_3 = R_3 - 2R_1)
	$

	$arrow.r.double
	lr([
		mat(1, 0, 0, 1;
			0, 1, -3, -2 - 2i;
			0, -1, 1, -2 + i
		)
		#colbreak()
		lr(|
		#colbreak()
			mat(z_(1);
				-i z_(2);
				-2 z_(1) + z_(3)
			)
		)
	]) (R_2 = -i R_2)
	$

	$arrow.r.double
	lr([
		mat(1, 0, 0, 1;
			0, 1, -3, -2 - 2i;
			0, 0, -2, -4 - i
		)
		#colbreak()
		lr(|
		#colbreak()
			mat(z_(1);
				-i z_(2);
				-2 z_(1) -i z_(2) + z_(3)
			)
		)
	]) (R_3 = R_3 + R_2)
	$

	$arrow.r.double
	lr([
		mat(1, 0, 0, 1;
			0, 1, -3, -2 - 2i;
			0, 0, 1, 2 + i/2
		)
		#colbreak()
		lr(|
		#colbreak()
			mat(z_(1);
				-i z_(2);
				z_(1) + i/2 z_(2) - 1/2 z_(3)
			)
		)
	]) (R_3 = - 1/2 R_(3))
	$

	$arrow.r.double
	lr([
		mat(1, 0, 0, 1;
			0, 1, 0, 4 - 1/2 i;
			0, 0, 1, 2 + i/2
		)
		#colbreak()
		lr(|
		#colbreak()
			mat(z_(1);
				3 z_(1) + i/2 z_(2) - 3/2 z_(3);
				z_(1) + i/2 z_(2) - 1/2 z_(3)
			)
		)
	]) (R_2 = R_2 + 3 R_3)
	$
]
Hence we have a free variable, $c_(4)$, and leading variables $c_(1), c_(2), c_(3)$. \
Let $t = c_(4)$ \
$c_3 + (2+i/2)t &= z_1 + i/2 z_2 - 1/2 z_3 \
c_3 &= z_1 + i/2 z_2 - 1/2 z_3 - 2t - i/2 t
$ \
$c_2 + (4 - 1/2 i)t &= 3 z_1 + i/2 z_2 - 3/2 z_3 \
c_2 &= 3 z_1 + i/2 z_2 - 3/2 z_3 - 4 t + i/2 t
$ \
$c_1 + t &= z_1 \
c_1 &= z_1 - t
$ \
Hence
#align(center)[
$vec(z_1, z_2, z_3) = (z_1 - t) vec(1, 0, 2) + (3 z_1 + i/2 z_2 - 3/2 z_3 - 4 t + i/2 t) vec(0, i, -1) + (z_1 + i/2 z_2 - 1/2 z_3 - 2t - i/2 t) vec(0, -3i, 1) + t vec(1, 2 - 2i, i)$
]
for any $t in CC$, thus $X$ spans $CC^3$.

\
*(b)* Is $X$ linearly independent? If not, pick one of the vectors in $X$ and write it as a linear combination of the other vectors in $X$. \

$X$ is not linearly independent because there is a free variable, $c_(4)$, from the solution in a. This means we are able to obtain the zero vector in a non-unique way.

#align(center)[
	$arrow.r.double
	lr([
		mat(1, 0, 0;
			0, i, -3i;
			2, -1, 1
		)
		#colbreak()
		lr(|
		#colbreak()
			mat(1; 2-2i; i;
		))
	])
	$

	$arrow.r.double
	lr([
		mat(1, 0, 0;
			0, i, -3i;
			0, -1, 1
		)
		#colbreak()
		lr(|
		#colbreak()
			mat(1; 
			2-2i; 
			-2 + i;
		))
	]) (R_3 = R_3 - 2 R_1)
	$

	$arrow.r.double
	lr([
		mat(1, 0, 0;
			0, 1, -3;
			0, -1, 1
		)
		#colbreak()
		lr(|
		#colbreak()
			mat(1; 
			-2-2i; 
			-2 + i;
		))
	]) (R_2 = -i R_2)
	$

	$arrow.r.double
	lr([
		mat(1, 0, 0;
			0, 1, -3;
			0, 0, -2
		)
		#colbreak()
		lr(|
		#colbreak()
			mat(1; 
			-2-2i; 
			-4 - i;
		))
	]) (R_3 = R_3 + R_2)
	$

	$arrow.r.double
	lr([
		mat(1, 0, 0;
			0, 1, -3;
			0, 0, 1
		)
		#colbreak()
		lr(|
		#colbreak()
			mat(1; 
			-2-2i; 
			2 + i/2;
		))
	]) (R_3 = -1/2 R_3)
	$

	$arrow.r.double
	lr([
		mat(1, 0, 0;
			0, 1, 0;
			0, 0, 1
		)
		#colbreak()
		lr(|
		#colbreak()
			mat(1; 
			4 - i/2; 
			2 + i/2;
		))
	]) (R_2 = R_2 + 3 R_3)
	$
]
Therefore, we have that $c_(1) = 1, c_(2) = 4 - i/2, c_(3) = 2 + i/2$. \
This means that \
$v_(4) = c_(1) v_(1) + c_(2) v_(2) + c_(3) v_(3) \
v_(4) = 1 v_(1) + (4 - i/2) v_(2) + (2 + i/2) v_(3)
$ \
Thus $v_(4)$ is a linear combination of the other vectors, $v_(1), v_(2), v_(3)$

\
*(c)* Find a subset $B subset.eq X$ which is a basis for $CC^(3)$. \
To find the basis, we only have to look at $v_(1), v_(2), v_(3)$, as $v_4$ is a free variable. That is, $B : ident {v_(1), v_(2), v_(3)} subset.eq X$. \
To prove $B$ is a basis for $X$, we need to show that $v_(1), v_(2), v_(3)$ spans $X$ or is linearly independent as $B$ contains $3$ vectors and is in $CC^3$ (By Corollary 2.2.24). However, we know $v_(1), v_(2), v_(3)$ is linearly independent as the only linear combination which yields the zero vector is the trivial one (Definition 2.2.15). This is because each equations pivot is exactly $1$, the pivots are the only non-zero entry in the column (reduced echelon form), and there is no free variables. This means there is no way to construct the zero vector besides the trivial method and thus $B$ is a basis for $CC^3$.

\
*(d)* Express an arbitrary vector $vec(x, y, z) in CC^3$ as a linear combination of the basis $B$ that you found above. \

From the coefficents from part (a), we have
#align(center)[
$vec(x, y, z) = x vec(1, 0, 2) + (3 x + i/2 y - 3/2 z) vec(0, i, -1) + (x + i/2 y - 1/2 z) vec(0, -3i, 1)$
]

as an expression for an arbitrary vector in $CC^3$. $(x = z_1, y = z_2, z = z_3)$

#pagebreak()

= Question Four
Consider the following points in $RR^3$
#align(center)[$
upright(r)_(0) :ident vec(-1, 1, 2), upright(r)_(1) :ident vec(0, 1, 2), upright(R)_(0) :ident vec(1, -1, 3), upright(R)_(1) :ident vec(-1, 0, 3), upright(R)_(2) :ident vec(1, -1, -2).
$]
*(a)* Find a parametric equation for the line $L$ containing the points $upright(r)_(0)$ and $upright(r)_(1)$.\
By Example 2.2.30, we know that if we have two points $u, w in RR^(n)$, then ${lambda (u - w) + w: lambda in RR}$ represents a unique line through $u$ and $w$. \
Therefore, the line $L$ containing points $upright(r)_(0)$ and $upright(r)_(1)$ can be expressed as 
#align(center)[$
	{lambda (upright(r)_(0) - upright(r)_(1)) + upright(r)_(1): lambda in RR} &= {lambda (vec(-1, 1, 2) - vec(0, 1, 2)) + vec(0, 1, 2): lambda in RR} \
	&= {lambda vec(-1, 0, 0) + vec(0, 1, 2): lambda in RR} \
	&= {vec(-lambda, 1, 2): lambda in RR}
$]
\ \

*(b)* Find a parametric equation for the plane $P$ containing the points $upright(R)_(0), upright(R)_(1), upright(R)_(2)$. \
By Example 2.2.32, we know that if we have three points $u, v, w in RR^(n)$, then ${lambda (u - w) + mu (v - w) + w : lambda, mu in RR}$ represents a unique plane through all three points (provdided they are not colinear). \
Therefore, the plane $P$ can be represented as 
#align(center)[$
	{lambda (upright(R)_(0) - upright(R)_(2)) + mu (upright(R)_(1) - upright(R)_(2)) + upright(R)_(2) : lambda, mu in RR}$ \ \
	$= {lambda (vec(1, -1, 3) - vec(1, -1, -2)) + mu (vec(-1, 0, 3) - vec(1, -1, -2)) + vec(1, -1, -2) : lambda, mu in RR} \
	&= {lambda vec(0, 0, 5) + mu vec(-2, 1, 5) + vec(1, -1, -2) : lambda, mu in RR} \
	&= {vec(-2 mu + 1, mu - 1, 5 lambda + 5 mu - 2) : lambda, mu in RR}
$]
\ \
*(c)* Find the set of points where $L$ and $P$ intersect. \
$L$ and $P$ will intersect when they are equal. \
#align(center)[
	$L &= P \
	{vec(-lambda_(1), 1, 2): lambda_(1) in RR} &= {vec(-2 mu + 1, mu - 1, 5 lambda_(2) + 5 mu - 2) : lambda_(2), mu in RR}$ \
	This gives us 3 equations: \ \
	$-lambda_(1) = -2 mu + 1 arrow.r.double lambda_(1) = 2 mu - 1 \
	1 = mu - 1 arrow.r.double mu = 2 \
	2 = 5 lambda_(2) + 5 mu - 2 \
	arrow.b.double \
	lambda_(1) = 2 (2) - 1 \
	2 = 5 lambda_(2) + 5(2) - 2 \ 
	arrow.b.double \
	lambda_(1) = 3 \
	lambda_(2) = -6/5 
	$ \
	Therefore the plane $P$ and line $L$ will intercept at $vec(-3, 1, 2)$.
]
