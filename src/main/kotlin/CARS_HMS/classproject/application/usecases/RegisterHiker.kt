package CARS_HMS.classproject.application.usecases

import CARS_HMS.classproject.application.dtos.queries.RegisterHikerRequest
import CARS_HMS.classproject.application.dtos.responses.HikerDto

interface RegisterHiker {
    fun registerHiker(request: RegisterHikerRequest): HikerDto
}
