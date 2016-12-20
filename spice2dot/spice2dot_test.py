import unittest
import spice2dot


class Spice2DotTest(unittest.TestCase):
    def test_parse_voltage(self):
        self.assertDictEqual(
            {'name': 'v1', 'from': ['0'], 'to': 'in'},
            spice2dot.parse_line('v1 in 0 pwl (  0.0n 0.0')
        )

    def test_parse_resistance(self):
        self.assertDictEqual(
            {'name': 'r1', 'from': ['in'], 'to': 'out'},
            spice2dot.parse_line('r1 in out 1.00k')
        )

    def test_parse_capacitor(self):
        self.assertDictEqual(
            {'name': 'c1', 'from': ['0'], 'to': 'out'},
            spice2dot.parse_line('c1 out 0 10.0p')
        )

    def test_parse_lines_with_actual_data(self):
        with open('../ex1_CR.sp') as fin:
            data = spice2dot.read_data(fin)

        self.assertListEqual(
            [
                {'name': 'v1', 'from': ['0'], 'to': 'in'},
                {'name': 'r1', 'from': ['in'], 'to': 'out'},
                {'name': 'c1', 'from': ['0'], 'to': 'out'},
            ],
            spice2dot.parse_lines(data)
        )

    @unittest.skip('not implemented yet')
    def test_generate_dot(self):
        data = [
            {'name': 'v1', 'from': ['0'], 'to': 'in'},
            {'name': 'r1', 'from': ['in'], 'to': 'out'},
            {'name': 'c1', 'from': ['0'], 'to': 'out'},
        ]


if __name__ == '__main__':
    unittest.main()
