from distutils.core import setup, Extension

def main():
    ext = Extension("rapidmodule", 
        sources=["rapidmodule.cc", "rapid/build.cc", "rapid/collide.cc", "rapid/overlap.cc",  "rapid/RAPID.cc"], 
        include_dirs=['/rapid'],
        library_dirs=['/rapid'],
        libraries=[]
    )

    setup(name="rapidmodule",
          version="0.0.1",
          description="None",
          author="BekbolinovKairat",
          author_email="bekbokai@fel.cvut.cz",
          ext_modules=[ext])

if __name__ == "__main__":
    main()