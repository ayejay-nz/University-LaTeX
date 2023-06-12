#let line_end(ident, ..args) = {
    let end_label = label("line_end_" + ident)

    show end_label: locate(loc => {
        let end = loc.position()
        let begin_label = label("line_begin_" + ident)
        let start = query(selector(begin_label).before(loc), loc).last().location().position()
        box(place(line(end: (start.x - end.x, start.y - end.y), ..args)))
    })

    [#box()#end_label]
}

#let line_begin(ident) = [#box()#label("line_begin_" + ident)]

#let amat(..elems, split: -1, delim: "[") = {
    elems = elems.pos()
    for i in range(elems.len()) {
        elems.at(i).insert(split, sym.space)
    }
    if split < 0 { split -= 1 }
    elems.at(0).at(split) = math.attach(math.limits(hide[A]), t: line_begin("augmat"))
    elems.at(-1).at(split) = math.attach(math.limits(hide[A]), b: line_end("augmat", stroke: 0.7pt))
    math.mat(..elems, delim: delim)
}

// used when doing row equivalent to keep the row equiv sign in-line with the previous line
#let dirty-hack(content) = box(width:0pt,box(baseline: 1e-16pt,width:10cm,align(left,content)))

// "row equivalent" function
#let req(content) = align(right, [\ #rotate(90deg, "~") #dirty-hack[ #content]\ ])
