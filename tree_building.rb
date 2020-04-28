Node = Struct.new(:id, :parent_id, :name, keyword_init: true)

nodes = [
          Node.new(id: 1, parent_id: nil, name: "A"),
          Node.new(id: 2, parent_id: 1, name: "B"),
          Node.new(id: 3, parent_id: 1, name: "C"),
          Node.new(id: 4, parent_id: 2, name: "D"),
          Node.new(id: 5, parent_id: 4, name: "E"),
          Node.new(id: 6, parent_id: 3, name: "F"),
          Node.new(id: 7, parent_id: nil, name: "G")
        ]

def build_tree(nodes, tree = {})
  nodes.each do |node|
    current  = tree.fetch(node[:id])        { |key| tree[key] = {} }
    parent   = tree.fetch(node[:parent_id]) { |key| tree[key] = {} }
    siblings = parent.fetch(:children)      { |key| parent[key] = [] }

    current[:parent] = node[:parent_id]
    siblings.push(node[:id])
  end

  tree
end
