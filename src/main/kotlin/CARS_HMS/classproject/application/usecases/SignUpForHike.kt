
package CARS_HMS.classproject.application.usecases

import CARS_HMS.classproject.application.dtos.queries.SignUpForHikeRequest
import CARS_HMS.classproject.application.dtos.responses.RegistrationDto

interface SignUpForHike {
    fun signUp(
        request: SignUpForHikeRequest
    ): RegistrationDto
}
