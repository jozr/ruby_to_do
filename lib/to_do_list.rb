class List
  def initialize(list_name)
    @list_name = list_name
    @tasks = []
  end
  def tasks
    @tasks
  end
  def add_task(new_task)
    @tasks << new_task
  end
end

