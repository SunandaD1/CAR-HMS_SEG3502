
package CARS_HMS.classproject.application.usecases

import CARS_HMS.classproject.application.dtos.queries.CancelSignUpRequest

interface CancelSignUp {
    fun cancelSignUp(request: CancelSignUpRequest)
}
