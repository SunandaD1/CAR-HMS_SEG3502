package CARS_HMS.classproject.application.dtos.queries

import java.time.LocalDate

data class RegisterHikerRequest(
    val invitationCode: String,
    val email: String,
    val password: String,
    val firstNames: String,
    val lastName: String,
    val phone: String,
    val address: String,
    val birthDate: LocalDate,
    val emergencyContactName: String,
    val emergencyContactPhone: String,
    val skillLevel: String,
    val waiverAccepted: Boolean,
    val guardianName: String? = null
)
