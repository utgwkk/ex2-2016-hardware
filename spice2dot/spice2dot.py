import sys
import argparse
import graphviz


def parse_line(s):
    retval = {
        'name': '',
        'from': [],
        'to': ''
    }

    xs = s.split()
    name = xs[0]
    retval['name'] = name
    
    if name.startswith('v'):
        retval['from'].append(xs[2])
        retval['to'] = xs[1]
    elif name.startswith('r'):
        retval['from'].append(xs[1])
        retval['to'] = xs[2]
    else:
        retval['from'].append(xs[2])
        retval['to'] = xs[1]

    return retval


def parse_lines(lines):
    retval = []

    for line in lines:
        if line.startswith('*') or line.startswith('.') or line.startswith('+') or not line:
            continue
        retval.append(parse_line(line))

    return retval


def normalize(line):
    """
    正規化をする
    """
    return line.strip().lower()


def parse_args(argv):
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--input-file', action='store',
                        help='Input file name.')
    args = parser.parse_args()

    return args


def read_data(stream):
    return [normalize(line) for line in stream.readlines()]


def generate_dot(parsed_lines):
    graph = graphviz.Graph()
    nodeset = set()
    for line in parsed_lines:
        nodeset.add(line['name'])
        for _from in line['from']:
            nodeset.add(_from)
        nodeset.add(line['to'])

    return graph


def main(argv):
    args = parse_args(argv)

    if args.input_file:
        input_file = args.input_file
        read_stream = open(input_file, 'rt')
    else:
        read_stream = sys.stdin

    lines = read_data(read_stream)
    read_stream.close()

    return 0

if __name__ == '__main__':
    sys.exit(main(sys.argv))
