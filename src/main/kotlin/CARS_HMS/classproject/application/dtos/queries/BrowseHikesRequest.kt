package CARS_HMS.classproject.application.dtos.queries

import java.time.LocalDate

/** Filtres facultatifs de Parcourir les randonnées. requesterId est absent pour un visiteur. */
data class BrowseHikesRequest(
    val requesterId: String? = null,
    val trailName: String? = null,
    val date: LocalDate? = null,
    val difficulty: String? = null
)
