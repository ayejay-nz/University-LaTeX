#let title = [
    MATHS 130 – Assignment 3
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
		June 1, 2023
	]
]
#pagebreak()

#outline()

#pagebreak()

== Question 1
Consider the equation $f(x) = 0$, on $RR$, where \ 
#align(center)[
    $f(x) := 7x^3 + 2x - sin(x) - 1$. \
]
*(a)* Prove that there is at least one solution to the equation.
\ *(b)* Use the mean value theorem to prove that there is only one solution.

#pagebreak()
== Question 2
Determine whether the function \
#align(center)[
    $h(x) = 1/(x^2 - 4x)$
]
has any absolute extrema on the interval $(0, 4)$. If there are, find them and state where they
occur, otherwise prove that there are none.

#pagebreak()
== Question 3
Consider the function of two real variables given by the formula \
#align(center)[
    $f(x,y) = 1/(sqrt(x^2 - 9y^2))$
]

*(a)* Determine the natural domain on $f$.
\ *(b)* Determine and sketch the level curves of $f$ for the values $k = 0$, and $k = 1$.
\ *(c)* Compute the gradient $nabla f$ at a general point $(x, y)$ and then at the point $(4, 1)$.
\ *(d)* Compute the directional derivative of $f$ at $(4, 1)$ in the direction of the vector $u = (9, 4)$.
\ *(e)* At the point $(4, 1)$ find the unit vector of a direction in which the function increases most
rapidly. \
What is the directional derivative in that direction?

#pagebreak()
== Question 4
Consider the integral \
#align(center)[
    $
    g(x) := integral_(-7)^(x) abs(t)^(1/2) dot.op e^(t^2) dif t
    $
]

*(a)* Without calculating it, explain why $g'(x)$ exists for all $x in RR$.
\ *(b)* Compute $g'(x)$, naming any results/theorems that you use.
\ *(c)* Use the mean value theorem to prove that $g$ is strictly increasing on $RR$.
\ *(d)* Use *proof by contradiction* to prove that the second derivative of $h$ does not exist at $0$.
