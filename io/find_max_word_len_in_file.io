file := File clone openForReading("words.txt")
words := file readLines
file close

// words println

maxLen := 0
orderedWords := list()
words foreach(word,
    if( (word size >= maxLen) and (word == (word asMutable sort)),
        if( word size > maxLen,
            maxLen = word size
            orderedWords empty
        )
        orderedWords append(word)
    )
)
 
orderedWords join(" ") println