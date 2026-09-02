#' Create a new GenerateCountRequest
#'
#' @description
#' Body for the cycle-count generator: create a draft count document for a warehouse, optionally restricted to a set of product ids.
#'
#' @docType class
#' @title GenerateCountRequest
#' @description GenerateCountRequest Class
#' @format An \code{R6Class} generator object
#' @field notes  character [optional]
#' @field productIds  list(character) [optional]
#' @field warehouseId  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenerateCountRequest <- R6::R6Class(
  "GenerateCountRequest",
  public = list(
    `notes` = NULL,
    `productIds` = NULL,
    `warehouseId` = NULL,

    #' @description
    #' Initialize a new GenerateCountRequest class.
    #'
    #' @param warehouseId warehouseId
    #' @param notes notes
    #' @param productIds productIds
    #' @param ... Other optional arguments.
    initialize = function(`warehouseId`, `notes` = NULL, `productIds` = NULL, ...) {
      if (!missing(`warehouseId`)) {
        if (!(is.character(`warehouseId`) && length(`warehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseId`. Must be a string:", `warehouseId`))
        }
        self$`warehouseId` <- `warehouseId`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`productIds`)) {
        stopifnot(is.vector(`productIds`), length(`productIds`) != 0)
        sapply(`productIds`, function(x) stopifnot(is.character(x)))
        self$`productIds` <- `productIds`
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
    #' @return GenerateCountRequest as a base R list.
    #' @examples
    #' # convert array of GenerateCountRequest (x) to a data frame
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
    #' Convert GenerateCountRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenerateCountRequestObject <- list()
      if (!is.null(self$`notes`)) {
        GenerateCountRequestObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`productIds`)) {
        GenerateCountRequestObject[["productIds"]] <-
          self$`productIds`
      }
      if (!is.null(self$`warehouseId`)) {
        GenerateCountRequestObject[["warehouseId"]] <-
          self$`warehouseId`
      }
      return(GenerateCountRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GenerateCountRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenerateCountRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`productIds`)) {
        self$`productIds` <- ApiClient$new()$deserializeObj(this_object$`productIds`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`warehouseId`)) {
        self$`warehouseId` <- this_object$`warehouseId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenerateCountRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenerateCountRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenerateCountRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`notes` <- this_object$`notes`
      self$`productIds` <- ApiClient$new()$deserializeObj(this_object$`productIds`, "array[character]", loadNamespace("openapi"))
      self$`warehouseId` <- this_object$`warehouseId`
      self
    },

    #' @description
    #' Validate JSON input with respect to GenerateCountRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `warehouseId`
      if (!is.null(input_json$`warehouseId`)) {
        if (!(is.character(input_json$`warehouseId`) && length(input_json$`warehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseId`. Must be a string:", input_json$`warehouseId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GenerateCountRequest: the required field `warehouseId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenerateCountRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `warehouseId` is null
      if (is.null(self$`warehouseId`)) {
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
      # check if the required `warehouseId` is null
      if (is.null(self$`warehouseId`)) {
        invalid_fields["warehouseId"] <- "Non-nullable required field `warehouseId` cannot be null."
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
# GenerateCountRequest$unlock()
#
## Below is an example to define the print function
# GenerateCountRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenerateCountRequest$lock()

