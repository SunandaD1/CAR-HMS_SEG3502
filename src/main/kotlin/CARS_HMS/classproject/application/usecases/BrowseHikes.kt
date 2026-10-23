package CARS_HMS.classproject.application.usecases

import CARS_HMS.classproject.application.dtos.queries.BrowseHikesRequest
import CARS_HMS.classproject.application.dtos.responses.HikeDto

interface BrowseHikes {
    /** Retourne les randonnées ouvertes ou complètes (liste d'attente), triées par date. */
    fun browseHikes(request: BrowseHikesRequest): List<HikeDto>
}
