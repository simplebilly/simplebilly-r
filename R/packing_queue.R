#' Create a new PackingQueue
#'
#' @description
#' PackingQueue Class
#'
#' @docType class
#' @title PackingQueue
#' @description PackingQueue Class
#' @format An \code{R6Class} generator object
#' @field items  list(\link{PackingQueueItem})
#' @field page  integer
#' @field page_size  integer
#' @field total_count  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PackingQueue <- R6::R6Class(
  "PackingQueue",
  public = list(
    `items` = NULL,
    `page` = NULL,
    `page_size` = NULL,
    `total_count` = NULL,

    #' @description
    #' Initialize a new PackingQueue class.
    #'
    #' @param items items
    #' @param page page
    #' @param page_size page_size
    #' @param total_count total_count
    #' @param ... Other optional arguments.
    initialize = function(`items`, `page`, `page_size`, `total_count`, ...) {
      if (!missing(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!missing(`page`)) {
        if (!(is.numeric(`page`) && length(`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", `page`))
        }
        self$`page` <- `page`
      }
      if (!missing(`page_size`)) {
        if (!(is.numeric(`page_size`) && length(`page_size`) == 1)) {
          stop(paste("Error! Invalid data for `page_size`. Must be an integer:", `page_size`))
        }
        self$`page_size` <- `page_size`
      }
      if (!missing(`total_count`)) {
        if (!(is.numeric(`total_count`) && length(`total_count`) == 1)) {
          stop(paste("Error! Invalid data for `total_count`. Must be an integer:", `total_count`))
        }
        self$`total_count` <- `total_count`
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
    #' @return PackingQueue as a base R list.
    #' @examples
    #' # convert array of PackingQueue (x) to a data frame
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
    #' Convert PackingQueue to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PackingQueueObject <- list()
      if (!is.null(self$`items`)) {
        PackingQueueObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`page`)) {
        PackingQueueObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`page_size`)) {
        PackingQueueObject[["page_size"]] <-
          self$`page_size`
      }
      if (!is.null(self$`total_count`)) {
        PackingQueueObject[["total_count"]] <-
          self$`total_count`
      }
      return(PackingQueueObject)
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
    #' Deserialize JSON string into an instance of PackingQueue
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackingQueue
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[PackingQueueItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`page`)) {
        self$`page` <- this_object$`page`
      }
      if (!is.null(this_object$`page_size`)) {
        self$`page_size` <- this_object$`page_size`
      }
      if (!is.null(this_object$`total_count`)) {
        self$`total_count` <- this_object$`total_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PackingQueue in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PackingQueue
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackingQueue
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[PackingQueueItem]", loadNamespace("openapi"))
      self$`page` <- this_object$`page`
      self$`page_size` <- this_object$`page_size`
      self$`total_count` <- this_object$`total_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to PackingQueue and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `items`
      if (!is.null(input_json$`items`)) {
        stopifnot(is.vector(input_json$`items`), length(input_json$`items`) != 0)
        tmp <- sapply(input_json$`items`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingQueue: the required field `items` is missing."))
      }
      # check the required field `page`
      if (!is.null(input_json$`page`)) {
        if (!(is.numeric(input_json$`page`) && length(input_json$`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", input_json$`page`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingQueue: the required field `page` is missing."))
      }
      # check the required field `page_size`
      if (!is.null(input_json$`page_size`)) {
        if (!(is.numeric(input_json$`page_size`) && length(input_json$`page_size`) == 1)) {
          stop(paste("Error! Invalid data for `page_size`. Must be an integer:", input_json$`page_size`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingQueue: the required field `page_size` is missing."))
      }
      # check the required field `total_count`
      if (!is.null(input_json$`total_count`)) {
        if (!(is.numeric(input_json$`total_count`) && length(input_json$`total_count`) == 1)) {
          stop(paste("Error! Invalid data for `total_count`. Must be an integer:", input_json$`total_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingQueue: the required field `total_count` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PackingQueue
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `items` is null
      if (is.null(self$`items`)) {
        return(FALSE)
      }

      # check if the required `page` is null
      if (is.null(self$`page`)) {
        return(FALSE)
      }

      if (self$`page` < 0) {
        return(FALSE)
      }

      # check if the required `page_size` is null
      if (is.null(self$`page_size`)) {
        return(FALSE)
      }

      if (self$`page_size` < 0) {
        return(FALSE)
      }

      # check if the required `total_count` is null
      if (is.null(self$`total_count`)) {
        return(FALSE)
      }

      if (self$`total_count` < 0) {
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
      # check if the required `items` is null
      if (is.null(self$`items`)) {
        invalid_fields["items"] <- "Non-nullable required field `items` cannot be null."
      }

      # check if the required `page` is null
      if (is.null(self$`page`)) {
        invalid_fields["page"] <- "Non-nullable required field `page` cannot be null."
      }

      if (self$`page` < 0) {
        invalid_fields["page"] <- "Invalid value for `page`, must be bigger than or equal to 0."
      }

      # check if the required `page_size` is null
      if (is.null(self$`page_size`)) {
        invalid_fields["page_size"] <- "Non-nullable required field `page_size` cannot be null."
      }

      if (self$`page_size` < 0) {
        invalid_fields["page_size"] <- "Invalid value for `page_size`, must be bigger than or equal to 0."
      }

      # check if the required `total_count` is null
      if (is.null(self$`total_count`)) {
        invalid_fields["total_count"] <- "Non-nullable required field `total_count` cannot be null."
      }

      if (self$`total_count` < 0) {
        invalid_fields["total_count"] <- "Invalid value for `total_count`, must be bigger than or equal to 0."
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
# PackingQueue$unlock()
#
## Below is an example to define the print function
# PackingQueue$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PackingQueue$lock()

