import time
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
#Luis Reyes
#Miguel Gallo 
register_data = [
    ["", "", "","formulario vacio"],
    ["", "123456", "567856","sin correo electronico"],
    ["correopruebagmail.com", "123456", "567856","correo sin @"],
    ["correoprueba@gmail", "123412", "","sin contraseña de confirmacion"],
    ["correoprueba@gmail", "", "123412","sin contraseña"],
    ["correoprueba@gmail", "123412", "123412", "datos correctos"],
    ["correoprueba@gmail", "567892", "567892", "registrando usuario existente"],
]


driver = webdriver.Chrome('./chromedriver_linux64/chromedriver')
driver.maximize_window()

def run_registration_test(user_email,password,password_confirmation):
  global driver


  driver.get('http://localhost:3000/users/sign_up')
  time.sleep(5)
  email_box = driver.find_element_by_id('user_email')
  email_box.send_keys(str(user_email))

  password_box = driver.find_element_by_id('user_password')
  password_box.send_keys(str(password))

  password_confirmation_box = driver.find_element_by_id(
      'user_password_confirmation')
  password_confirmation_box.send_keys(str(password_confirmation))

  submit_button = driver.find_element_by_id('submit_registration')
  submit_button.click()

  time.sleep(5)
  checkError("Error de formulario")
  
  input("Prueba terminada presiones cualquier tecla para continuar")
  try:
    close_session()
  except:
    pass

  

def close_session():
  global driver
  try:
    close_session_button = driver.find_element_by_id('close_session_link')
    close_session_button.click()
    time.sleep(5)
  except:
    pass

  pass

def checkError(mensaje):
  global driver
  try:
    if driver.find_element_by_class_name('alert') != None:
      print(mensaje)
      pass
  except:
    pass

def do_registration_tests():
  global register_data
  for data in register_data:
    print(data[3])
    run_registration_test(data[0],data[1],data[2])


def main():
  input("Presione cualquier tecla para iniciar las pruebas de registro de usuario")

  do_registration_tests()

if __name__ == '__main__':
  main()
