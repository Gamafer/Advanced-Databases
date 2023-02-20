from random import randint
import string
import sys
import names
import random

from faker import Faker
fakeM = Faker([ 'es_MX'])
fakeE = Faker([ 'en_US', 'it_IT'])

Miembro_Suplente = ['M', 'S', 'null']
pres_voc = ['P', 'V']

iPV = ''

votantes = [100]

file = open("votantes.txt", "w")


for i in range(50): #for loop para generar insert de mexicanos
    if i < 10:
        if random.choice(Miembro_Suplente) == 'M':
            IPV = random.choice(pres_voc)
            n = file.write('INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES (' + "'IFE00"  +str(i)+ "'"',' + "'"+ str(fakeM.first_name())+"'" +',' +"'"+ str(fakeM.last_name()) +"'" + ','+ "'"+ str(fakeM.street_address())+"'" + ',' + "'" + str(fakeM.date()) +"'" + ','+ "'M'" + ',' + "'"+ str(IPV)+"'" +', ' + str(randint(0, 30)) + '); \n')
           # votantes[i] = 'INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES (' + "'IFE00"  +str(i)+ "'"',' + "'"+ str(fakeM.first_name())+"'" +',' +"'"+ str(fakeM.last_name()) +"'" + ','+ "'"+ str(fakeM.address())+"'" + ',' + "'" + str(fakeM.date()) +"'" + ','+ "'M'" + ',' + "'"+ str(IPV)+"'" +', ' + str(randint(0, 30)) + ')); '
        else:
           n = file.write('INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES (' + "'IFE00"  +str(i)+ "'"',' + "'"+ str(fakeM.first_name())+"'" +',' +"'"+ str(fakeM.last_name()) +"'" + ','+ "'"+ str(fakeM.street_address())+"'" + ',' + "'" + str(fakeM.date()) +"'" + ','+ "'"+ str(random.choice(Miembro_Suplente))+"'" + ',' + " null" +', ' + str(randint(0, 30)) + ');\n ')
            #votantes[i] = 'INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES (' + "'IFE00"  +str(i)+ "'"',' + "'"+ str(fakeM.first_name())+"'" +',' +"'"+ str(fakeM.last_name()) +"'" + ','+ "'"+ str(fakeM.address())+"'" + ',' + "'" + str(fakeM.date()) +"'" + ','+ "'"+ str(random.choice(Miembro_Suplente))+"'" + ',' + "'null'" +', ' + str(randint(0, 30)) + ')); '
    else:
        if random.choice(Miembro_Suplente) == 'M':
            IPV = random.choice(pres_voc)
            n = file.write('INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES (' + "'IFE0"  +str(i)+ "'"',' + "'"+ str(fakeM.first_name())+"'" +',' +"'"+ str(fakeM.last_name()) +"'" + ','+ "'"+ str(fakeM.street_address())+"'" + ',' + "'" + str(fakeM.date()) +"'" + ','+ "'M'" + ',' + "'"+ str(IPV)+"'" +', ' + str(randint(0, 30)) + '); \n ')
            #votantes[i] = 'INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES (' + "'IFE0"  +str(i)+ "'"',' + "'"+ str(fakeM.first_name())+"'" +',' +"'"+ str(fakeM.last_name()) +"'" + ','+ "'"+ str(fakeM.address())+"'" + ',' + "'" + str(fakeM.date()) +"'" + ','+ "'M'" + ',' + "'"+ str(IPV)+"'" +', ' + str(randint(0, 30)) + ')); '
        else:
            n = file.write('INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES (' + "'IFE0"  +str(i)+ "'"',' + "'"+ str(fakeM.first_name())+"'" +',' +"'"+ str(fakeM.last_name()) +"'" + ','+ "'"+ str(fakeM.street_address())+"'" + ',' + "'" + str(fakeM.date()) +"'" + ','+ "'"+ str(random.choice(Miembro_Suplente))+"'" + ',' + " null" +', ' + str(randint(0, 30)) + '); \n ')
           # votantes[i] = 'INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES (' + "'IFE0"  +str(i)+ "'"',' + "'"+ str(fakeM.first_name())+"'" +',' +"'"+ str(fakeM.last_name()) +"'" + ','+ "'"+ str(fakeM.address())+"'" + ',' + "'" + str(fakeM.date()) +"'" + ','+ "'"+ str(random.choice(Miembro_Suplente))+"'" + ',' + "'null'" +', ' + str(randint(0, 30)) + ')); '





for i in range(50): # for loop para gener inserts de votatnes
    n = file.write('INSERT INTO votantes (IFE_Pasaporte, Nombre, Apellidos, Direccion, Fecha_nac, Miembro_Suplente, pres_voc, Id_mesa) VALUES (' + "'PAS0"  +str(i+50)+ "'"',' + "'"+ str(fakeE.first_name())+"'" +',' +"'"+ str(fakeE.last_name()) +"'" + ','+ "'"+ str(fakeE.street_address())+"'" + ',' + "'" + str(fakeE.date()) +"'" + ','+ " null" + ',' + " null" +', ' + str(randint(0, 30)) + '); \n ')
    
