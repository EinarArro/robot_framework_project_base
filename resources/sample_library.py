class SampleLibrary:

    __version__ = '0.1'
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    @keyword('Sample Keyword Name', ['tags', 'here'])
    def sample_method(arg):
        print "Hello, %s!" % arg