package CARS_HMS.classproject.application.usecases

import CARS_HMS.classproject.application.dtos.queries.CloseHikesRequest

interface CloseHike {
    /** Ferme les randonnées dont la date limite d'inscription est passée. Retourne le nombre de randonnées fermées. */
    fun closeExpiredRegistrations(request: CloseHikesRequest): Int
}
