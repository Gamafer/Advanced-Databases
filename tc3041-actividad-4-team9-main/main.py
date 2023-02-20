from pymongo import MongoClient
import pprint

#client = MongoClient('mongodb+srv://test01:H2GqIo2trRJ0aBbh@cluster0.ofrja.mongodb.net/test?retryWrites=true&w=majority')

#db = client['Libreria_el_alfajor']

client = MongoClient('mongodb+srv://test01:H2GqIo2trRJ0aBbh@cluster0.ofrja.mongodb.net/test?authSource=admin&replicaSet=atlas-6v0mmw-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
#collection = db['Libros']

# Requires the PyMongo package.
# https://api.mongodb.com/python/current
def personasCerca(letra):
        result = client['Libreria_el_alfajor']['Usuarios'].aggregate([
        {
            '$geoNear': {
                'near': {
                    'type': 'Point', 
                    'coordinates': [
                        52.3810, 5.1983
                    ]
                }, 
                'distanceField': 'dist.calculated', 
                'maxDistance': 200000000000, 
                'spherical': False
            }
        }, {
            '$match': {
                'Nombre': {
                    '$regex': str(letra)+'.*'
                }
            }
        }, {
            '$sort': {
                'dist.calculated': 1
            }
        }, {
            '$limit': 2
        }
    ])
        pprint.pprint(list(result))



def cantidadGastada(letra):
   result = client['Libreria_el_alfajor']['Usuarios'].aggregate([
        {
            '$match': {
                'Nombre': {
                    '$regex': str(letra)+'.*'
                }
            }
        }, {
            '$lookup': {
                'from': 'Historial', 
                'localField': '_id', 
                'foreignField': 'id_usr', 
                'as': 'Historial de renta'
            }
        }, {
            '$lookup': {
                'from': 'Libros', 
                'localField': 'Historial de renta.id_libro', 
                'foreignField': '_SKU', 
                'as': 'Libros_rentados'
            }
        }, {
            '$project': {
                '_id': 0, 
                'Nombre': 1, 
                'Apellido': 1, 
                'Libros_rentados.Titulo': 1, 
                'Libros_rentados.Precio': 1
            }
        }, {
            '$addFields': {
                'Suma': {
                    '$sum': '$Libros_rentados.Precio'
                }
            }
        }, {
            '$limit': 20
        }, {
            '$facet': {
                'ordenados': [
                    {
                        '$sort': {
                            'Suma': -1
                        }
                    }, {
                        '$project': {
                            'Nombre': 1, 
                            'Apellido': 1, 
                            'Suma': 1
                        }
                    }
                ]
            }
        }
    ])
   pprint.pprint(list(result))


def librosSimilares(editorial, genero):
    result = client['Libreria_el_alfajor']['Libros'].aggregate([
        {
            '$match': {
                'Editorial': editorial
            }
        },
         {
            '$graphLookup': {
                'from': 'Libros', 
                'startWith': '$Genero', 
                'connectFromField': 'Genero', 
                'connectToField': 'Genero', 
                'as': 'array', 
                'maxDepth': 1, 
                'depthField': 'string', 
                'restrictSearchWithMatch': {
                    'Genero': genero
                }
            }
        },
         {
            '$project': {
                'Titulo': 1, 
                'Genero': 1, 
                '_id': 0, 
                'Libros_de_accion_similares': '$array.Titulo'
            }
        }, {
            '$limit': 30
        },
        
        {
            '$sort': {
                'Titulo': 1
            }
        }
    ])
    pprint.pprint(list(result))


def promedioCostoXGenero(editorial):
    result = client['Libreria_el_alfajor']['Libros'].aggregate([
        {
            '$match': {
                'Editorial': editorial
            }
        }, {
            '$unwind': {
                'path': '$Genero'
            }
        }, {
            '$group': {
                '_id': '$Genero', 
                'count': {
                    '$push': '$Precio'
                }
            }
        }, {
            '$addFields': {
                'Promedio de precio x genero': {
                    '$avg': '$count'
                }
            }
        }, {
            '$project': {
                '_id': 1, 
                'Promedio de precio x genero': 1
            }
        }, {
            '$sort': {
                'Promedio de precio x genero': 1
            }
        }
    ])
    print("Editorial seleccionada: " + str(editorial))
    pprint.pprint(list(result))
    

def librosRentadosXPersona():
    result = client['Libreria_el_alfajor']['Historial'].aggregate([
        {
            '$match': {
                'Fecha_renta': '2021-05-05'
            }
        }, {
            '$lookup': {
                'from': 'Libros', 
                'localField': 'id_libro', 
                'foreignField': '_SKU', 
                'as': 'string'
            }
        }, {
            '$limit': 30
        }, {
            '$group': {
                '_id': '$id_usr', 
                'Libros_rentados': {
                    '$push': '$string.Titulo'
                }
            }
        }, {
            '$lookup': {
                'from': 'Usuarios', 
                'localField': '_id', 
                'foreignField': '_id', 
                'as': 'Datos_Persona'
            }
        }, {
            '$unwind': {
                'path': '$Datos_Persona'
            }
        }, {
            '$project': {
                '_id': 0, 
                'Datos_Persona.Nombre': 1, 
                'Datos_Persona.Apellido': 1, 
                'Libros_rentados': 1
            }
        }, {
            '$sort': {
                'Datos_Persona.Nombre': 1
            }
        }
    ])
    pprint.pprint(list(result))


def main():
    print("--------Menu:\n")
    print("1) Buscar las personas que viven más cerca de la librería filtrado por nombres que comienzen con la misma letra\n")
    print("2) Cantidad gastada en libros por persona filtrando por nombres que comienzen por la misma letra\n")
    print("3) Enlista los libros por género de una editorial (Arreglar)\n")
    print("4) Enlista el promedio de costo por libro por cada género por la editorial seleccionada\n")
    print("5) Enlista los libros rentados por persona filtrando en alguna fehca especificada (Limitado a 30)\n")
    op = input("Ingrese un numero para seleccionar una opcion:\n")
    return op


if __name__ == "__main__":
    op = int(main())
    if (op == 1):
        personasCerca('C')
    if (op == 2):
        cantidadGastada('C')
    if (op == 3):
        librosSimilares('Porrua', 'Accion')
    if (op == 4):
        promedioCostoXGenero('Porrua')
    if (op == 5):
        librosRentadosXPersona()