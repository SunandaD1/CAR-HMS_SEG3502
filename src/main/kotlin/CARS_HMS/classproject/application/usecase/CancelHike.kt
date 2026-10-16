//CU-03


package CARS_HMS.classproject.application.usecase

import CARS_HMS.classproject.application.dto.CancelHikeRequest

interface CancelHike {
    fun cancelHike(request: CancelHikeRequest)
}
