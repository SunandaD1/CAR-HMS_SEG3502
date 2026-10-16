//CU-05 (p1)


package CARS_HMS.classproject.application.dto

import java.time.LocalDateTime

data class RegistrationDto(
    val registrationId: String,
    val hikerId: String,
    val hikeId: String,
    val registeredAt: LocalDateTime,
    val status: String
)
