class VendingMachine

  attr_reader :inventory

  def initialize
    @inventory = []
  end

  def add_snack(snack)
    @inventory.push(snack)
  end

  def snacks_by_name
    @inventory.map { |snack| snack.name }
  end

  def how_many_snacks
    @inventory.group_by { |snack| snack.quantity }
  end

  def inventory_by_alphabet
    @inventory.group_by { |snack| snack.name[0] }
  end

  def total_num_items
    @inventory.reduce(0) { |sum, snack| sum + snack.quantity }
  end

  def first_letters
    @inventory.reduce("") { |letters, snack| letters + snack.name[0] }
  end

  def change_indexes
    @inventory.reduce([]) { |indexes, snack| indexes.push(@inventory.index(snack) + 1) }
  end

end