class Task
@@tasks = []

  define_method(:initialize) do |task|
    @descr = task
  end

  define_method(:add) do
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
