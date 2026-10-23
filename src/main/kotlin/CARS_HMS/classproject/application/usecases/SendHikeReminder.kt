package CARS_HMS.classproject.application.usecases

import CARS_HMS.classproject.application.dtos.queries.SendHikeRemindersRequest

interface SendHikeReminder {
    /** Envoie les rappels des randonnées du lendemain. Retourne le nombre de courriels envoyés. */
    fun sendHikeReminders(request: SendHikeRemindersRequest): Int
}
