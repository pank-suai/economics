#import "lib/ilm.typ": *

#set text(lang: "ru")
#set math.equation(numbering: "1")

#show ref: it => {
  lower(it)
}


#show: ilm.with(
  title: [Экономика],
  author: 
    "Панков Василий <pank-su>",
  author-format: (author) => [
    #stack(dir: ltr)[#block(
        image("src/images/000_avatar.png", width: 3em, height: 3em),
        radius: 50%,
        clip: true,
      )][#h(1em)][#text(author, size: 1.6em)]
  ],
  date: datetime.today(),
  abstract: [],
  table-of-contents: outline(depth: 2),
    external-link-circle: false,
    chapter-pagebreak: false
)

#include "src/000_введение.typ"
#include "src/001_методы.typ"
#include "src/002_экономические_законы.typ"
#include "src/003_кривая_производственных_возможностей.typ"
#include "src/004_производство_товар.typ"
#include "src/005_блага.typ"
#include "src/006_деньги.typ"
#include "src/007_капитал.typ"


/*
==============================================================================
                          Далее идут приложения
==============================================================================
*/


#set heading(numbering: (..nums) => {
  if nums.pos().len() == 1 {
    return "Приложение " + numbering("A.", ..nums)
  }
  return numbering("A.1.", ..nums)
})

#counter(heading).update(0)

