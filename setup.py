import setuptools


install_requires = [
    "abjad",
    "baca",
    "evans",
    "trinton",
]

keywords = [
    "abjad",
    "music composition",
    "music notation",
    "formalized score control",
    "lilypond",
]

if __name__ == "__main__":
    setuptools.setup(
        author="Trinton Hlynn",
        author_email="trinton.k.prater@gmail.com",
        install_requires=install_requires,
        keywords=", ".join(keywords),
        name="neidan",
        packages=["augsburg"],
        platforms="Any",
        url="https://github.com/tr1nt0n/neidan.git",
    )
