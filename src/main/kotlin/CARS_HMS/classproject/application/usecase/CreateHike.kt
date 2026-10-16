//CU-02


package CARS_HMS.classproject.application.usecase

import CARS_HMS.classproject.application.dto.CreateHikeRequest
import CARS_HMS.classproject.application.dto.HikeDto

interface CreateHike {
    fun createHike(request: CreateHikeRequest): HikeDto
}
