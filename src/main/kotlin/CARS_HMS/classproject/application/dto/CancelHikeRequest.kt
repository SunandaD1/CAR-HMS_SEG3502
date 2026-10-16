//CU-03


package CARS_HMS.classproject.application.dto

data class CancelHikeRequest(
    val hikeId: String,
    val cancelledBy: String,
    val reason: String
)
