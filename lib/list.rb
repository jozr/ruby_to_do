class List

  def initialize(list_name)
    @list_name = list_name
    @tasks = []
  end

  def add_task(new_task)
    @tasks << new_task
  end

  def list_name
    @list_name
  end

  def sort_tasks
    @tasks.sort
  end

  def tasks
    @tasks
  end

end
