package CARS_HMS.classproject.application.dtos.queries

import java.time.LocalDate

/** Mise à jour par un administrateur : statut d'adhésion et certification de chef de randonnée. */
data class AdminUpdateHikerRequest(
    val administratorId: String,
    val hikerId: String,
    val membershipStatus: String? = null,
    val certificateNumber: String? = null,
    val certificationIssueDate: LocalDate? = null,
    val certificationExpiryDate: LocalDate? = null,
    val organizerLevel: String? = null
)
