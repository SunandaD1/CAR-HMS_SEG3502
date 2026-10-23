

package CARS_HMS.classproject.application.dtos.responses

import java.time.LocalDateTime

data class RegistrationDto(
    val registrationId: String,
    val hikerId: String,
    val hikeId: String,
    val registeredAt: LocalDateTime,
    val status: String
)
