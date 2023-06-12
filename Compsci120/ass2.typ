#let title = [
    COMPSCI 120 – Assignment 4
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
		May 31, 2023
	]
]
#pagebreak()

#outline()

#pagebreak()

== Question 2
*(a)* Prove that $|x+3| + |x-7| gt.eq 10$ for every real number $x$.

For this enequality, we will have 3 cases. One when $x gt.eq 7$, another when $x lt.eq -3$, and another when $-3 < x < 7$. \

For $x gt.eq 7$, we know that both $x+3$ and $x-7$ will be positive. This means that: \
$x + 3 + x - 7 &gt.eq 10 \
2x - 4 &gt.eq 10 \
2x &gt.eq 14 \
x &gt.eq 7$ \
This is consistent with $x gt.eq 7$, so it is true for this case. \

For $x lt.eq -3$, we know that both $x+3$ and $x-7$ will be negative. This means that: \
$-(x+3) - (x-7) &gt.eq 10 \
-x -3 -x + 7 &gt.eq 10 \
-2x + 4 &gt.eq 10 \
-2x &gt.eq 6 \
x &lt.eq -3
$ \
This is consistent with $x lt.eq -3$, so it is true for this case. \

For $-3 < x < 7$, we know that $x+3$ will be positive and $x-7$ will be negative. This means that: \
$x+3 - (x-7) &gt.eq 10 \
x + 3 -x + 7 &gt.eq 10 \
10 &gt.eq 10$ \
This is always true, so we know that it is true for this case. \ 

Since we have proved the inequality holds for all 3 cases, we know that the inequality will hold for all real numbers $x$.

\ *(b)* Prove that if all the vertices in a graph $G$ have odd degree $x$, then the number of edges
in $G$ is a multiple of $x$.

Suppose our graph $G$ has $n$ vertices. \
If all of the vertices are of the same (odd) degree, $x$, then the sum of the degrees of all the vertices is $n dot.op x$. \

Claim 5.1 states that "Take any graph $G$. Then, the sum of the degrees of all of the vertices in $G$ is always two times the number of edges in $G$.". \

By Claim 5.1, the number of edges in $G$ is given by $(n dot.op x)/2$. \

Claim 7.3 states that "If $G$ is a graph, then $G$ must have an even number of vertices with odd degrees; that is, it is impossible to have a graph $G$ with an odd number of vertices with odd degrees.". \

Since every vertex of $G$ has an odd degree, by Claim 7.3 we then know that there are an even amount of vertices, that is, $n$ is even. This means that $n dot.op x$ will also be even, thus the number of edges, given by $(n dot.op x)/2$ is an integer. Therefore, the number of edges will be a multiple of $x$.

#pagebreak()

\ *(c)* Let $G$ be a connected graph with $n$ vertices, where $n > 1$. Prove that if no vertex in
$G$ has degree 1, then $G$ has at least $n$ edges.

We know $G$ is a connected graph with $n$ vertices, where $n > 1$ and every vertex has degree 1. \
If $G$ is connected and no vertex has degree $1$, every vertex must be of at least degree 2. \
Since every vertex is of at least degree 2, we can conclude that the sum of the degrees of all the vertices is at least $2 dot.op n$. \
Claim 5.1 states that "Take any graph $G$. Then, the sum of the degrees of all of the vertices in $G$ is always two times the number of edges in $G$.". \
By Claim 5.1, we can then conclude that the number of edges is half of the sum of the degrees of all the vertices in $G$. Since we know the sum of the degrees is at least $2 dot.op n$, the number of edges is at least $(2 dot.op n)/2 = n$. \
Therefore, if $G$ is a connected graph with $n$ vertices and no vertex in $G$ has degree 1, then $G$ has at least $n$ edges.

#pagebreak()
== Question 3
*(a)* Prove that there does not exist a smallest positive rational number.

Assume there is a smallest positive rational number, $n$. \
Since $n$ is rational, $n = p/q$ where $p,q in NN | q eq.not 0$ \
Let $m = p/(q+1)$ \
Since we are assuming $n$ to be the smallest rational number, we assume $n < m$. \
$
arrow.r.double p/q < p/(q+1) \
arrow.r.double p(q+1) < p q \
arrow.r.double p q + p < p q \
arrow.r.double p < 0
$
However we stated before that $p in NN$, thus $p lt.not 0$, meaning we have a contradiction and our assumption that $n < m$ is wrong. That means that $m$ is smaller than $n$ (as they obviously cannot be equal), and thus there is no smallest positive rational number.

\ *(b)* Consider a tree, $T$ . Prove that any edge added to $T$ must produce a cycle in $T$. 

Suppose you have a tree $T$, and a graph $H$, which is $T$ with any edge added. \
By theorem 6.3, we have that a tree $T$ is connected and has $n-1$ edges. \
Since our graph $H$ is our tree $T$ with any edge added, it means that $H$ has $n$ edges and is connected, and by theorem 6.3 this means that $H$ cannot be a tree. \
By theorem 6.2, this them means that there is not exactly one path between any two vertices in $H$. Since we know $H$ is connected, there must be at least more than one way to reach at 1 vertex in $H$, thus meaning $H$ contains a cycle.

\ *(c)* Prove or disprove the following statement: \
#align(center)[
    There is a graph $G$ with 10 vertices, in which every vertex has degree 4.
]

