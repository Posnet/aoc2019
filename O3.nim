import strutils

type
    Point = (int, int)
    Line = (Point, Point)
    Path = seq[Line]

proc intersections(a: Line, b: Line): seq[Point] = 
    var (p1, p2) = a
    var (p3, p4) = b


    return newSeq[Point(10)

proc main() =
    var
        origin: Point
        target: Point
        dist = 0
        paths = newSeq[Path](0)
    for line in stdin.lines:
        origin = (0, 0)
        target = (0, 0)
        var lines = newSeq[Line](0)
        for dir in line.split(","):
            dist = parseInt(dir[1..^1])
            case dir[0]:
                of 'U':
                    target = (origin[0], origin[1] + dist)
                of 'D':
                    target = (origin[0], origin[1] - dist)
                of 'L':
                    target = (origin[0] - dist, origin[1])
                of 'R':
                    target = (origin[0] + dist, origin[1])
                else:
                    raise # newException(OSError, "Unknown direction")
            
            lines.add((origin, target))
            origin = target
            target = (0, 0)
        paths.add(lines)

main()