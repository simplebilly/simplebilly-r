#' Create a new OrderTagsRequest
#'
#' @description
#' OrderTagsRequest Class
#'
#' @docType class
#' @title OrderTagsRequest
#' @description OrderTagsRequest Class
#' @format An \code{R6Class} generator object
#' @field tags  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrderTagsRequest <- R6::R6Class(
  "OrderTagsRequest",
  public = list(
    `tags` = NULL,

    #' @description
    #' Initialize a new OrderTagsRequest class.
    #'
    #' @param tags tags
    #' @param ... Other optional arguments.
    initialize = function(`tags`, ...) {
      if (!missing(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
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
    #' @return OrderTagsRequest as a base R list.
    #' @examples
    #' # convert array of OrderTagsRequest (x) to a data frame
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
    #' Convert OrderTagsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrderTagsRequestObject <- list()
      if (!is.null(self$`tags`)) {
        OrderTagsRequestObject[["tags"]] <-
          self$`tags`
      }
      return(OrderTagsRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OrderTagsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderTagsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrderTagsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrderTagsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderTagsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to OrderTagsRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `tags`
      if (!is.null(input_json$`tags`)) {
        stopifnot(is.vector(input_json$`tags`), length(input_json$`tags`) != 0)
        tmp <- sapply(input_json$`tags`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderTagsRequest: the required field `tags` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrderTagsRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `tags` is null
      if (is.null(self$`tags`)) {
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
      # check if the required `tags` is null
      if (is.null(self$`tags`)) {
        invalid_fields["tags"] <- "Non-nullable required field `tags` cannot be null."
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
# OrderTagsRequest$unlock()
#
## Below is an example to define the print function
# OrderTagsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrderTagsRequest$lock()

