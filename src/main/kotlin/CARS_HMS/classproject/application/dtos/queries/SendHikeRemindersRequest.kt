package CARS_HMS.classproject.application.dtos.queries

import java.time.LocalDateTime

data class SendHikeRemindersRequest(
    val currentTime: LocalDateTime
)
