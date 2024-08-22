# test_calculator.py
# Update new

#Demo
import unittest
from calculator import add, subtract, multiply, divide

class TestCalculator(unittest.TestCase):

    # Test cases that should pass
    def test_add(self):
        self.assertEqual(add(2, 3), 5)  # Expected: 5
        self.assertEqual(add(-1, 1), 0)  # Expected: 0
        self.assertEqual(add(0, 0), 0)  # Expected: 0

    def test_subtract(self):
        self.assertEqual(subtract(10, 5), 5)  # Expected: 5

    def test_multiply(self):
        self.assertEqual(multiply(2, 3), 6)  # Expected: 6

    def test_divide(self):
        with self.assertRaises(ZeroDivisionError):  # Properly handle division by zero
            divide(10, 0)
        self.assertEqual(divide(10, 2), 5)  # Expected: 5

    def test_divide_fail(self):
        self.assertEqual(divide(10, 2), 5)  # Expected: 5 

if __name__ == '__main__':
    unittest.main()
