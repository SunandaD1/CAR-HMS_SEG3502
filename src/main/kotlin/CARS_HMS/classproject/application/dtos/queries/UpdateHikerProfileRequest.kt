package CARS_HMS.classproject.application.dtos.queries

/** Mise à jour par le randonneur lui-même. Un champ null reste inchangé. Le courriel n'est pas modifiable. */
data class UpdateHikerProfileRequest(
    val hikerId: String,
    val firstNames: String? = null,
    val lastName: String? = null,
    val phone: String? = null,
    val address: String? = null,
    val emergencyContactName: String? = null,
    val emergencyContactPhone: String? = null,
    val skillLevel: String? = null
)
