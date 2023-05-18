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
#set math.mat(delim: "[")

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

+ What is $S_1$?
+ What is $S_2$?
+ What is $S_1 sect S_2$?

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
where $a_(i j) in CC, b_(i) in CC$ for $1 lt.eq i lt.eq m$ and $i lt.eq j lt.eq n$. Let $S subset.eq C^(n)$ denote the set of solutions to this linear system.

+ If $vec(b_(1), dots.v, b_(m)) eq 0$, prove that $S$ is a linear subspace. \ \
+ If $vec(b_(1), dots.v, b_(m)) eq.not 0$, prove that $S$ is not a linear subspace.

#pagebreak()

= Question Three
Let $X :ident {v_1, v_2, v_3, v_4}$ where \
#align(center)[$
v_1 :ident vec(1, 0, 2), v_2 :ident vec(0, i, -1), v_3 :ident vec(0, -3i, 1), v_4 :ident vec(1, 2-2i, i).
$]
+ Show that span($X$) = $CC^3$.
+ Is $X$ linearly independent? If not, pick one of the vectors in $X$ and write it as a linear combination of the other vectors in $X$.
+ Find a subset $B subset.eq X$ which is a basis for $CC^(3)$. 
+ Express an arbitrary vector $vec(x, y, z) in CC^3$ as a linear combination of the basis $B$ that you found above.

#pagebreak()

= Question Four
Consider the following points in $RR^3$
#align(center)[$
upright(r)_(0) :ident vec(-1, 1, 2), upright(r)_(1) :ident vec(0, 1, 2), upright(R)_(0) :ident vec(1, -1, 3), upright(R)_(1) :ident vec(-1, 0, 3), upright(R)_(2) :ident vec(1, -1, -2).
$]
+ Find a parametric equation for the line $L$ containing the points $r_(0)$ and $r_(1)$.
+ Find a parametric equation for the plane $P$ containing the points $upright(R)_(0), upright(R)_(1), upright(R)_(2)$.
+ Find the set of points where $L$ and $P$ intersect.