Create 2 rows of 5 nodes and connect every node to all 5 opposing nodes except the one directly opposite. This gives a graph with 10 vertices, in which every vertex is connected to 4 other vertices, and thus is of degree 4. \
#image("graph1.png", width: auto)

#pagebreak()

*(d)* Prove or disprove the following statement:
#align(center)[
    There is a binary tree $T$ of height 3 with 9 leaves.
]

To find the maximum number of leaves in a binary tree of height 3, we can add the maximum number of children (2) until we reach height 3. This will produce a (full) binary tree of height 3 containing $2^3 = 8$ leaves. Thus it is impossible to have a binary tree of height 3 with 9 leaves.

#image("graph2.PNG", width: auto)

#pagebreak()
== Question 4
*(a)* Prove that $9^(2n) - 1$ is divisible by 80 for any positive integer $n$.

Base case: $n = 1$ \
$9^(2(1)) - 1 &= 9^2 - 1 \
&= 81 - 1 = 80$. Thus the equation is true for the base case.

Assume $9^(2n) - 1$ is divisible by 80 for some $n = k$, where $k$ is a positive integer. \
$arrow.r.double 9^(2k) - 1$ is divisible by 80 \
$arrow.r.double 9^(2k) -1 = 80a$, where $a in NN$. \

We know that $9^(2n) - 1$ is divisible by 80 for any positive integer $n$ if we can prove that this equation holds for some $n = k + 1$ where $k$ is also a positive integer. \ \

$n = k + 1 \
arrow.r.double 9^(2(k+1)) - 1 &= 9^(2k + 2) - 1 \
&= 81 dot.op 9^(2k) - 1$ \
From our inductive hypothesis, \ 
$81 dot.op 9^(2k) - 1 &= 81 dot.op (80a + 1) - 1 \
&= 81 dot.op 80a + 81 - 1 \
&= 81 dot.op 80a + 80 \
&= 80(81a + 1)$ \
Therefore, we have $9^(2(k+1)) - 1$ is a multiple of 80 for $n = k + 1$. This means that it is divisible by 80, thus we can conclude that $9^(2n) - 1$ is divisible by 80 for any positive integer $n$.

\ *(b)* Let $a_1 = 1$ and, for every integer $n > 1$, define an by the recurrence relation:
#align(center)[
$a_(n+1) = (n + 1)^2 - a_n$
]
Prove that $a_n = n(n + 1)/2$ for every positive integer $n$.

Base case: $n = 1$ \
$a_1 &= (1(1+1))/2 \
&= (1(2))/2 \
&= 1$. Thus it holds for the base case. \

Assume $a_n = n(n + 1)/2$ for some $n = k$, where $k gt.eq 1$. \ 
$arrow.r.double a_k = k(k + 1)/2$ \ 
We also know that $a_(k+1) = (k + 1)^2 - a_k$. \
$arrow.r.double a_(k+1) = (k + 1)^2 - k(k + 1)/2$ \ \

We know that $a_n = n(n + 1)/2$ for positive integer $n$ if we can prove that this equation holds for some $n = k + 1$ where $k$ is also a positive integer. \ \

$n = k + 1 \
arrow.r.double a_((k+1) + 1) = ((k+1) + 1)^2 - a_(k+1) \
arrow.r.double a_(k+2) = (k+2)^2 - a_(k+1) \
$ \
From our inductive hypothesis, \
$a_(k+2) &= (k+2)^2 - ((k + 1)^2 - k(k + 1)/2) \
&= (k+2)^2 - (k + 1)^2 + k(k + 1)/2 \
&= k^2 + 4k + 4 - k^2 - 2k - 1 + k^2/2 + k/2 \
&= k^2/2 + (5k)/2 + 3 \
&= (k^2 + 5k + 6)/2 \
&= ((k+3)(k+2))/2 \
&= ((k+2)((k+2) + 1))/2
$ \
Therefore, the equation holds for $n = k + 1$, meaning that $a_n = n(n + 1)/2$ for every positive integer $n$.

\ *(c)* Prove that $n! > n^2$ for $n gt.eq 4$.

Base case: $n = 4$ \
$4! > 4^2 \
24 > 16$. Thus it holds for the base case \ 

Assume $n! > n^2$ for some $n = k$, where $k gt.eq 4$ \
$arrow.r.double k! > k^2$ \

We know that $n! > n^2$ for $n gt.eq 4$ if we can prove that this inequality holds for some $n = k + 1$ where $k gt.eq 4$. \ \
$n = k + 1 \
arrow.r.double (k+1)! > (k+1)^2 \
arrow.r.double (k+1)k! > (k+1)^2 \
$ \
From our inductive hypothesis, we know that
$(k+1)k! > (k+1)k^2$.  \ \
Assume $k^2 > k + 1$ \
$arrow.r.double k > 1 + 1/k$ \
Since $k gt.eq 4$, $arrow.r.double 1/k lt.eq 1/4$ \
$therefore 1 + 1/k lt.eq 1 + 1/4 < 2$ \ 
$arrow.r.double k > 2$ \
As $k gt.eq 4$, we know this is true, meaning $k^2 > k + 1$. \ \

$arrow.r.double (k+1)k! > (k+1)k^2 > (k+1)^2 \
arrow.r.double (k+1)k^2 > (k+1)^2 \
arrow.r.double k^2 > k + 1 \
$ \
We know this is true from the above proof, thus it holds that $(k+1)! > (k+1)^2$, and therefore $n! > n^2$ for all $n gt.eq 4$.