package CARS_HMS.classproject.application.usecases

import CARS_HMS.classproject.application.dtos.queries.AdminUpdateHikerRequest
import CARS_HMS.classproject.application.dtos.queries.UpdateHikerProfileRequest
import CARS_HMS.classproject.application.dtos.responses.HikerDto

interface UpdateHiker {
    fun updateHikerProfile(request: UpdateHikerProfileRequest): HikerDto
    fun updateHikerByAdministrator(request: AdminUpdateHikerRequest): HikerDto
}
