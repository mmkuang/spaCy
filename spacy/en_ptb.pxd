from libcpp.vector cimport vector

from spacy.spacy cimport StringHash
from spacy.spacy cimport Language
from spacy.spacy cimport Lexeme
from spacy.spacy cimport Lexeme_addr
from spacy.tokens cimport Tokens


cdef class EnglishPTB(Language):
    cdef int find_split(self, unicode word, size_t length)
    

cdef EnglishPTB EN_PTB

cpdef Lexeme_addr lookup(unicode word) except 0
cpdef Tokens tokenize(unicode string)
cpdef unicode unhash(StringHash hash_value)