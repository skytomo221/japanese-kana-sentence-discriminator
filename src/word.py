from enum import IntEnum, unique

# [MeCabの公式サイト](https://taku910.github.io/mecab/#usage-tools)より
#
# > 出力フォーマットは, ChaSen のそれと大きく異なります。 左から,
# > `表層形\t品詞,品詞細分類1,品詞細分類2,品詞細分類3,活用型,活用形,原形,読み,発音`
# > となっています。


@unique
class Feature(IntEnum):
    POS = 0
    POS1 = 1
    POS2 = 2
    POS3 = 3
    BASE = 4
    FORM = 5
    LEMMA = 6
    SPELL = 7
    PRONUNCIATION = 8


class Word:
    surface = ''
    feature = []

    def __init__(self, raw: str):
        self.surface, feature = raw.split('\t')
        self.feature = feature.split(',')
