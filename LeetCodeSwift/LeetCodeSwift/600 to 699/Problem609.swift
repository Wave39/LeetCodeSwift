//
//  Problem609.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/19/22.
//

// 609. Find Duplicate File in System
// https://leetcode.com/problems/find-duplicate-file-in-system/

public class Problem609 {
    public func run() {
        let solve1 = findDuplicate(["root/a 1.txt(abcd) 2.txt(efgh)", "root/c 3.txt(abcd)", "root/c/d 4.txt(efgh)", "root 4.txt(efgh)"])
        print("\(solve1) -- should be \n[[\"root/a/1.txt\", \"root/c/3.txt\"], [\"root/a/2.txt\", \"root/c/d/4.txt\", \"root/4.txt\"]]")
        let solve2 = findDuplicate(["root/a 1.txt(abcd) 2.txt(efgh)", "root/c 3.txt(abcd)", "root/c/d 4.txt(efgh)"])
        print("\(solve2) -- should be \n[[\"root/a/1.txt\", \"root/c/3.txt\"], [\"root/a/2.txt\", \"root/c/d/4.txt\"]]")
    }

    public func test(_ paths: [String]) -> [[String]] {
        return findDuplicate(paths)
    }

    func findDuplicate(_ paths: [String]) -> [[String]] {
        class FileInfo {
            var path: String
            var fileName: String
            init(path: String, fileName: String) {
                self.path = path
                self.fileName = fileName
            }
        }

        var fileInfoDict = [String: [FileInfo]]()
        for path in paths {
            let arr = path.split(separator: " ").map { String($0) }
            if arr.count > 1 {
                for idx in 1..<arr.count {
                    let fileArr = arr[idx].split(separator: "(").map { String($0) }
                    var key = fileArr[1]
                    key.removeLast()
                    let fileInfo = FileInfo(path: arr[0], fileName: fileArr[0])
                    fileInfoDict[key, default: [FileInfo]()].append(fileInfo)
                }
            }
        }

        var retval = [[String]]()
        for k in fileInfoDict.keys.sorted() {
            if let files = fileInfoDict[k], files.count > 1 {
                var lineArray = [String]()
                for file in files {
                    lineArray.append("\(file.path)/\(file.fileName)")
                }

                retval.append(lineArray)
            }
        }

        return retval
    }
}
