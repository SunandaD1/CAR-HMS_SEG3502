
package CARS_HMS.classproject.application.dtos.queries

data class CancelSignUpRequest(
    val registrationId: String,
    val hikerId: String
)