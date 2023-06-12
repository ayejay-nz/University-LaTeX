#let title = [
    MATHS 120 – Assignment 3
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
		June 4, 2023
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

#import "augmented_matrix.typ": amat, req

== Question One
_Consider the subset $B := {bold(b)_1, bold(b)_2, bold(b)_3} subset CC^3$_
$
bold(b)_1 := vec(-1, 0, 1), quad bold(b)_2 := vec(0, -1, 1), quad bold(b)_3 := vec(2i, 0, 1).
$
+ _Prove that $B$ is a basis for $CC^3$._\
	We know by Corollary 2.2.24, 3 vectors will be a basis for $CC^3$ if they are either linearly independent or span $CC^3$. \
	By definition 2.5.2, we also know that if the determinant of a matrix $= 0$, then at least two of the columns are equal. \ \
	Let $Z := mat(-1, 0, 2i; 
	0, -1, 0;
	1, 1, 1)$ \ \

	Now, if the determinant of $Z$ is non-zero, then we can be sure that the $b_1, b_2, b_3$ will be linearly independent, and thus $B$ is a basis for $CC^3$. \

	By Lemma 2.5.7: \
	$det(Z) &= det(mat(-1, 0, 2i; 
	0, -1, 0;
	1, 1, 1)) \ 
	&= det(mat(-1, 0, 2i; 
	0, -1, 0;
	0, 1, 1 + 2i)) \
	&= det(mat(-1, 0, 2i; 
	0, -1, 0;
	0, 0, 1 + 2i))
	$ \
	By Corollary 2.5.17, we can see the determinant is $1 + 2i$, thus the vectors are linearly independent, and $B$ is a basis for $CC^3$. 

+ _Let $l : B -> CC^2$ be the function defined by_
    $
    l(bold(b)_1) := vec(i, -1), quad l(bold(b)_2) := vec(0, 1 - 2i), quad l(bold(b)_3) := vec(2, -i),
    $
    _and let $L: CC^3 -> CC^2$ be its linear extension. Find an explicit formula for $L(bold(z))$, where $bold(z) := vec(z_1, z_2, z_3) in CC^3$ is arbitrary._\
	
	We can define $L(z)$ as: 
	$
	L(z = mat(z_1; z_2; z_3)) := (i x + 2y + 2z)/3 mat(i; -1) - y mat(0; 1 - 2i) + (- i x + y + z)/3 mat(2; -i)
	$

+ _Find the standard matrix of $L$._\
	
	The standard matrix for $L$ one where the columns are the images of the basis vectors under $L$. \
	$
	therefore mat(L) = mat((-1 - 2i)/3, (2i + 2)/3, (2i + 2)/3; (-1 - i)/3, (-5 - 5i)/3, (-2 - i)/3)
	$

+ _Let $T: CC^2 -> CC^2$ be the linear map whose standard matrix is_ 
	$
	mat(T) = mat(-i, 1; 0, 2 - 2i)
	$
	_Find the standard matrix of $T circle.small L$._
	
	The standard matrix of the composition of $T$ and $L$ is the product of the standard matrices of $T$ and $L$.

#pagebreak()

== Question Two
_Let $T: RR^n -> RR^n$ be a linear map map. For each of the follow, either prove or disprove:_
+	_If for all $bold(u) in RR^n$ we have $norm(T(bold(u))) = norm(bold(u))$, then $T$ is injective._\
	
	For $T$ to be injective, $K e r(T) = {0}$ \

	$norm(T(u)) &= norm(u) \
	arrow.r.double norm(0) &= norm(u) \
	arrow.r.double u &= 0
	$ \
	Hence, ${u in RR^n | T(u) = 0}$, thus the statement that $T$ is injective is true

+ _The converse of part (a)._\
	
	The converse of part (a) is, If $T$ is injective, for every $u in RR^n$ we have $norm(T(u)) = norm(u)$ \
	Take $T: RR^2 arrow.r RR^2$, where $T$ is defined as $T(x, y) = (2x, 2y)$. \
	$arrow.r.double norm(T(x,y)) &= norm((2x, 2y)) \
	&= norm(2(x, y)) \
	&= 2 norm((x, y)) #text("by Proposition 2.2.41") \
	therefore norm(T(x, y)) = 2 norm(u) quad forall u in RR
	$ \
	Thus the converse is false.

