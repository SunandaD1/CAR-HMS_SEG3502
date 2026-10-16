//CU-04


package CARS_HMS.classproject.application.usecase

import java.time.LocalDateTime

interface CloseHike {
    fun closeExpiredRegistrations(
        currentTime: LocalDateTime
    ): Int
}

//Int = how many hikes were closed
//DTO not needed since automatically triggered when a registration deadline is reached
//(DTOs are useful when transferring structured data, but they aren't mandatory for every operation)