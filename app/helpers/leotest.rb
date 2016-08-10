class Leotest
  def initialize(q)
    Leotest.define_component(q[0])
    send(q[0], q[1])
  end
  def self.define_component(role_name)
    define_method role_name do|perms|
      p perms+"!!!!!!!!!!!!!!!!!!!!!!"
    end
  end
end

l=Leotest.new(["q","w"])
l.q("ddddddd")

