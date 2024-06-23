
func swapTree(node: TreeNode?) -> TreeNode? {
    guard let node else {
        return nil
    }
    
    let temp = node.left
    node.left = node.right
    node.right = temp
    
    swapTree(node: node.left)
    swapTree(node: node.right)
    
    return node
}

// Example:
/*
let root = TreeNode(value: 4)
root.left = TreeNode(value: 2)
root.right = TreeNode(value: 7)
root.left?.left = TreeNode(value: 1)
root.left?.right = TreeNode(value: 3)
root.right?.left = TreeNode(value: 6)
root.right?.right = TreeNode(value: 9)

TreeNode.printTree(node: root, isLeft: false)

let swappedRoot = swapTree(node: root)

TreeNode.printTree(node: swappedRoot, isLeft: false)
*/
