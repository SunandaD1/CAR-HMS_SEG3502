//CU-01

package CARS_HMS.classproject.application.dto

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
