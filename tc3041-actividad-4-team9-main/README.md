# tc3041-actividad-4-team-10


Integrantes del equipo: 
- Rodrigo Benavente A01027293
- Fernandito Garrote A01027294
- Equipo 9
- Equipo 13

Consultas:
<<<<<<< HEAD
- $unwind : Indica el costo promedio de libros por cada género por la editorial seleccionada
  > funcion : promedioCostoXGenenero(editorial)
- $lookup : Indicalos libros que ha rentado cada persona en una cierta fecha
  > funcion : librosRentadosXPersona()
=======
- $unwind : Indica el costo promedio de libros por cada género
  > funcion : promedioCostoXGenenero()
- $lookup : Indicalos libros que ha rentado cada persona
  > funcion : librosSimilares(editorial, genero)
>>>>>>> 733a64fc6cd9aeeb36994d5e2fad9bb6e1dc1eee
- $graphLookup : Busca libros del mismo género por editorial
  > funcion : librosSimilares(editorial, genero)
- $geoNear : Enlista a las personas que viven más cerca de la biblioteca de personas que empeizan con una cierta letra
  > funcion : personasCerca(letra)
- $facet : Enlista las personas que más han gastado en libros y cuanto han gastado
  > funcion : cantidadGastada()
  

Optimizacion de consultas:
- Antes de añadirle índices a la función $unwind, la agregación te regresaba los 100000 documentos:

        stages: [
          {
            '$cursor': [Object],
            nReturned: 100000,
            executionTimeMillisEstimate: 118
          }, (...)
  Despues de crear un índice para la etapa de $match y sort, ya no te regreesaba tantos documentos por lo que el query estaba optimizado:

        stages: [
          {
            '$cursor': [Object],
            nReturned: 5684,
            executionTimeMillisEstimate: 11
          },
          {
            '$unwind': [Object],
            nReturned: 11368,
            executionTimeMillisEstimate: 11
          },
          {
            '$group': [Object],
            nReturned: 9,
            executionTimeMillisEstimate: 16
          },
          {
            '$addFields': [Object],
            nReturned: 9,
            executionTimeMillisEstimate: 16
          },
          {
            '$sort': [Object],
            nReturned: 9,
            executionTimeMillisEstimate: 16
          }
        ]

    Aqui podemos observar desde la primera etapa de la agragación que la cantidad de documentos regresados es mucho menor en un *IndexScan* a un *CollScan*.

- Antes de añadirle ídices a la funcion de $lookup la agregación te regresaba lo siguiente:

      stages: [
          {
            '$cursor': [Object],
            nReturned: 50000,
            executionTimeMillisEstimate: 14
          }, (...)
Después de agregar un índice para filtrar por fecha, el primer tiempo de agregación paso a lo siguiente: 

        stages: [
            {
              '$cursor': [Object],
              nReturned: 30,
              executionTimeMillisEstimate: 0
            }, (...)

- Antes de optimizar la función $geonear regresaba lo siguiente: 

      stages: [
          {
            '$geoNearCursor': [Object],
            nReturned: 100000,
            executionTimeMillisEstimate: 721
          }, (...)
Esto era porque tiene que analizar las coordenadas de todas las personas ya que $geonear tiene que ser la primera función del pipeline, entonces, para poder optimizarla decimos añadir un $match después de $geonear para poder filtrar por nombres que comienzen con alguna letra, el resultado fue el siguiente: 

    stages: [
        {
          '$geoNearCursor': [Object],
          nReturned: 100000,
          executionTimeMillisEstimate: 711
        },
        {
          '$match': [Object],
          nReturned: 8234,
          executionTimeMillisEstimate: 775
        },
        {
          '$sort': [Object],
          nReturned: 2,
          executionTimeMillisEstimate: 784
        }
      ]
En el resultado se puede observar que en la segunda etapa de la pipeline se reduce considerablemente el número de documentos regresados.

- Antes de optimizar la función de $facet lo que regresaba era lo siguiente:

      stages: [
          {
            '$cursor': [Object],
            nReturned: 20,
            executionTimeMillisEstimate: 100
          },
          {
            '$lookup': [Object],
            nReturned: 20,
            executionTimeMillisEstimate: 1183
          },
          {
            '$lookup': [Object],
            nReturned: 20,
            executionTimeMillisEstimate: 2280
          },
          {
            '$project': [Object],
            nReturned: 20,
            executionTimeMillisEstimate: 2280
          },
          {
            '$addFields': [Object],
            nReturned: 20,
            executionTimeMillisEstimate: 2280
          },
          {
            '$facet': [Object],
            nReturned: 1,
            executionTimeMillisEstimate: 2280
          }
        ]
Aquie podemos observar que la catidad de documentos no es muy grande, sin embargo el tiempo de busqueda si es significante ya que tiene que recorrerlos todos. Para optimizarlo se agregaron algunos índices y una funcion de $match que nos permitió reducir los tiempos de búsqueda: 

    stages: [
        {
          '$cursor': [Object],
          nReturned: 20,
          executionTimeMillisEstimate: 13
        },
        {
          '$lookup': [Object],
          nReturned: 20,
          executionTimeMillisEstimate: 935
        },
        {
          '$lookup': [Object],
          nReturned: 20,
          executionTimeMillisEstimate: 1793
        },
        {
          '$project': [Object],
          nReturned: 20,
          executionTimeMillisEstimate: 1793
        },
        {
          '$addFields': [Object],
          nReturned: 20,
          executionTimeMillisEstimate: 1793
        },
        {
          '$facet': [Object],
          nReturned: 1,
          executionTimeMillisEstimate: 1793
        }
      ]
