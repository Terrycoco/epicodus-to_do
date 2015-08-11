class Task
@@tasks = []

  define_method(:initialize) do
  end

  define_method(:add) do |task_descr|
    @descr = task_descr
    @@tasks.push(@descr)
  end

  define_singleton_method(:all) do
    @@tasks
  end

  define_method(:descr) do
    @descr
  end

  define_method(:remove) do
    @@tasks.delete(self.descr())
  end

  define_singleton_method(:clear) do
    @@tasks = []
  end

  define_singleton_method(:count) do
    @@tasks.length()
   end

end
