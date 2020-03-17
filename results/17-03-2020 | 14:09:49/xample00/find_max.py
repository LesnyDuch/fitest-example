from argparse import ArgumentParser, Namespace


def get_args() -> Namespace:
    """
    Initialize the argument parser.
    """
    parser = ArgumentParser(description='Example max-finding script.')
    parser.add_argument('numbers', metavar='N', type=int, nargs='+',
                        help='Possible maximum integer')
    return parser.parse_args().numbers


def main() -> None:
    numbers = get_args()
    print(max(numbers))


if __name__ == "__main__":
    main()
