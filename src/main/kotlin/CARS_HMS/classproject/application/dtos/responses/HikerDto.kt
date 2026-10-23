package CARS_HMS.classproject.application.dtos.responses

data class HikerDto(
    val hikerId: String,
    val email: String,
    val fullName: String,
    val skillLevel: String,
    val membershipStatus: String,
    val isOrganizer: Boolean
)