#pagebreak()

== Question Three
_We define two new operations on complex matrices. Let $A in text("Mat")_(m times n)(CC).$_\
- _The complex conjugate matrix $overline(A)$ is defined entrywise, i.e._ $ \[ overline(A) \]_(i j) := overline(A_(i j)). $
- $A^dagger := overline(A)^top$

_Consider the complex matrix_
$
U := lambda mat(1, 1, 0; -i, i, 0; 0, 0, sqrt(2)i),
$
_where $lambda in CC$._

+ _Find $U^dagger$._\
	
	First, transpose $U$, \
	$U^top = lambda mat(1, -i, 0; 1, i, 0; 0, 0, sqrt(2) i)$ \
	Now we can find the complex conjugate of $U^top$, \
	$overline(U)^top = overline(lambda) mat(1, i, 0; 1, -i, 0; 0, 0, -sqrt(2) i)$

+ _Find all complex scalars $lambda in CC$ such that $U^dagger = U^(-1)$._\

	#align(center)[
	$
	U^dagger &= U^(-1) \
	arrow.r.double U^dagger U &= I #text(",where ") I #text("is the identity matrix") \
	arrow.r.double (overline(lambda) mat(1, i, 0; 1, -i, 0; 0, 0, -sqrt(2)i))(lambda mat(1, 1, 0; -i, i, 0; 0, 0, sqrt(2)i)) &= mat(1, 0, 0; 0, 1, 0; 0, 0, 1) \
	arrow.r.double overline(lambda) lambda mat(2, 0, 0; 0, 2, 0; 0, 0, 2) &= mat(1, 0, 0; 0, 1, 0; 0, 0, 1) \
	arrow.r.double 2 |lambda|^2 &= 1 \
	arrow.r.double |lambda|^2 &= 1/2 \
	arrow.r.double |lambda| &= 1/sqrt(2)
	$ 
	] 
	Since $lambda$ is a complex scalar, $lambda$ is every complex number $1/sqrt(2)$ away from the origin. \
	Suppose $lambda = a + b i$, where $a, b in RR$ \
	$therefore |lambda| = |a + b i| = 1/sqrt(2)$ \ \
	$arrow.r.double a^2 + b^2 &= lambda^2 \
	arrow.r.double a^2 + b^2 &= 1/2 \
	arrow.r.double b^2 &= 1/2 - a^2 \
	arrow.r.double b = plus.minus sqrt(1/2 - a^2) \
	therefore lambda = a plus.minus sqrt(1/2 - a^2)
	$
	
#pagebreak()

== Question Four
_Let $u, v in RR^n$ be arbitrary vectors, and let $A : ≡ [u, v]$ be the matrix with columns $u$ and $v$. Show that_ \
$
sqrt(det(A^top A)) = norm(u)norm(v)sin(angle_(u, v)),
$ \ 
_where $angle_(u, v)$ is the angle between the vectors $u$ and $v$._ \

#align(center)[
	$
	A^top A &= [u, v]^top [u, v] \
	&= mat(u dot.op u quad, u dot.op v; u dot.op v quad, v dot.op v) \
	therefore det(A^top A) &= det(mat(u dot.op u quad, u dot.op v; u dot.op v quad, v dot.op v)) \
	&= (u dot.op u)(v dot.op v) - (u dot.op v)^2 \
	&= norm(u)^2 norm(v)^2 - (norm(u)norm(v)cos(angle_(u, v)))^2 \
	&= norm(u)^2 norm(v)^2 - (norm(u)norm(v))^2(cos(angle_(u, v)))^2 \
	&= norm(u)^2 norm(v)^2(1 - cos(angle_(u, v)))^2 \
	&= norm(u)^2 norm(v)^2 sin^2(angle_(u, v)) \
	therefore sqrt(det(A^top A)) &= sqrt(norm(u)^2 norm(v)^2 sin^2(angle_(u, v))) \
	&= norm(u)norm(v)sin(angle_(u, v)) 
	$
]