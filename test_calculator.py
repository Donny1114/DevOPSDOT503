# test_calculator.py
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
        self.assertEqual(multiply(2, 3), 6)  # Expected: 6 (This should pass)

    def test_divide(self):
        self.assertEqual(divide(10, 0), 1)  # Expected: Error (This should fail)

    def test_divide_fail(self):
        self.assertEqual(divide(10, 2), 6)  # Expected: 5 (This should fail)

if __name__ == '__main__':
    unittest.main()
