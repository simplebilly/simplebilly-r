#' Create a new PublicReturnStatusResponse
#'
#' @description
#' PublicReturnStatusResponse Class
#'
#' @docType class
#' @title PublicReturnStatusResponse
#' @description PublicReturnStatusResponse Class
#' @format An \code{R6Class} generator object
#' @field createdAt  character
#' @field items  \link{AnyType}
#' @field notes  character [optional]
#' @field orderNumber  character [optional]
#' @field returnNumber  character
#' @field returnOrderId  character
#' @field status  character
#' @field updatedAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PublicReturnStatusResponse <- R6::R6Class(
  "PublicReturnStatusResponse",
  public = list(
    `createdAt` = NULL,
    `items` = NULL,
    `notes` = NULL,
    `orderNumber` = NULL,
    `returnNumber` = NULL,
    `returnOrderId` = NULL,
    `status` = NULL,
    `updatedAt` = NULL,

    #' @description
    #' Initialize a new PublicReturnStatusResponse class.
    #'
    #' @param createdAt createdAt
    #' @param items items
    #' @param returnNumber returnNumber
    #' @param returnOrderId returnOrderId
    #' @param status status
    #' @param notes notes
    #' @param orderNumber orderNumber
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    initialize = function(`createdAt`, `items`, `returnNumber`, `returnOrderId`, `status`, `notes` = NULL, `orderNumber` = NULL, `updatedAt` = NULL, ...) {
      if (!missing(`createdAt`)) {
        if (!(is.character(`createdAt`) && length(`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!missing(`items`)) {
        stopifnot(R6::is.R6(`items`))
        self$`items` <- `items`
      }
      if (!missing(`returnNumber`)) {
        if (!(is.character(`returnNumber`) && length(`returnNumber`) == 1)) {
          stop(paste("Error! Invalid data for `returnNumber`. Must be a string:", `returnNumber`))
        }
        self$`returnNumber` <- `returnNumber`
      }
      if (!missing(`returnOrderId`)) {
        if (!(is.character(`returnOrderId`) && length(`returnOrderId`) == 1)) {
          stop(paste("Error! Invalid data for `returnOrderId`. Must be a string:", `returnOrderId`))
        }
        self$`returnOrderId` <- `returnOrderId`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`orderNumber`)) {
        if (!(is.character(`orderNumber`) && length(`orderNumber`) == 1)) {
          stop(paste("Error! Invalid data for `orderNumber`. Must be a string:", `orderNumber`))
        }
        self$`orderNumber` <- `orderNumber`
      }
      if (!is.null(`updatedAt`)) {
        if (!is.character(`updatedAt`)) {
          stop(paste("Error! Invalid data for `updatedAt`. Must be a string:", `updatedAt`))
        }
        self$`updatedAt` <- `updatedAt`
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
    #' @return PublicReturnStatusResponse as a base R list.
    #' @examples
    #' # convert array of PublicReturnStatusResponse (x) to a data frame
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
    #' Convert PublicReturnStatusResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PublicReturnStatusResponseObject <- list()
      if (!is.null(self$`createdAt`)) {
        PublicReturnStatusResponseObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`items`)) {
        PublicReturnStatusResponseObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`notes`)) {
        PublicReturnStatusResponseObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`orderNumber`)) {
        PublicReturnStatusResponseObject[["orderNumber"]] <-
          self$`orderNumber`
      }
      if (!is.null(self$`returnNumber`)) {
        PublicReturnStatusResponseObject[["returnNumber"]] <-
          self$`returnNumber`
      }
      if (!is.null(self$`returnOrderId`)) {
        PublicReturnStatusResponseObject[["returnOrderId"]] <-
          self$`returnOrderId`
      }
      if (!is.null(self$`status`)) {
        PublicReturnStatusResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`updatedAt`)) {
        PublicReturnStatusResponseObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      return(PublicReturnStatusResponseObject)
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
    #' Deserialize JSON string into an instance of PublicReturnStatusResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PublicReturnStatusResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`items`)) {
        `items_object` <- AnyType$new()
        `items_object`$fromJSON(jsonlite::toJSON(this_object$`items`, auto_unbox = TRUE, digits = NA))
        self$`items` <- `items_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`orderNumber`)) {
        self$`orderNumber` <- this_object$`orderNumber`
      }
      if (!is.null(this_object$`returnNumber`)) {
        self$`returnNumber` <- this_object$`returnNumber`
      }
      if (!is.null(this_object$`returnOrderId`)) {
        self$`returnOrderId` <- this_object$`returnOrderId`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`updatedAt`)) {
        self$`updatedAt` <- this_object$`updatedAt`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PublicReturnStatusResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PublicReturnStatusResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PublicReturnStatusResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`createdAt` <- this_object$`createdAt`
      self$`items` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`items`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- this_object$`notes`
      self$`orderNumber` <- this_object$`orderNumber`
      self$`returnNumber` <- this_object$`returnNumber`
      self$`returnOrderId` <- this_object$`returnOrderId`
      self$`status` <- this_object$`status`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },

    #' @description
    #' Validate JSON input with respect to PublicReturnStatusResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `createdAt`
      if (!is.null(input_json$`createdAt`)) {
        if (!(is.character(input_json$`createdAt`) && length(input_json$`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", input_json$`createdAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicReturnStatusResponse: the required field `createdAt` is missing."))
      }
      # check the required field `items`
      if (!is.null(input_json$`items`)) {
        stopifnot(R6::is.R6(input_json$`items`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicReturnStatusResponse: the required field `items` is missing."))
      }
      # check the required field `returnNumber`
      if (!is.null(input_json$`returnNumber`)) {
        if (!(is.character(input_json$`returnNumber`) && length(input_json$`returnNumber`) == 1)) {
          stop(paste("Error! Invalid data for `returnNumber`. Must be a string:", input_json$`returnNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicReturnStatusResponse: the required field `returnNumber` is missing."))
      }
      # check the required field `returnOrderId`
      if (!is.null(input_json$`returnOrderId`)) {
        if (!(is.character(input_json$`returnOrderId`) && length(input_json$`returnOrderId`) == 1)) {
          stop(paste("Error! Invalid data for `returnOrderId`. Must be a string:", input_json$`returnOrderId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicReturnStatusResponse: the required field `returnOrderId` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicReturnStatusResponse: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PublicReturnStatusResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        return(FALSE)
      }

      # check if the required `returnNumber` is null
      if (is.null(self$`returnNumber`)) {
        return(FALSE)
      }

      # check if the required `returnOrderId` is null
      if (is.null(self$`returnOrderId`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
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
      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        invalid_fields["createdAt"] <- "Non-nullable required field `createdAt` cannot be null."
      }

      # check if the required `returnNumber` is null
      if (is.null(self$`returnNumber`)) {
        invalid_fields["returnNumber"] <- "Non-nullable required field `returnNumber` cannot be null."
      }

      # check if the required `returnOrderId` is null
      if (is.null(self$`returnOrderId`)) {
        invalid_fields["returnOrderId"] <- "Non-nullable required field `returnOrderId` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# PublicReturnStatusResponse$unlock()
#
## Below is an example to define the print function
# PublicReturnStatusResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PublicReturnStatusResponse$lock()

