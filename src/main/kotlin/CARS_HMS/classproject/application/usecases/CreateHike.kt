

package CARS_HMS.classproject.application.usecases

import CARS_HMS.classproject.application.dtos.queries.CreateHikeRequest
import CARS_HMS.classproject.application.dtos.responses.HikeDto

interface CreateHike {
    fun createHike(request: CreateHikeRequest): HikeDto
}
