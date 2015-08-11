require('rspec')
require('pry')
require('to_do')

describe(Task) do

  describe('#add') do
    it('will add a new task to our class') do
      test_task = Task.new("Task1")
      test_task.add()
      expect(Task.all()).to(eq(["Task1"]))
    end

     it('will add a second task and return 2 elements in array') do
       @@test_task2 = Task.new("Task2")
       @@test_task2.add()
      expect(Task.all()).to(eq(["Task1","Task2"]))
     end
   end

    describe('#descr') do
      it('will return the description of the task') do
        expect(@@test_task2.descr()).to(eq("Task2"))
      end
    end


  describe('#remove') do
    it('will remove a task from the list') do
        @@test_task2.remove()
        expect(Task.all()).to(eq(["Task1"]))
    end

  describe('.clear') do
    it("will clear the entire list") do
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end

  describe('.count') do
    it("will return number of tasks in list") do
      expect(Task.count()).to(eq(0))
    end
  end

end  #end Task
end  #end class
