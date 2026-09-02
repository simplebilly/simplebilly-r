#' Create a new GdprExport
#'
#' @description
#' GdprExport Class
#'
#' @docType class
#' @title GdprExport
#' @description GdprExport Class
#' @format An \code{R6Class} generator object
#' @field activityLog  list(\link{GdprActivity})
#' @field apiKeys Key identifiers and names only — never a usable credential. list(\link{GdprApiKey})
#' @field billing  list(\link{GdprBillingInfo})
#' @field exportedAt  character
#' @field generatedByAi Honesty field: this document is a plain data dump, never AI-generated. character
#' @field notifications  list(\link{GdprNotification})
#' @field refreshTokens Session records: metadata only, never the token hash. list(\link{GdprRefreshToken})
#' @field tenants  list(\link{GdprTenant})
#' @field usageEvents  list(\link{GdprUsageEvent})
#' @field user  \link{GdprUser}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GdprExport <- R6::R6Class(
  "GdprExport",
  public = list(
    `activityLog` = NULL,
    `apiKeys` = NULL,
    `billing` = NULL,
    `exportedAt` = NULL,
    `generatedByAi` = NULL,
    `notifications` = NULL,
    `refreshTokens` = NULL,
    `tenants` = NULL,
    `usageEvents` = NULL,
    `user` = NULL,

    #' @description
    #' Initialize a new GdprExport class.
    #'
    #' @param activityLog activityLog
    #' @param apiKeys Key identifiers and names only — never a usable credential.
    #' @param billing billing
    #' @param exportedAt exportedAt
    #' @param generatedByAi Honesty field: this document is a plain data dump, never AI-generated.
    #' @param notifications notifications
    #' @param refreshTokens Session records: metadata only, never the token hash.
    #' @param tenants tenants
    #' @param usageEvents usageEvents
    #' @param user user
    #' @param ... Other optional arguments.
    initialize = function(`activityLog`, `apiKeys`, `billing`, `exportedAt`, `generatedByAi`, `notifications`, `refreshTokens`, `tenants`, `usageEvents`, `user`, ...) {
      if (!missing(`activityLog`)) {
        stopifnot(is.vector(`activityLog`), length(`activityLog`) != 0)
        sapply(`activityLog`, function(x) stopifnot(R6::is.R6(x)))
        self$`activityLog` <- `activityLog`
      }
      if (!missing(`apiKeys`)) {
        stopifnot(is.vector(`apiKeys`), length(`apiKeys`) != 0)
        sapply(`apiKeys`, function(x) stopifnot(R6::is.R6(x)))
        self$`apiKeys` <- `apiKeys`
      }
      if (!missing(`billing`)) {
        stopifnot(is.vector(`billing`), length(`billing`) != 0)
        sapply(`billing`, function(x) stopifnot(R6::is.R6(x)))
        self$`billing` <- `billing`
      }
      if (!missing(`exportedAt`)) {
        if (!(is.character(`exportedAt`) && length(`exportedAt`) == 1)) {
          stop(paste("Error! Invalid data for `exportedAt`. Must be a string:", `exportedAt`))
        }
        self$`exportedAt` <- `exportedAt`
      }
      if (!missing(`generatedByAi`)) {
        if (!(is.logical(`generatedByAi`) && length(`generatedByAi`) == 1)) {
          stop(paste("Error! Invalid data for `generatedByAi`. Must be a boolean:", `generatedByAi`))
        }
        self$`generatedByAi` <- `generatedByAi`
      }
      if (!missing(`notifications`)) {
        stopifnot(is.vector(`notifications`), length(`notifications`) != 0)
        sapply(`notifications`, function(x) stopifnot(R6::is.R6(x)))
        self$`notifications` <- `notifications`
      }
      if (!missing(`refreshTokens`)) {
        stopifnot(is.vector(`refreshTokens`), length(`refreshTokens`) != 0)
        sapply(`refreshTokens`, function(x) stopifnot(R6::is.R6(x)))
        self$`refreshTokens` <- `refreshTokens`
      }
      if (!missing(`tenants`)) {
        stopifnot(is.vector(`tenants`), length(`tenants`) != 0)
        sapply(`tenants`, function(x) stopifnot(R6::is.R6(x)))
        self$`tenants` <- `tenants`
      }
      if (!missing(`usageEvents`)) {
        stopifnot(is.vector(`usageEvents`), length(`usageEvents`) != 0)
        sapply(`usageEvents`, function(x) stopifnot(R6::is.R6(x)))
        self$`usageEvents` <- `usageEvents`
      }
      if (!missing(`user`)) {
        stopifnot(R6::is.R6(`user`))
        self$`user` <- `user`
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
    #' @return GdprExport as a base R list.
    #' @examples
    #' # convert array of GdprExport (x) to a data frame
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
    #' Convert GdprExport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GdprExportObject <- list()
      if (!is.null(self$`activityLog`)) {
        GdprExportObject[["activityLog"]] <-
          self$extractSimpleType(self$`activityLog`)
      }
      if (!is.null(self$`apiKeys`)) {
        GdprExportObject[["apiKeys"]] <-
          self$extractSimpleType(self$`apiKeys`)
      }
      if (!is.null(self$`billing`)) {
        GdprExportObject[["billing"]] <-
          self$extractSimpleType(self$`billing`)
      }
      if (!is.null(self$`exportedAt`)) {
        GdprExportObject[["exportedAt"]] <-
          self$`exportedAt`
      }
      if (!is.null(self$`generatedByAi`)) {
        GdprExportObject[["generatedByAi"]] <-
          self$`generatedByAi`
      }
      if (!is.null(self$`notifications`)) {
        GdprExportObject[["notifications"]] <-
          self$extractSimpleType(self$`notifications`)
      }
      if (!is.null(self$`refreshTokens`)) {
        GdprExportObject[["refreshTokens"]] <-
          self$extractSimpleType(self$`refreshTokens`)
      }
      if (!is.null(self$`tenants`)) {
        GdprExportObject[["tenants"]] <-
          self$extractSimpleType(self$`tenants`)
      }
      if (!is.null(self$`usageEvents`)) {
        GdprExportObject[["usageEvents"]] <-
          self$extractSimpleType(self$`usageEvents`)
      }
      if (!is.null(self$`user`)) {
        GdprExportObject[["user"]] <-
          self$extractSimpleType(self$`user`)
      }
      return(GdprExportObject)
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
    #' Deserialize JSON string into an instance of GdprExport
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprExport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`activityLog`)) {
        self$`activityLog` <- ApiClient$new()$deserializeObj(this_object$`activityLog`, "array[GdprActivity]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`apiKeys`)) {
        self$`apiKeys` <- ApiClient$new()$deserializeObj(this_object$`apiKeys`, "array[GdprApiKey]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`billing`)) {
        self$`billing` <- ApiClient$new()$deserializeObj(this_object$`billing`, "array[GdprBillingInfo]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`exportedAt`)) {
        self$`exportedAt` <- this_object$`exportedAt`
      }
      if (!is.null(this_object$`generatedByAi`)) {
        self$`generatedByAi` <- this_object$`generatedByAi`
      }
      if (!is.null(this_object$`notifications`)) {
        self$`notifications` <- ApiClient$new()$deserializeObj(this_object$`notifications`, "array[GdprNotification]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`refreshTokens`)) {
        self$`refreshTokens` <- ApiClient$new()$deserializeObj(this_object$`refreshTokens`, "array[GdprRefreshToken]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`tenants`)) {
        self$`tenants` <- ApiClient$new()$deserializeObj(this_object$`tenants`, "array[GdprTenant]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`usageEvents`)) {
        self$`usageEvents` <- ApiClient$new()$deserializeObj(this_object$`usageEvents`, "array[GdprUsageEvent]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`user`)) {
        `user_object` <- GdprUser$new()
        `user_object`$fromJSON(jsonlite::toJSON(this_object$`user`, auto_unbox = TRUE, digits = NA))
        self$`user` <- `user_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GdprExport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GdprExport
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprExport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`activityLog` <- ApiClient$new()$deserializeObj(this_object$`activityLog`, "array[GdprActivity]", loadNamespace("openapi"))
      self$`apiKeys` <- ApiClient$new()$deserializeObj(this_object$`apiKeys`, "array[GdprApiKey]", loadNamespace("openapi"))
      self$`billing` <- ApiClient$new()$deserializeObj(this_object$`billing`, "array[GdprBillingInfo]", loadNamespace("openapi"))
      self$`exportedAt` <- this_object$`exportedAt`
      self$`generatedByAi` <- this_object$`generatedByAi`
      self$`notifications` <- ApiClient$new()$deserializeObj(this_object$`notifications`, "array[GdprNotification]", loadNamespace("openapi"))
      self$`refreshTokens` <- ApiClient$new()$deserializeObj(this_object$`refreshTokens`, "array[GdprRefreshToken]", loadNamespace("openapi"))
      self$`tenants` <- ApiClient$new()$deserializeObj(this_object$`tenants`, "array[GdprTenant]", loadNamespace("openapi"))
      self$`usageEvents` <- ApiClient$new()$deserializeObj(this_object$`usageEvents`, "array[GdprUsageEvent]", loadNamespace("openapi"))
      self$`user` <- GdprUser$new()$fromJSON(jsonlite::toJSON(this_object$`user`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to GdprExport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `activityLog`
      if (!is.null(input_json$`activityLog`)) {
        stopifnot(is.vector(input_json$`activityLog`), length(input_json$`activityLog`) != 0)
        tmp <- sapply(input_json$`activityLog`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprExport: the required field `activityLog` is missing."))
      }
      # check the required field `apiKeys`
      if (!is.null(input_json$`apiKeys`)) {
        stopifnot(is.vector(input_json$`apiKeys`), length(input_json$`apiKeys`) != 0)
        tmp <- sapply(input_json$`apiKeys`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprExport: the required field `apiKeys` is missing."))
      }
      # check the required field `billing`
      if (!is.null(input_json$`billing`)) {
        stopifnot(is.vector(input_json$`billing`), length(input_json$`billing`) != 0)
        tmp <- sapply(input_json$`billing`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprExport: the required field `billing` is missing."))
      }
      # check the required field `exportedAt`
      if (!is.null(input_json$`exportedAt`)) {
        if (!(is.character(input_json$`exportedAt`) && length(input_json$`exportedAt`) == 1)) {
          stop(paste("Error! Invalid data for `exportedAt`. Must be a string:", input_json$`exportedAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprExport: the required field `exportedAt` is missing."))
      }
      # check the required field `generatedByAi`
      if (!is.null(input_json$`generatedByAi`)) {
        if (!(is.logical(input_json$`generatedByAi`) && length(input_json$`generatedByAi`) == 1)) {
          stop(paste("Error! Invalid data for `generatedByAi`. Must be a boolean:", input_json$`generatedByAi`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprExport: the required field `generatedByAi` is missing."))
      }
      # check the required field `notifications`
      if (!is.null(input_json$`notifications`)) {
        stopifnot(is.vector(input_json$`notifications`), length(input_json$`notifications`) != 0)
        tmp <- sapply(input_json$`notifications`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprExport: the required field `notifications` is missing."))
      }
      # check the required field `refreshTokens`
      if (!is.null(input_json$`refreshTokens`)) {
        stopifnot(is.vector(input_json$`refreshTokens`), length(input_json$`refreshTokens`) != 0)
        tmp <- sapply(input_json$`refreshTokens`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprExport: the required field `refreshTokens` is missing."))
      }
      # check the required field `tenants`
      if (!is.null(input_json$`tenants`)) {
        stopifnot(is.vector(input_json$`tenants`), length(input_json$`tenants`) != 0)
        tmp <- sapply(input_json$`tenants`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprExport: the required field `tenants` is missing."))
      }
      # check the required field `usageEvents`
      if (!is.null(input_json$`usageEvents`)) {
        stopifnot(is.vector(input_json$`usageEvents`), length(input_json$`usageEvents`) != 0)
        tmp <- sapply(input_json$`usageEvents`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprExport: the required field `usageEvents` is missing."))
      }
      # check the required field `user`
      if (!is.null(input_json$`user`)) {
        stopifnot(R6::is.R6(input_json$`user`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprExport: the required field `user` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GdprExport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `activityLog` is null
      if (is.null(self$`activityLog`)) {
        return(FALSE)
      }

      # check if the required `apiKeys` is null
      if (is.null(self$`apiKeys`)) {
        return(FALSE)
      }

      # check if the required `billing` is null
      if (is.null(self$`billing`)) {
        return(FALSE)
      }

      # check if the required `exportedAt` is null
      if (is.null(self$`exportedAt`)) {
        return(FALSE)
      }

      # check if the required `generatedByAi` is null
      if (is.null(self$`generatedByAi`)) {
        return(FALSE)
      }

      # check if the required `notifications` is null
      if (is.null(self$`notifications`)) {
        return(FALSE)
      }

      # check if the required `refreshTokens` is null
      if (is.null(self$`refreshTokens`)) {
        return(FALSE)
      }

      # check if the required `tenants` is null
      if (is.null(self$`tenants`)) {
        return(FALSE)
      }

      # check if the required `usageEvents` is null
      if (is.null(self$`usageEvents`)) {
        return(FALSE)
      }

      # check if the required `user` is null
      if (is.null(self$`user`)) {
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
      # check if the required `activityLog` is null
      if (is.null(self$`activityLog`)) {
        invalid_fields["activityLog"] <- "Non-nullable required field `activityLog` cannot be null."
      }

      # check if the required `apiKeys` is null
      if (is.null(self$`apiKeys`)) {
        invalid_fields["apiKeys"] <- "Non-nullable required field `apiKeys` cannot be null."
      }

      # check if the required `billing` is null
      if (is.null(self$`billing`)) {
        invalid_fields["billing"] <- "Non-nullable required field `billing` cannot be null."
      }

      # check if the required `exportedAt` is null
      if (is.null(self$`exportedAt`)) {
        invalid_fields["exportedAt"] <- "Non-nullable required field `exportedAt` cannot be null."
      }

      # check if the required `generatedByAi` is null
      if (is.null(self$`generatedByAi`)) {
        invalid_fields["generatedByAi"] <- "Non-nullable required field `generatedByAi` cannot be null."
      }

      # check if the required `notifications` is null
      if (is.null(self$`notifications`)) {
        invalid_fields["notifications"] <- "Non-nullable required field `notifications` cannot be null."
      }

      # check if the required `refreshTokens` is null
      if (is.null(self$`refreshTokens`)) {
        invalid_fields["refreshTokens"] <- "Non-nullable required field `refreshTokens` cannot be null."
      }

      # check if the required `tenants` is null
      if (is.null(self$`tenants`)) {
        invalid_fields["tenants"] <- "Non-nullable required field `tenants` cannot be null."
      }

      # check if the required `usageEvents` is null
      if (is.null(self$`usageEvents`)) {
        invalid_fields["usageEvents"] <- "Non-nullable required field `usageEvents` cannot be null."
      }

      # check if the required `user` is null
      if (is.null(self$`user`)) {
        invalid_fields["user"] <- "Non-nullable required field `user` cannot be null."
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
# GdprExport$unlock()
#
## Below is an example to define the print function
# GdprExport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GdprExport$lock()

