import Foundation

public class TreeNode {
    
    public let value: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(value: Int, left: TreeNode? = nil, right: TreeNode? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
    
    public class func printTree(node: TreeNode?, prefix: String = "", isLeft: Bool) {
        guard let node else {
            return
        }
        
        print(prefix + (isLeft ? "├── " : "└── ") + "\(node.value)")
        
        let newPrefix = prefix + (isLeft ? "│   " : "    ")
        printTree(node: node.left, prefix: newPrefix, isLeft: true)
        printTree(node: node.right, prefix: newPrefix, isLeft: false)
    }
}
