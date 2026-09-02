#' Create a new UpdateSyncDirectionRequest
#'
#' @description
#' UpdateSyncDirectionRequest Class
#'
#' @docType class
#' @title UpdateSyncDirectionRequest
#' @description UpdateSyncDirectionRequest Class
#' @format An \code{R6Class} generator object
#' @field directions  named list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateSyncDirectionRequest <- R6::R6Class(
  "UpdateSyncDirectionRequest",
  public = list(
    `directions` = NULL,

    #' @description
    #' Initialize a new UpdateSyncDirectionRequest class.
    #'
    #' @param directions directions
    #' @param ... Other optional arguments.
    initialize = function(`directions`, ...) {
      if (!missing(`directions`)) {
        stopifnot(is.vector(`directions`), length(`directions`) != 0)
        sapply(`directions`, function(x) stopifnot(is.character(x)))
        self$`directions` <- `directions`
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
    #' @return UpdateSyncDirectionRequest as a base R list.
    #' @examples
    #' # convert array of UpdateSyncDirectionRequest (x) to a data frame
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
    #' Convert UpdateSyncDirectionRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdateSyncDirectionRequestObject <- list()
      if (!is.null(self$`directions`)) {
        UpdateSyncDirectionRequestObject[["directions"]] <-
          self$`directions`
      }
      return(UpdateSyncDirectionRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateSyncDirectionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateSyncDirectionRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`directions`)) {
        self$`directions` <- ApiClient$new()$deserializeObj(this_object$`directions`, "map(character)", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UpdateSyncDirectionRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateSyncDirectionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateSyncDirectionRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`directions` <- ApiClient$new()$deserializeObj(this_object$`directions`, "map(character)", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateSyncDirectionRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `directions`
      if (!is.null(input_json$`directions`)) {
        stopifnot(is.vector(input_json$`directions`), length(input_json$`directions`) != 0)
        tmp <- sapply(input_json$`directions`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UpdateSyncDirectionRequest: the required field `directions` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateSyncDirectionRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `directions` is null
      if (is.null(self$`directions`)) {
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
      # check if the required `directions` is null
      if (is.null(self$`directions`)) {
        invalid_fields["directions"] <- "Non-nullable required field `directions` cannot be null."
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
# UpdateSyncDirectionRequest$unlock()
#
## Below is an example to define the print function
# UpdateSyncDirectionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateSyncDirectionRequest$lock()

