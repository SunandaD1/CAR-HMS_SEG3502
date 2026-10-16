//CU-05

package CARS_HMS.classproject.application.usecase

import CARS_HMS.classproject.application.dto.SignUpforHikeRequest
import CARS_HMS.classproject.application.dto.RegistrationDto

interface SignUpForHike {
    fun signUp(
        request: SignUpforHikeRequest
    ): RegistrationDto
}
