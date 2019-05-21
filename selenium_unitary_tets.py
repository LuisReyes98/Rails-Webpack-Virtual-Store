import time
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
#Luis Reyes
#Miguel Gallo 
normal_user = ["email@email.com", "admin123"]
admin_user = ["admin@email.com", "admin123"]

register_data = [
    ["", "", "","formulario vacio"],
    ["", "123456", "567856","sin correo electronico"],
    ["correopruebagmail.com", "123456", "567856","correo sin @"],
    ["correoprueba@gmail", "123412", "","sin contraseña de confirmacion"],
    ["correoprueba@gmail", "", "123412","sin contraseña"],
    ["correoprueba@gmail", "123412", "123412", "registro existoso de un nuevo usuario"],
    ["correoprueba@gmail", "567892", "567892", "registrando usuario existente"],
]
# 'email@email.com' , password: 'admin123'
login_data = [
    ["", "", "formulario vacio"],
    ["", "123456", "correo vacio"],
    ["noregistradogmail.com", "123456", "correo invalido"],
    ["email@email.com", "123456", "contraseña incorrecta"],
    ["noregistrado@gmail.com", "123456", "correo no registrado"],
    ["email@email.com", "admin123", "inicio de sesion exitoso"],
]

driver = webdriver.Chrome('./chromedriver_linux64/chromedriver')
# driver.maximize_window()

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


def run_login_test(user_email, password):
  login(user_email, password)

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
    print("cerrando sesion")

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
  input("Presione cualquier tecla para iniciar las pruebas de registro de usuario")
  for data in register_data:
    print(data[3])
    run_registration_test(data[0],data[1],data[2])

def do_login_tests():
  global login_data
  input("Presione cualquier tecla para iniciar las pruebas de inicio de sesion de usuario")
  for data in login_data:
    print(data[2])
    run_login_test(data[0],data[1])


def login(user_email, password):
  global driver

  driver.get('http://localhost:3000/users/sign_in')
  time.sleep(5)
  email_box = driver.find_element_by_id('user_email')
  email_box.send_keys(str(user_email))

  password_box = driver.find_element_by_id('user_password')
  password_box.send_keys(str(password))

  submit_button = driver.find_element_by_id('submit_login_user')
  submit_button.click()

def do_fail_app_showcase():
  global driver
  global normal_user
  input("Presione cualquier tecla para iniciar las pruebas de recorrido fallido de la app")


  driver.get('http://localhost:3000/')
  time.sleep(5)
  print("iniciando sesion")
  login(normal_user[0], normal_user[1]) #login in
  time.sleep(5)
  print("añadiendo elementos al carrito")

  driver.find_element_by_class_name("add_to_cart").click() #adding to cart
  time.sleep(5)
  #in cart view 
  print("vaciando carrito")

  empty_cart() #empty the cart
  #attempt to register 
  driver.find_element_by_id("register_cart_order").click()
  print("Fallo en registrar orden")
  close_session()


def empty_cart():
  global driver
  try:
    driver.find_element_by_class_name("delete_cart").click()
    time.sleep(5)
    empty_cart()
  except:
    pass

def do_successful_app_showcase():  
  global driver
  global admin_user
  input("Presione cualquier tecla para iniciar las pruebas de recorrido exitoso de la app")

  driver.get('http://localhost:3000/')
  time.sleep(5)
  print("inicio de sesion con admin")

  login(admin_user[0], admin_user[1])  # login in
  print("añdiendo elementos al carrito")
  time.sleep(5)
  driver.find_element_by_class_name("add_to_cart").click()  # adding to cart
  time.sleep(5)
  #register to cart
  print("registrando orden")
  driver.find_element_by_id("register_cart_order").click()
  time.sleep(5)

  #go to admin section
  print("entrando a la seccion de admin")
  driver.find_element_by_id("admin_nav_link").click()
  time.sleep(5)

  #Travel in the admin sections
  print("navegando en la seccion de admin")

  driver.find_element_by_id("products_section").click()
  print("visualiza seccion producto")

  time.sleep(5)
  driver.find_element_by_id("orders_section").click()
  print("visualiza seccion ordenes")

  time.sleep(5)
  driver.find_element_by_id("users_section").click()
  print("visualiza seccion usuarios")

  time.sleep(5)
  driver.find_element_by_id("reports_section").click()
  print("visualiza seccion reportes")

  time.sleep(5)

  # go to procut
  driver.find_element_by_id("products_section").click()
  print("visualiza seccion producto")

  time.sleep(5)
  # go to create
  driver.find_element_by_id("create_product").click()
  print("visualiza seccion crear producto")

  time.sleep(5)

  # attemp to submit
  driver.find_element_by_id("submit_button").click()
  print("falla crear producto vacio")

  time.sleep(5)
  
  close_session()



def main():
  do_registration_tests()
  
  do_login_tests()
  
  do_fail_app_showcase()

  do_successful_app_showcase()

if __name__ == '__main__':
  main()
