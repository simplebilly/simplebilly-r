#' Create a new CategoryTotal
#'
#' @description
#' CategoryTotal Class
#'
#' @docType class
#' @title CategoryTotal
#' @description CategoryTotal Class
#' @format An \code{R6Class} generator object
#' @field category_id  character
#' @field share_pct  numeric
#' @field tco2e  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CategoryTotal <- R6::R6Class(
  "CategoryTotal",
  public = list(
    `category_id` = NULL,
    `share_pct` = NULL,
    `tco2e` = NULL,

    #' @description
    #' Initialize a new CategoryTotal class.
    #'
    #' @param category_id category_id
    #' @param share_pct share_pct
    #' @param tco2e tco2e
    #' @param ... Other optional arguments.
    initialize = function(`category_id`, `share_pct`, `tco2e`, ...) {
      if (!missing(`category_id`)) {
        if (!(is.character(`category_id`) && length(`category_id`) == 1)) {
          stop(paste("Error! Invalid data for `category_id`. Must be a string:", `category_id`))
        }
        self$`category_id` <- `category_id`
      }
      if (!missing(`share_pct`)) {
        if (!(is.numeric(`share_pct`) && length(`share_pct`) == 1)) {
          stop(paste("Error! Invalid data for `share_pct`. Must be a number:", `share_pct`))
        }
        self$`share_pct` <- `share_pct`
      }
      if (!missing(`tco2e`)) {
        if (!(is.character(`tco2e`) && length(`tco2e`) == 1)) {
          stop(paste("Error! Invalid data for `tco2e`. Must be a string:", `tco2e`))
        }
        self$`tco2e` <- `tco2e`
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
    #' @return CategoryTotal as a base R list.
    #' @examples
    #' # convert array of CategoryTotal (x) to a data frame
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
    #' Convert CategoryTotal to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CategoryTotalObject <- list()
      if (!is.null(self$`category_id`)) {
        CategoryTotalObject[["category_id"]] <-
          self$`category_id`
      }
      if (!is.null(self$`share_pct`)) {
        CategoryTotalObject[["share_pct"]] <-
          self$`share_pct`
      }
      if (!is.null(self$`tco2e`)) {
        CategoryTotalObject[["tco2e"]] <-
          self$`tco2e`
      }
      return(CategoryTotalObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CategoryTotal
    #'
    #' @param input_json the JSON input
    #' @return the instance of CategoryTotal
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`category_id`)) {
        self$`category_id` <- this_object$`category_id`
      }
      if (!is.null(this_object$`share_pct`)) {
        self$`share_pct` <- this_object$`share_pct`
      }
      if (!is.null(this_object$`tco2e`)) {
        self$`tco2e` <- this_object$`tco2e`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CategoryTotal in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CategoryTotal
    #'
    #' @param input_json the JSON input
    #' @return the instance of CategoryTotal
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`category_id` <- this_object$`category_id`
      self$`share_pct` <- this_object$`share_pct`
      self$`tco2e` <- this_object$`tco2e`
      self
    },

    #' @description
    #' Validate JSON input with respect to CategoryTotal and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `category_id`
      if (!is.null(input_json$`category_id`)) {
        if (!(is.character(input_json$`category_id`) && length(input_json$`category_id`) == 1)) {
          stop(paste("Error! Invalid data for `category_id`. Must be a string:", input_json$`category_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CategoryTotal: the required field `category_id` is missing."))
      }
      # check the required field `share_pct`
      if (!is.null(input_json$`share_pct`)) {
        if (!(is.numeric(input_json$`share_pct`) && length(input_json$`share_pct`) == 1)) {
          stop(paste("Error! Invalid data for `share_pct`. Must be a number:", input_json$`share_pct`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CategoryTotal: the required field `share_pct` is missing."))
      }
      # check the required field `tco2e`
      if (!is.null(input_json$`tco2e`)) {
        if (!(is.character(input_json$`tco2e`) && length(input_json$`tco2e`) == 1)) {
          stop(paste("Error! Invalid data for `tco2e`. Must be a string:", input_json$`tco2e`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CategoryTotal: the required field `tco2e` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CategoryTotal
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `category_id` is null
      if (is.null(self$`category_id`)) {
        return(FALSE)
      }

      # check if the required `share_pct` is null
      if (is.null(self$`share_pct`)) {
        return(FALSE)
      }

      # check if the required `tco2e` is null
      if (is.null(self$`tco2e`)) {
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
      # check if the required `category_id` is null
      if (is.null(self$`category_id`)) {
        invalid_fields["category_id"] <- "Non-nullable required field `category_id` cannot be null."
      }

      # check if the required `share_pct` is null
      if (is.null(self$`share_pct`)) {
        invalid_fields["share_pct"] <- "Non-nullable required field `share_pct` cannot be null."
      }

      # check if the required `tco2e` is null
      if (is.null(self$`tco2e`)) {
        invalid_fields["tco2e"] <- "Non-nullable required field `tco2e` cannot be null."
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
# CategoryTotal$unlock()
#
## Below is an example to define the print function
# CategoryTotal$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CategoryTotal$lock()

