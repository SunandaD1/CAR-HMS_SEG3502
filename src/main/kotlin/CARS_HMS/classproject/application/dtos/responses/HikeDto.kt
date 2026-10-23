
package CARS_HMS.classproject.application.dtos.responses

import java.time.LocalDateTime

data class HikeDto(
    val hikeId: String,
    val title: String,
    val trailId: String,
    val startDateTime: LocalDateTime,
    val registrationDeadline: LocalDateTime,
    val capacity: Int,
    val confirmedCount: Int,
    val status: String
)
