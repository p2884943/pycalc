import unittest

from calc import *

class pycalc_test(unittest.TestCase):
    '''test module to test calculation functions in `pycalc.py`'''

    def test_addition(self):
        '''the returned sum should be equal to the test case'''
        self.assertTrue(11==addition(5, 6))

    def test_subtraction(self):
        '''the returned difference should be the equal to the test case'''
        self.assertTrue(11==subtraction(15, 4))

   # def test_division(self):
   #     '''the returned quotient should be equal to the test case'''
   #     self.assertTrue(11==division(55, 5))

   # def test_multiplication(self):
   #     '''the returned product should be equal to the test case'''
   #     self.assertTrue(11==multiplication(5.5, 2))

if __name__ == '__main__':
    unittest.main()
