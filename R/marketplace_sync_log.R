#' Create a new MarketplaceSyncLog
#'
#' @description
#' MarketplaceSyncLog Class
#'
#' @docType class
#' @title MarketplaceSyncLog
#' @description MarketplaceSyncLog Class
#' @format An \code{R6Class} generator object
#' @field completedAt  character [optional]
#' @field connectionId References the marketplace connection entity. character
#' @field errorMessage  character [optional]
#' @field itemsFailed  integer
#' @field itemsSynced  integer
#' @field platform  character
#' @field startedAt  character
#' @field status  \link{SyncLogStatus}
#' @field syncType  \link{SyncType}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MarketplaceSyncLog <- R6::R6Class(
  "MarketplaceSyncLog",
  public = list(
    `completedAt` = NULL,
    `connectionId` = NULL,
    `errorMessage` = NULL,
    `itemsFailed` = NULL,
    `itemsSynced` = NULL,
    `platform` = NULL,
    `startedAt` = NULL,
    `status` = NULL,
    `syncType` = NULL,

    #' @description
    #' Initialize a new MarketplaceSyncLog class.
    #'
    #' @param connectionId References the marketplace connection entity.
    #' @param itemsFailed itemsFailed
    #' @param itemsSynced itemsSynced
    #' @param platform platform
    #' @param startedAt startedAt
    #' @param status status
    #' @param syncType syncType
    #' @param completedAt completedAt
    #' @param errorMessage errorMessage
    #' @param ... Other optional arguments.
    initialize = function(`connectionId`, `itemsFailed`, `itemsSynced`, `platform`, `startedAt`, `status`, `syncType`, `completedAt` = NULL, `errorMessage` = NULL, ...) {
      if (!missing(`connectionId`)) {
        if (!(is.character(`connectionId`) && length(`connectionId`) == 1)) {
          stop(paste("Error! Invalid data for `connectionId`. Must be a string:", `connectionId`))
        }
        self$`connectionId` <- `connectionId`
      }
      if (!missing(`itemsFailed`)) {
        if (!(is.numeric(`itemsFailed`) && length(`itemsFailed`) == 1)) {
          stop(paste("Error! Invalid data for `itemsFailed`. Must be an integer:", `itemsFailed`))
        }
        self$`itemsFailed` <- `itemsFailed`
      }
      if (!missing(`itemsSynced`)) {
        if (!(is.numeric(`itemsSynced`) && length(`itemsSynced`) == 1)) {
          stop(paste("Error! Invalid data for `itemsSynced`. Must be an integer:", `itemsSynced`))
        }
        self$`itemsSynced` <- `itemsSynced`
      }
      if (!missing(`platform`)) {
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!missing(`startedAt`)) {
        if (!(is.character(`startedAt`) && length(`startedAt`) == 1)) {
          stop(paste("Error! Invalid data for `startedAt`. Must be a string:", `startedAt`))
        }
        self$`startedAt` <- `startedAt`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`syncType`)) {
        if (!(`syncType` %in% c())) {
          stop(paste("Error! \"", `syncType`, "\" cannot be assigned to `syncType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`syncType`))
        self$`syncType` <- `syncType`
      }
      if (!is.null(`completedAt`)) {
        if (!is.character(`completedAt`)) {
          stop(paste("Error! Invalid data for `completedAt`. Must be a string:", `completedAt`))
        }
        self$`completedAt` <- `completedAt`
      }
      if (!is.null(`errorMessage`)) {
        if (!(is.character(`errorMessage`) && length(`errorMessage`) == 1)) {
          stop(paste("Error! Invalid data for `errorMessage`. Must be a string:", `errorMessage`))
        }
        self$`errorMessage` <- `errorMessage`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return MarketplaceSyncLog as a base R list.
    #' @examples
    #' # convert array of MarketplaceSyncLog (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert MarketplaceSyncLog to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MarketplaceSyncLogObject <- list()
      if (!is.null(self$`completedAt`)) {
        MarketplaceSyncLogObject[["completedAt"]] <-
          self$`completedAt`
      }
      if (!is.null(self$`connectionId`)) {
        MarketplaceSyncLogObject[["connectionId"]] <-
          self$`connectionId`
      }
      if (!is.null(self$`errorMessage`)) {
        MarketplaceSyncLogObject[["errorMessage"]] <-
          self$`errorMessage`
      }
      if (!is.null(self$`itemsFailed`)) {
        MarketplaceSyncLogObject[["itemsFailed"]] <-
          self$`itemsFailed`
      }
      if (!is.null(self$`itemsSynced`)) {
        MarketplaceSyncLogObject[["itemsSynced"]] <-
          self$`itemsSynced`
      }
      if (!is.null(self$`platform`)) {
        MarketplaceSyncLogObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`startedAt`)) {
        MarketplaceSyncLogObject[["startedAt"]] <-
          self$`startedAt`
      }
      if (!is.null(self$`status`)) {
        MarketplaceSyncLogObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`syncType`)) {
        MarketplaceSyncLogObject[["syncType"]] <-
          self$extractSimpleType(self$`syncType`)
      }
      return(MarketplaceSyncLogObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of MarketplaceSyncLog
    #'
    #' @param input_json the JSON input
    #' @return the instance of MarketplaceSyncLog
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`completedAt`)) {
        self$`completedAt` <- this_object$`completedAt`
      }
      if (!is.null(this_object$`connectionId`)) {
        self$`connectionId` <- this_object$`connectionId`
      }
      if (!is.null(this_object$`errorMessage`)) {
        self$`errorMessage` <- this_object$`errorMessage`
      }
      if (!is.null(this_object$`itemsFailed`)) {
        self$`itemsFailed` <- this_object$`itemsFailed`
      }
      if (!is.null(this_object$`itemsSynced`)) {
        self$`itemsSynced` <- this_object$`itemsSynced`
      }
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`startedAt`)) {
        self$`startedAt` <- this_object$`startedAt`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- SyncLogStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`syncType`)) {
        `synctype_object` <- SyncType$new()
        `synctype_object`$fromJSON(jsonlite::toJSON(this_object$`syncType`, auto_unbox = TRUE, digits = NA))
        self$`syncType` <- `synctype_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MarketplaceSyncLog in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MarketplaceSyncLog
    #'
    #' @param input_json the JSON input
    #' @return the instance of MarketplaceSyncLog
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`completedAt` <- this_object$`completedAt`
      self$`connectionId` <- this_object$`connectionId`
      self$`errorMessage` <- this_object$`errorMessage`
      self$`itemsFailed` <- this_object$`itemsFailed`
      self$`itemsSynced` <- this_object$`itemsSynced`
      self$`platform` <- this_object$`platform`
      self$`startedAt` <- this_object$`startedAt`
      self$`status` <- SyncLogStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`syncType` <- SyncType$new()$fromJSON(jsonlite::toJSON(this_object$`syncType`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to MarketplaceSyncLog and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `connectionId`
      if (!is.null(input_json$`connectionId`)) {
        if (!(is.character(input_json$`connectionId`) && length(input_json$`connectionId`) == 1)) {
          stop(paste("Error! Invalid data for `connectionId`. Must be a string:", input_json$`connectionId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceSyncLog: the required field `connectionId` is missing."))
      }
      # check the required field `itemsFailed`
      if (!is.null(input_json$`itemsFailed`)) {
        if (!(is.numeric(input_json$`itemsFailed`) && length(input_json$`itemsFailed`) == 1)) {
          stop(paste("Error! Invalid data for `itemsFailed`. Must be an integer:", input_json$`itemsFailed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceSyncLog: the required field `itemsFailed` is missing."))
      }
      # check the required field `itemsSynced`
      if (!is.null(input_json$`itemsSynced`)) {
        if (!(is.numeric(input_json$`itemsSynced`) && length(input_json$`itemsSynced`) == 1)) {
          stop(paste("Error! Invalid data for `itemsSynced`. Must be an integer:", input_json$`itemsSynced`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceSyncLog: the required field `itemsSynced` is missing."))
      }
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceSyncLog: the required field `platform` is missing."))
      }
      # check the required field `startedAt`
      if (!is.null(input_json$`startedAt`)) {
        if (!(is.character(input_json$`startedAt`) && length(input_json$`startedAt`) == 1)) {
          stop(paste("Error! Invalid data for `startedAt`. Must be a string:", input_json$`startedAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceSyncLog: the required field `startedAt` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceSyncLog: the required field `status` is missing."))
      }
      # check the required field `syncType`
      if (!is.null(input_json$`syncType`)) {
        stopifnot(R6::is.R6(input_json$`syncType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceSyncLog: the required field `syncType` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MarketplaceSyncLog
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `connectionId` is null
      if (is.null(self$`connectionId`)) {
        return(FALSE)
      }

      # check if the required `itemsFailed` is null
      if (is.null(self$`itemsFailed`)) {
        return(FALSE)
      }

      # check if the required `itemsSynced` is null
      if (is.null(self$`itemsSynced`)) {
        return(FALSE)
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        return(FALSE)
      }

      # check if the required `startedAt` is null
      if (is.null(self$`startedAt`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `syncType` is null
      if (is.null(self$`syncType`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `connectionId` is null
      if (is.null(self$`connectionId`)) {
        invalid_fields["connectionId"] <- "Non-nullable required field `connectionId` cannot be null."
      }

      # check if the required `itemsFailed` is null
      if (is.null(self$`itemsFailed`)) {
        invalid_fields["itemsFailed"] <- "Non-nullable required field `itemsFailed` cannot be null."
      }

      # check if the required `itemsSynced` is null
      if (is.null(self$`itemsSynced`)) {
        invalid_fields["itemsSynced"] <- "Non-nullable required field `itemsSynced` cannot be null."
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        invalid_fields["platform"] <- "Non-nullable required field `platform` cannot be null."
      }

      # check if the required `startedAt` is null
      if (is.null(self$`startedAt`)) {
        invalid_fields["startedAt"] <- "Non-nullable required field `startedAt` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `syncType` is null
      if (is.null(self$`syncType`)) {
        invalid_fields["syncType"] <- "Non-nullable required field `syncType` cannot be null."
      }

      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# MarketplaceSyncLog$unlock()
#
## Below is an example to define the print function
# MarketplaceSyncLog$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MarketplaceSyncLog$lock()

