#' Create a new ReorderProposalLine
#'
#' @description
#' A single reorder proposal line.
#'
#' @docType class
#' @title ReorderProposalLine
#' @description ReorderProposalLine Class
#' @format An \code{R6Class} generator object
#' @field currentStock  integer
#' @field maxStock  integer [optional]
#' @field minStock  integer [optional]
#' @field productId  character
#' @field productName  character
#' @field reorderQuantity  integer [optional]
#' @field sku  character
#' @field suggestedQuantity  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReorderProposalLine <- R6::R6Class(
  "ReorderProposalLine",
  public = list(
    `currentStock` = NULL,
    `maxStock` = NULL,
    `minStock` = NULL,
    `productId` = NULL,
    `productName` = NULL,
    `reorderQuantity` = NULL,
    `sku` = NULL,
    `suggestedQuantity` = NULL,

    #' @description
    #' Initialize a new ReorderProposalLine class.
    #'
    #' @param currentStock currentStock
    #' @param productId productId
    #' @param productName productName
    #' @param sku sku
    #' @param suggestedQuantity suggestedQuantity
    #' @param maxStock maxStock
    #' @param minStock minStock
    #' @param reorderQuantity reorderQuantity
    #' @param ... Other optional arguments.
    initialize = function(`currentStock`, `productId`, `productName`, `sku`, `suggestedQuantity`, `maxStock` = NULL, `minStock` = NULL, `reorderQuantity` = NULL, ...) {
      if (!missing(`currentStock`)) {
        if (!(is.numeric(`currentStock`) && length(`currentStock`) == 1)) {
          stop(paste("Error! Invalid data for `currentStock`. Must be an integer:", `currentStock`))
        }
        self$`currentStock` <- `currentStock`
      }
      if (!missing(`productId`)) {
        if (!(is.character(`productId`) && length(`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", `productId`))
        }
        self$`productId` <- `productId`
      }
      if (!missing(`productName`)) {
        if (!(is.character(`productName`) && length(`productName`) == 1)) {
          stop(paste("Error! Invalid data for `productName`. Must be a string:", `productName`))
        }
        self$`productName` <- `productName`
      }
      if (!missing(`sku`)) {
        if (!(is.character(`sku`) && length(`sku`) == 1)) {
          stop(paste("Error! Invalid data for `sku`. Must be a string:", `sku`))
        }
        self$`sku` <- `sku`
      }
      if (!missing(`suggestedQuantity`)) {
        if (!(is.numeric(`suggestedQuantity`) && length(`suggestedQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `suggestedQuantity`. Must be an integer:", `suggestedQuantity`))
        }
        self$`suggestedQuantity` <- `suggestedQuantity`
      }
      if (!is.null(`maxStock`)) {
        if (!(is.numeric(`maxStock`) && length(`maxStock`) == 1)) {
          stop(paste("Error! Invalid data for `maxStock`. Must be an integer:", `maxStock`))
        }
        self$`maxStock` <- `maxStock`
      }
      if (!is.null(`minStock`)) {
        if (!(is.numeric(`minStock`) && length(`minStock`) == 1)) {
          stop(paste("Error! Invalid data for `minStock`. Must be an integer:", `minStock`))
        }
        self$`minStock` <- `minStock`
      }
      if (!is.null(`reorderQuantity`)) {
        if (!(is.numeric(`reorderQuantity`) && length(`reorderQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `reorderQuantity`. Must be an integer:", `reorderQuantity`))
        }
        self$`reorderQuantity` <- `reorderQuantity`
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
    #' @return ReorderProposalLine as a base R list.
    #' @examples
    #' # convert array of ReorderProposalLine (x) to a data frame
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
    #' Convert ReorderProposalLine to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReorderProposalLineObject <- list()
      if (!is.null(self$`currentStock`)) {
        ReorderProposalLineObject[["currentStock"]] <-
          self$`currentStock`
      }
      if (!is.null(self$`maxStock`)) {
        ReorderProposalLineObject[["maxStock"]] <-
          self$`maxStock`
      }
      if (!is.null(self$`minStock`)) {
        ReorderProposalLineObject[["minStock"]] <-
          self$`minStock`
      }
      if (!is.null(self$`productId`)) {
        ReorderProposalLineObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`productName`)) {
        ReorderProposalLineObject[["productName"]] <-
          self$`productName`
      }
      if (!is.null(self$`reorderQuantity`)) {
        ReorderProposalLineObject[["reorderQuantity"]] <-
          self$`reorderQuantity`
      }
      if (!is.null(self$`sku`)) {
        ReorderProposalLineObject[["sku"]] <-
          self$`sku`
      }
      if (!is.null(self$`suggestedQuantity`)) {
        ReorderProposalLineObject[["suggestedQuantity"]] <-
          self$`suggestedQuantity`
      }
      return(ReorderProposalLineObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ReorderProposalLine
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReorderProposalLine
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`currentStock`)) {
        self$`currentStock` <- this_object$`currentStock`
      }
      if (!is.null(this_object$`maxStock`)) {
        self$`maxStock` <- this_object$`maxStock`
      }
      if (!is.null(this_object$`minStock`)) {
        self$`minStock` <- this_object$`minStock`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`productName`)) {
        self$`productName` <- this_object$`productName`
      }
      if (!is.null(this_object$`reorderQuantity`)) {
        self$`reorderQuantity` <- this_object$`reorderQuantity`
      }
      if (!is.null(this_object$`sku`)) {
        self$`sku` <- this_object$`sku`
      }
      if (!is.null(this_object$`suggestedQuantity`)) {
        self$`suggestedQuantity` <- this_object$`suggestedQuantity`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReorderProposalLine in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReorderProposalLine
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReorderProposalLine
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`currentStock` <- this_object$`currentStock`
      self$`maxStock` <- this_object$`maxStock`
      self$`minStock` <- this_object$`minStock`
      self$`productId` <- this_object$`productId`
      self$`productName` <- this_object$`productName`
      self$`reorderQuantity` <- this_object$`reorderQuantity`
      self$`sku` <- this_object$`sku`
      self$`suggestedQuantity` <- this_object$`suggestedQuantity`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReorderProposalLine and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `currentStock`
      if (!is.null(input_json$`currentStock`)) {
        if (!(is.numeric(input_json$`currentStock`) && length(input_json$`currentStock`) == 1)) {
          stop(paste("Error! Invalid data for `currentStock`. Must be an integer:", input_json$`currentStock`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReorderProposalLine: the required field `currentStock` is missing."))
      }
      # check the required field `productId`
      if (!is.null(input_json$`productId`)) {
        if (!(is.character(input_json$`productId`) && length(input_json$`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", input_json$`productId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReorderProposalLine: the required field `productId` is missing."))
      }
      # check the required field `productName`
      if (!is.null(input_json$`productName`)) {
        if (!(is.character(input_json$`productName`) && length(input_json$`productName`) == 1)) {
          stop(paste("Error! Invalid data for `productName`. Must be a string:", input_json$`productName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReorderProposalLine: the required field `productName` is missing."))
      }
      # check the required field `sku`
      if (!is.null(input_json$`sku`)) {
        if (!(is.character(input_json$`sku`) && length(input_json$`sku`) == 1)) {
          stop(paste("Error! Invalid data for `sku`. Must be a string:", input_json$`sku`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReorderProposalLine: the required field `sku` is missing."))
      }
      # check the required field `suggestedQuantity`
      if (!is.null(input_json$`suggestedQuantity`)) {
        if (!(is.numeric(input_json$`suggestedQuantity`) && length(input_json$`suggestedQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `suggestedQuantity`. Must be an integer:", input_json$`suggestedQuantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReorderProposalLine: the required field `suggestedQuantity` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReorderProposalLine
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `currentStock` is null
      if (is.null(self$`currentStock`)) {
        return(FALSE)
      }

      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        return(FALSE)
      }

      # check if the required `productName` is null
      if (is.null(self$`productName`)) {
        return(FALSE)
      }

      # check if the required `sku` is null
      if (is.null(self$`sku`)) {
        return(FALSE)
      }

      # check if the required `suggestedQuantity` is null
      if (is.null(self$`suggestedQuantity`)) {
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
      # check if the required `currentStock` is null
      if (is.null(self$`currentStock`)) {
        invalid_fields["currentStock"] <- "Non-nullable required field `currentStock` cannot be null."
      }

      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        invalid_fields["productId"] <- "Non-nullable required field `productId` cannot be null."
      }

      # check if the required `productName` is null
      if (is.null(self$`productName`)) {
        invalid_fields["productName"] <- "Non-nullable required field `productName` cannot be null."
      }

      # check if the required `sku` is null
      if (is.null(self$`sku`)) {
        invalid_fields["sku"] <- "Non-nullable required field `sku` cannot be null."
      }

      # check if the required `suggestedQuantity` is null
      if (is.null(self$`suggestedQuantity`)) {
        invalid_fields["suggestedQuantity"] <- "Non-nullable required field `suggestedQuantity` cannot be null."
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
# ReorderProposalLine$unlock()
#
## Below is an example to define the print function
# ReorderProposalLine$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReorderProposalLine$lock()

