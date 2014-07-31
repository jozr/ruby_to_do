require 'rspec'
require 'list'
require 'task'

describe(List) do
  it('starts with an empty list') do
    test_list = List.new('School Supplies')
    expect(test_list).to be_an_instance_of List
  end
  it('can add a task') do
    test_list = List.new('School Supplies')
    test_task = Task.new('Get pencils')
    test_list.tasks(test_task)
    expect(test_list.tasks).to eq [test_task]
  end
  it('can add priority') do
    test_list = List.new('1 Exercise')
    test_task = Task.new('2 Run')
    test_list.sort_tasks(test_task)
    expect(test_list.tasks).to eq [test_task]
  end
end
