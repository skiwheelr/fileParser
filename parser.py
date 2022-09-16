#started 12:20PM Friday Sept 16
import sys

def parser(word, filename):
    print("Parsing " + filename + "for " + word)
    n = 0

    with open(filename) as f:
        lines = f.readlines()
        for line in lines:
            phrases = line.split(" ")
            for phrase in phrases:
                if word in phrase:
                    n += 1
    print(word + " exists in " + filename + " " + str(n) + " times")
    f.close
    return n

if __name__ == '__main__':
    # globals()[sys.argv[1]](sys.argv[2])
    parser(sys.argv[1], sys.argv[2])
    