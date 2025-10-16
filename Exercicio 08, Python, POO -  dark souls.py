class Personagem:
  def __init__(self, vida: int, resistencia: int):
      self._vida = vida
      self._resistencia = resistencia

  @property
  def vida(self):
      return self._vida

  @vida.setter
  def vida(self, nova_vida):
      if nova_vida >= 0:
          self._vida = nova_vida
      else:
          print("A vida não pode ser negativa.")

  def __str__(self):
      return f"Personagem com {self._vida} de vida e {self._resistencia} de resistência"


class Cavaleiro(Personagem):
  def __init__(self, vida: int, resistencia: int, armadura_pesada: bool):
      super().__init__(vida, resistencia)
      self.armadura_pesada = armadura_pesada

  def __str__(self):
      tipo_armadura = "com armadura pesada" if self.armadura_pesada else "sem armadura pesada"
      return f"Cavaleiro {tipo_armadura}, {self._vida} de vida e {self._resistencia} de resistência"
 
if __name__ == "__main__":
  p = Personagem(100, 50)
  print(p)

  c = Cavaleiro(120, 80, True)
  print(c)
