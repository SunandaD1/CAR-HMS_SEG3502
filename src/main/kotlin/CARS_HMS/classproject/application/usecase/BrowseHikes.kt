//CU-01

package CARS_HMS.classproject.application.usecase

import CARS_HMS.classproject.application.dto.HikeDto

interface BrowseHikes {
    fun browseOpenHikes(): List<HikeDto>
}
