

package CARS_HMS.classproject.application.dtos.queries

data class CancelHikeRequest(
    val hikeId: String,
    val cancelledBy: String,
    val reason: String
)
