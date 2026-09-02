#' Create a new ApiResponseVecPlanDataInner
#'
#' @description
#' One canonical plan. `price_eur == -1.0` means custom pricing.
#'
#' @docType class
#' @title ApiResponseVecPlanDataInner
#' @description ApiResponseVecPlanDataInner Class
#' @format An \code{R6Class} generator object
#' @field features  \link{PlanFeatures}
#' @field id  character
#' @field limits  \link{PlanLimits}
#' @field name  character
#' @field priceEur  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseVecPlanDataInner <- R6::R6Class(
  "ApiResponseVecPlanDataInner",
  public = list(
    `features` = NULL,
    `id` = NULL,
    `limits` = NULL,
    `name` = NULL,
    `priceEur` = NULL,

    #' @description
    #' Initialize a new ApiResponseVecPlanDataInner class.
    #'
    #' @param features features
    #' @param id id
    #' @param limits limits
    #' @param name name
    #' @param priceEur priceEur
    #' @param ... Other optional arguments.
    initialize = function(`features`, `id`, `limits`, `name`, `priceEur`, ...) {
      if (!missing(`features`)) {
        stopifnot(R6::is.R6(`features`))
        self$`features` <- `features`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`limits`)) {
        stopifnot(R6::is.R6(`limits`))
        self$`limits` <- `limits`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`priceEur`)) {
        if (!(is.numeric(`priceEur`) && length(`priceEur`) == 1)) {
          stop(paste("Error! Invalid data for `priceEur`. Must be a number:", `priceEur`))
        }
        self$`priceEur` <- `priceEur`
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
    #' @return ApiResponseVecPlanDataInner as a base R list.
    #' @examples
    #' # convert array of ApiResponseVecPlanDataInner (x) to a data frame
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
    #' Convert ApiResponseVecPlanDataInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApiResponseVecPlanDataInnerObject <- list()
      if (!is.null(self$`features`)) {
        ApiResponseVecPlanDataInnerObject[["features"]] <-
          self$extractSimpleType(self$`features`)
      }
      if (!is.null(self$`id`)) {
        ApiResponseVecPlanDataInnerObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`limits`)) {
        ApiResponseVecPlanDataInnerObject[["limits"]] <-
          self$extractSimpleType(self$`limits`)
      }
      if (!is.null(self$`name`)) {
        ApiResponseVecPlanDataInnerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`priceEur`)) {
        ApiResponseVecPlanDataInnerObject[["priceEur"]] <-
          self$`priceEur`
      }
      return(ApiResponseVecPlanDataInnerObject)
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
    #' Deserialize JSON string into an instance of ApiResponseVecPlanDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiResponseVecPlanDataInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`features`)) {
        `features_object` <- PlanFeatures$new()
        `features_object`$fromJSON(jsonlite::toJSON(this_object$`features`, auto_unbox = TRUE, digits = NA))
        self$`features` <- `features_object`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`limits`)) {
        `limits_object` <- PlanLimits$new()
        `limits_object`$fromJSON(jsonlite::toJSON(this_object$`limits`, auto_unbox = TRUE, digits = NA))
        self$`limits` <- `limits_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`priceEur`)) {
        self$`priceEur` <- this_object$`priceEur`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ApiResponseVecPlanDataInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApiResponseVecPlanDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiResponseVecPlanDataInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`features` <- PlanFeatures$new()$fromJSON(jsonlite::toJSON(this_object$`features`, auto_unbox = TRUE, digits = NA))
      self$`id` <- this_object$`id`
      self$`limits` <- PlanLimits$new()$fromJSON(jsonlite::toJSON(this_object$`limits`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`priceEur` <- this_object$`priceEur`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApiResponseVecPlanDataInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `features`
      if (!is.null(input_json$`features`)) {
        stopifnot(R6::is.R6(input_json$`features`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseVecPlanDataInner: the required field `features` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseVecPlanDataInner: the required field `id` is missing."))
      }
      # check the required field `limits`
      if (!is.null(input_json$`limits`)) {
        stopifnot(R6::is.R6(input_json$`limits`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseVecPlanDataInner: the required field `limits` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseVecPlanDataInner: the required field `name` is missing."))
      }
      # check the required field `priceEur`
      if (!is.null(input_json$`priceEur`)) {
        if (!(is.numeric(input_json$`priceEur`) && length(input_json$`priceEur`) == 1)) {
          stop(paste("Error! Invalid data for `priceEur`. Must be a number:", input_json$`priceEur`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseVecPlanDataInner: the required field `priceEur` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApiResponseVecPlanDataInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `features` is null
      if (is.null(self$`features`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `limits` is null
      if (is.null(self$`limits`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `priceEur` is null
      if (is.null(self$`priceEur`)) {
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
      # check if the required `features` is null
      if (is.null(self$`features`)) {
        invalid_fields["features"] <- "Non-nullable required field `features` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `limits` is null
      if (is.null(self$`limits`)) {
        invalid_fields["limits"] <- "Non-nullable required field `limits` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `priceEur` is null
      if (is.null(self$`priceEur`)) {
        invalid_fields["priceEur"] <- "Non-nullable required field `priceEur` cannot be null."
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
# ApiResponseVecPlanDataInner$unlock()
#
## Below is an example to define the print function
# ApiResponseVecPlanDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApiResponseVecPlanDataInner$lock()

