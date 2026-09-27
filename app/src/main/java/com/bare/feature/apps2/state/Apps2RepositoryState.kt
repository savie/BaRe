package com.bare.feature.apps2.state

import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import com.bare.feature.apps2.domain.Apps2App

sealed interface Apps2RepositoryResult {
    data object Loading : Apps2RepositoryResult
    data class Success(val apps: List<Apps2App>) : Apps2RepositoryResult
    data class Error(val message: String) : Apps2RepositoryResult
}

class Apps2RepositoryState {
    var result: Apps2RepositoryResult by mutableStateOf(Apps2RepositoryResult.Loading)
        private set

    fun loading() { result = Apps2RepositoryResult.Loading }
    fun success(apps: List<Apps2App>) { result = Apps2RepositoryResult.Success(apps) }
    fun error(message: String) { result = Apps2RepositoryResult.Error(message) }
}
