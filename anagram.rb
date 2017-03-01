def canonical(word)
  word.downcase.split(//).sort
end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

def anagrams_for(word, dicc)
  dicc.select {|w| canonical(w) == canonical(word)}
end

p are_anagrams?("lApapa", "palapa")
p are_anagrams?("osos", "soso")
p are_anagrams?("moco", "coco")

p anagrams_for("casa", ["acas", "adca", "masa", "saca", "asca"])
p anagrams_for("patas", ["pasto", "pasti", "aptas", "patas", "tapas"])