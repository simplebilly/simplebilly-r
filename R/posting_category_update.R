#' Create a new PostingCategoryUpdate
#'
#' @description
#' PostingCategoryUpdate Class
#'
#' @docType class
#' @title PostingCategoryUpdate
#' @description PostingCategoryUpdate Class
#' @format An \code{R6Class} generator object
#' @field accountNumber  character [optional]
#' @field accountNumberSkr03  character [optional]
#' @field accountNumberSkr04  character [optional]
#' @field accountNumberSkr49  character [optional]
#' @field categoryType  \link{PostingCategoryType} [optional]
#' @field createdAt  character [optional]
#' @field defaultVatRate  integer [optional]
#' @field description  character [optional]
#' @field eksCategory  character [optional]
#' @field euVatLine  integer [optional]
#' @field inputVatPercentage  character [optional]
#' @field isActive  character [optional]
#' @field isSystem  character [optional]
#' @field name  character [optional]
#' @field skrVersion  character [optional]
#' @field updatedAt  character [optional]
#' @field userModifiedSkr03  character [optional]
#' @field userModifiedSkr04  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostingCategoryUpdate <- R6::R6Class(
  "PostingCategoryUpdate",
  public = list(
    `accountNumber` = NULL,
    `accountNumberSkr03` = NULL,
    `accountNumberSkr04` = NULL,
    `accountNumberSkr49` = NULL,
    `categoryType` = NULL,
    `createdAt` = NULL,
    `defaultVatRate` = NULL,
    `description` = NULL,
    `eksCategory` = NULL,
    `euVatLine` = NULL,
    `inputVatPercentage` = NULL,
    `isActive` = NULL,
    `isSystem` = NULL,
    `name` = NULL,
    `skrVersion` = NULL,
    `updatedAt` = NULL,
    `userModifiedSkr03` = NULL,
    `userModifiedSkr04` = NULL,

    #' @description
    #' Initialize a new PostingCategoryUpdate class.
    #'
    #' @param accountNumber accountNumber
    #' @param accountNumberSkr03 accountNumberSkr03
    #' @param accountNumberSkr04 accountNumberSkr04
    #' @param accountNumberSkr49 accountNumberSkr49
    #' @param categoryType categoryType
    #' @param createdAt createdAt
    #' @param defaultVatRate defaultVatRate
    #' @param description description
    #' @param eksCategory eksCategory
    #' @param euVatLine euVatLine
    #' @param inputVatPercentage inputVatPercentage
    #' @param isActive isActive
    #' @param isSystem isSystem
    #' @param name name
    #' @param skrVersion skrVersion
    #' @param updatedAt updatedAt
    #' @param userModifiedSkr03 userModifiedSkr03
    #' @param userModifiedSkr04 userModifiedSkr04
    #' @param ... Other optional arguments.
    initialize = function(`accountNumber` = NULL, `accountNumberSkr03` = NULL, `accountNumberSkr04` = NULL, `accountNumberSkr49` = NULL, `categoryType` = NULL, `createdAt` = NULL, `defaultVatRate` = NULL, `description` = NULL, `eksCategory` = NULL, `euVatLine` = NULL, `inputVatPercentage` = NULL, `isActive` = NULL, `isSystem` = NULL, `name` = NULL, `skrVersion` = NULL, `updatedAt` = NULL, `userModifiedSkr03` = NULL, `userModifiedSkr04` = NULL, ...) {
      if (!is.null(`accountNumber`)) {
        if (!(is.character(`accountNumber`) && length(`accountNumber`) == 1)) {
          stop(paste("Error! Invalid data for `accountNumber`. Must be a string:", `accountNumber`))
        }
        self$`accountNumber` <- `accountNumber`
      }
      if (!is.null(`accountNumberSkr03`)) {
        if (!(is.character(`accountNumberSkr03`) && length(`accountNumberSkr03`) == 1)) {
          stop(paste("Error! Invalid data for `accountNumberSkr03`. Must be a string:", `accountNumberSkr03`))
        }
        self$`accountNumberSkr03` <- `accountNumberSkr03`
      }
      if (!is.null(`accountNumberSkr04`)) {
        if (!(is.character(`accountNumberSkr04`) && length(`accountNumberSkr04`) == 1)) {
          stop(paste("Error! Invalid data for `accountNumberSkr04`. Must be a string:", `accountNumberSkr04`))
        }
        self$`accountNumberSkr04` <- `accountNumberSkr04`
      }
      if (!is.null(`accountNumberSkr49`)) {
        if (!(is.character(`accountNumberSkr49`) && length(`accountNumberSkr49`) == 1)) {
          stop(paste("Error! Invalid data for `accountNumberSkr49`. Must be a string:", `accountNumberSkr49`))
        }
        self$`accountNumberSkr49` <- `accountNumberSkr49`
      }
      if (!is.null(`categoryType`)) {
        if (!(`categoryType` %in% c())) {
          stop(paste("Error! \"", `categoryType`, "\" cannot be assigned to `categoryType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`categoryType`))
        self$`categoryType` <- `categoryType`
      }
      if (!is.null(`createdAt`)) {
        if (!is.character(`createdAt`)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!is.null(`defaultVatRate`)) {
        if (!(is.numeric(`defaultVatRate`) && length(`defaultVatRate`) == 1)) {
          stop(paste("Error! Invalid data for `defaultVatRate`. Must be an integer:", `defaultVatRate`))
        }
        self$`defaultVatRate` <- `defaultVatRate`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`eksCategory`)) {
        if (!(is.character(`eksCategory`) && length(`eksCategory`) == 1)) {
          stop(paste("Error! Invalid data for `eksCategory`. Must be a string:", `eksCategory`))
        }
        self$`eksCategory` <- `eksCategory`
      }
      if (!is.null(`euVatLine`)) {
        if (!(is.numeric(`euVatLine`) && length(`euVatLine`) == 1)) {
          stop(paste("Error! Invalid data for `euVatLine`. Must be an integer:", `euVatLine`))
        }
        self$`euVatLine` <- `euVatLine`
      }
      if (!is.null(`inputVatPercentage`)) {
        if (!(is.character(`inputVatPercentage`) && length(`inputVatPercentage`) == 1)) {
          stop(paste("Error! Invalid data for `inputVatPercentage`. Must be a string:", `inputVatPercentage`))
        }
        self$`inputVatPercentage` <- `inputVatPercentage`
      }
      if (!is.null(`isActive`)) {
        if (!(is.logical(`isActive`) && length(`isActive`) == 1)) {
          stop(paste("Error! Invalid data for `isActive`. Must be a boolean:", `isActive`))
        }
        self$`isActive` <- `isActive`
      }
      if (!is.null(`isSystem`)) {
        if (!(is.logical(`isSystem`) && length(`isSystem`) == 1)) {
          stop(paste("Error! Invalid data for `isSystem`. Must be a boolean:", `isSystem`))
        }
        self$`isSystem` <- `isSystem`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`skrVersion`)) {
        if (!(is.character(`skrVersion`) && length(`skrVersion`) == 1)) {
          stop(paste("Error! Invalid data for `skrVersion`. Must be a string:", `skrVersion`))
        }
        self$`skrVersion` <- `skrVersion`
      }
      if (!is.null(`updatedAt`)) {
        if (!is.character(`updatedAt`)) {
          stop(paste("Error! Invalid data for `updatedAt`. Must be a string:", `updatedAt`))
        }
        self$`updatedAt` <- `updatedAt`
      }
      if (!is.null(`userModifiedSkr03`)) {
        if (!(is.logical(`userModifiedSkr03`) && length(`userModifiedSkr03`) == 1)) {
          stop(paste("Error! Invalid data for `userModifiedSkr03`. Must be a boolean:", `userModifiedSkr03`))
        }
        self$`userModifiedSkr03` <- `userModifiedSkr03`
      }
      if (!is.null(`userModifiedSkr04`)) {
        if (!(is.logical(`userModifiedSkr04`) && length(`userModifiedSkr04`) == 1)) {
          stop(paste("Error! Invalid data for `userModifiedSkr04`. Must be a boolean:", `userModifiedSkr04`))
        }
        self$`userModifiedSkr04` <- `userModifiedSkr04`
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
    #' @return PostingCategoryUpdate as a base R list.
    #' @examples
    #' # convert array of PostingCategoryUpdate (x) to a data frame
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
    #' Convert PostingCategoryUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostingCategoryUpdateObject <- list()
      if (!is.null(self$`accountNumber`)) {
        PostingCategoryUpdateObject[["accountNumber"]] <-
          self$`accountNumber`
      }
      if (!is.null(self$`accountNumberSkr03`)) {
        PostingCategoryUpdateObject[["accountNumberSkr03"]] <-
          self$`accountNumberSkr03`
      }
      if (!is.null(self$`accountNumberSkr04`)) {
        PostingCategoryUpdateObject[["accountNumberSkr04"]] <-
          self$`accountNumberSkr04`
      }
      if (!is.null(self$`accountNumberSkr49`)) {
        PostingCategoryUpdateObject[["accountNumberSkr49"]] <-
          self$`accountNumberSkr49`
      }
      if (!is.null(self$`categoryType`)) {
        PostingCategoryUpdateObject[["categoryType"]] <-
          self$extractSimpleType(self$`categoryType`)
      }
      if (!is.null(self$`createdAt`)) {
        PostingCategoryUpdateObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`defaultVatRate`)) {
        PostingCategoryUpdateObject[["defaultVatRate"]] <-
          self$`defaultVatRate`
      }
      if (!is.null(self$`description`)) {
        PostingCategoryUpdateObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`eksCategory`)) {
        PostingCategoryUpdateObject[["eksCategory"]] <-
          self$`eksCategory`
      }
      if (!is.null(self$`euVatLine`)) {
        PostingCategoryUpdateObject[["euVatLine"]] <-
          self$`euVatLine`
      }
      if (!is.null(self$`inputVatPercentage`)) {
        PostingCategoryUpdateObject[["inputVatPercentage"]] <-
          self$`inputVatPercentage`
      }
      if (!is.null(self$`isActive`)) {
        PostingCategoryUpdateObject[["isActive"]] <-
          self$`isActive`
      }
      if (!is.null(self$`isSystem`)) {
        PostingCategoryUpdateObject[["isSystem"]] <-
          self$`isSystem`
      }
      if (!is.null(self$`name`)) {
        PostingCategoryUpdateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`skrVersion`)) {
        PostingCategoryUpdateObject[["skrVersion"]] <-
          self$`skrVersion`
      }
      if (!is.null(self$`updatedAt`)) {
        PostingCategoryUpdateObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      if (!is.null(self$`userModifiedSkr03`)) {
        PostingCategoryUpdateObject[["userModifiedSkr03"]] <-
          self$`userModifiedSkr03`
      }
      if (!is.null(self$`userModifiedSkr04`)) {
        PostingCategoryUpdateObject[["userModifiedSkr04"]] <-
          self$`userModifiedSkr04`
      }
      return(PostingCategoryUpdateObject)
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
    #' Deserialize JSON string into an instance of PostingCategoryUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostingCategoryUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accountNumber`)) {
        self$`accountNumber` <- this_object$`accountNumber`
      }
      if (!is.null(this_object$`accountNumberSkr03`)) {
        self$`accountNumberSkr03` <- this_object$`accountNumberSkr03`
      }
      if (!is.null(this_object$`accountNumberSkr04`)) {
        self$`accountNumberSkr04` <- this_object$`accountNumberSkr04`
      }
      if (!is.null(this_object$`accountNumberSkr49`)) {
        self$`accountNumberSkr49` <- this_object$`accountNumberSkr49`
      }
      if (!is.null(this_object$`categoryType`)) {
        `categorytype_object` <- PostingCategoryType$new()
        `categorytype_object`$fromJSON(jsonlite::toJSON(this_object$`categoryType`, auto_unbox = TRUE, digits = NA))
        self$`categoryType` <- `categorytype_object`
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`defaultVatRate`)) {
        self$`defaultVatRate` <- this_object$`defaultVatRate`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`eksCategory`)) {
        self$`eksCategory` <- this_object$`eksCategory`
      }
      if (!is.null(this_object$`euVatLine`)) {
        self$`euVatLine` <- this_object$`euVatLine`
      }
      if (!is.null(this_object$`inputVatPercentage`)) {
        self$`inputVatPercentage` <- this_object$`inputVatPercentage`
      }
      if (!is.null(this_object$`isActive`)) {
        self$`isActive` <- this_object$`isActive`
      }
      if (!is.null(this_object$`isSystem`)) {
        self$`isSystem` <- this_object$`isSystem`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`skrVersion`)) {
        self$`skrVersion` <- this_object$`skrVersion`
      }
      if (!is.null(this_object$`updatedAt`)) {
        self$`updatedAt` <- this_object$`updatedAt`
      }
      if (!is.null(this_object$`userModifiedSkr03`)) {
        self$`userModifiedSkr03` <- this_object$`userModifiedSkr03`
      }
      if (!is.null(this_object$`userModifiedSkr04`)) {
        self$`userModifiedSkr04` <- this_object$`userModifiedSkr04`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PostingCategoryUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostingCategoryUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostingCategoryUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accountNumber` <- this_object$`accountNumber`
      self$`accountNumberSkr03` <- this_object$`accountNumberSkr03`
      self$`accountNumberSkr04` <- this_object$`accountNumberSkr04`
      self$`accountNumberSkr49` <- this_object$`accountNumberSkr49`
      self$`categoryType` <- PostingCategoryType$new()$fromJSON(jsonlite::toJSON(this_object$`categoryType`, auto_unbox = TRUE, digits = NA))
      self$`createdAt` <- this_object$`createdAt`
      self$`defaultVatRate` <- this_object$`defaultVatRate`
      self$`description` <- this_object$`description`
      self$`eksCategory` <- this_object$`eksCategory`
      self$`euVatLine` <- this_object$`euVatLine`
      self$`inputVatPercentage` <- this_object$`inputVatPercentage`
      self$`isActive` <- this_object$`isActive`
      self$`isSystem` <- this_object$`isSystem`
      self$`name` <- this_object$`name`
      self$`skrVersion` <- this_object$`skrVersion`
      self$`updatedAt` <- this_object$`updatedAt`
      self$`userModifiedSkr03` <- this_object$`userModifiedSkr03`
      self$`userModifiedSkr04` <- this_object$`userModifiedSkr04`
      self
    },

    #' @description
    #' Validate JSON input with respect to PostingCategoryUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostingCategoryUpdate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# PostingCategoryUpdate$unlock()
#
## Below is an example to define the print function
# PostingCategoryUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostingCategoryUpdate$lock()

