## Print Tree 

```py 

class Node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None

    def traversePreorder(self):
        print(self.data)
        if self.left:
            self.left.traversePreorder()
        if self.right:
            self.right.traversePreorder()

    def traverseInorder(self):
        if self.left:
            self.left.traverseInorder()
        print(self.data)
        if self.right:
            self.right.traverseInorder()

    def traversePostorder(self):
        if self.left:
            self.left.traversePostorder()
        if self.right:
            self.right.traversePostorder()
        print(self.data)

    def search(self, target):
        if self.data == target:
            print("Found it!")
            return self
        
        if self.left and self.data > target:
            return self.left.search(target)

        if self.right and self.data < target:
            return self.right.search(target)

        print("Value is not in tree")


    def getNodesAtDepth(self, depth, nodes=[]):
        if depth == 0:
            nodes.append(self.data)
            return nodes

        if self.left:
            self.left.getNodesAtDepth(depth-1, nodes)
        else:
            nodes.extend([None]*2**(depth-1))
        
        if self.right:
            self.right.getNodesAtDepth(depth-1, nodes)
        else:
            nodes.extend([None]*2**(depth-1))
        return nodes

    def height(self, h=0):
        leftHeight = self.left.height(h+1) if self.left else h 
        rightHeight = self.right.height(h+1) if self.right else h
        return max(leftHeight, rightHeight)


class Tree:
    def __init__(self, root, name=''):
        self.root = root
        self.name = name

    def _nodeToChar(self, n, spacing):
        if n is None:
            return '_'+(' '*spacing)
        spacing = spacing-len(str(n))+1
        return str(n)+(' '*spacing)

    def print(self, label=''):
        print(self.name+' '+label)
        height = self.root.height()
        spacing = 3
        width = int((2**height-1) * (spacing+1) + 1)
        # Root offset
        offset = int((width-1)/2)
        for depth in range(0, height+1):
            if depth > 0:
                # print directional lines
                print(' '*(offset+1)  + (' '*(spacing+2)).join(['/' + (' '*(spacing-2)) + '\\']*(2**(depth-1))))
            row = self.root.getNodesAtDepth(depth, [])
            print((' '*offset)+''.join([self._nodeToChar(n, spacing) for n in row]))
            spacing = offset+1
            offset = int(offset/2) - 1
        print('')

    def traverseInorder(self):
        self.root.traverseInorder()

    def traversePreorder(self):
        self.root.traversePreorder()

    def traversePostorder(self):
        self.root.traversePostorder()

    def search(self, target):
        return self.root.search(target)

    def getNodesAtDepth(self, depth):
        return self.root.getNodesAtDepth(depth)

    def height(self):
        return self.root.height()


tree = Tree(Node(50))
tree.root.left = Node(25)
tree.root.right = Node(75)
tree.root.left.left = Node(13)
tree.root.left.right = Node(35)
tree.root.left.right.right = Node(37)
tree.root.right.left = Node(55)
tree.root.right.right = Node(103)
tree.root.left.left.left = Node(2)
tree.root.left.left.right = Node(20)
tree.root.right.left = Node(55)
tree.root.right.right.right = Node(256)

tree.print()

```
