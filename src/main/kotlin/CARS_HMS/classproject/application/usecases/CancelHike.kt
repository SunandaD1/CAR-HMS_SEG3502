

package CARS_HMS.classproject.application.usecases

import CARS_HMS.classproject.application.dtos.queries.CancelHikeRequest

interface CancelHike {
    fun cancelHike(request: CancelHikeRequest)
}
