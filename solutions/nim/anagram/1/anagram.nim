import sequtils
import strutils
import algorithm

proc detectAnagrams*(word: string, candidates: openArray[string]): seq[string] =
  let word = word.toLower
  candidates.filterIt(word != it.toLower and
    word.sorted == it.toLower.sorted)
