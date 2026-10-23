
package CARS_HMS.classproject.application.dtos.queries

import java.time.LocalDateTime

data class CreateHikeRequest(
    val organizerId: String,
    val title: String,
    val description: String,
    val trailId: String,
    val startDateTime: LocalDateTime,
    val durationMinutes: Int,
    val registrationDeadline: LocalDateTime,
    val capacity: Int
)
