#' Create a new ServiceJob
#'
#' @description
#' ServiceJob Class
#'
#' @docType class
#' @title ServiceJob
#' @description ServiceJob Class
#' @format An \code{R6Class} generator object
#' @field address Street + zip + city of the job location. character [optional]
#' @field customerEmail Customer email for email notifications. character [optional]
#' @field customerId References the customer entity. character [optional]
#' @field customerName Denormalized customer name for quick display. character [optional]
#' @field customerPhone Customer phone for SMS notifications later. character [optional]
#' @field description What work needs to be done. character [optional]
#' @field estimatedDurationMinutes Estimated time for the job in minutes. integer [optional]
#' @field lat Latitude for map display (OpenStreetMap). numeric [optional]
#' @field lng Longitude for map display (OpenStreetMap). numeric [optional]
#' @field notes  character [optional]
#' @field status Dispatch status: \"pending\", \"assigned\", \"en_route\", \"in_progress\", \"completed\", \"cancelled\". \link{ServiceJobStatus} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServiceJob <- R6::R6Class(
  "ServiceJob",
  public = list(
    `address` = NULL,
    `customerEmail` = NULL,
    `customerId` = NULL,
    `customerName` = NULL,
    `customerPhone` = NULL,
    `description` = NULL,
    `estimatedDurationMinutes` = NULL,
    `lat` = NULL,
    `lng` = NULL,
    `notes` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new ServiceJob class.
    #'
    #' @param address Street + zip + city of the job location.
    #' @param customerEmail Customer email for email notifications.
    #' @param customerId References the customer entity.
    #' @param customerName Denormalized customer name for quick display.
    #' @param customerPhone Customer phone for SMS notifications later.
    #' @param description What work needs to be done.
    #' @param estimatedDurationMinutes Estimated time for the job in minutes.
    #' @param lat Latitude for map display (OpenStreetMap).
    #' @param lng Longitude for map display (OpenStreetMap).
    #' @param notes notes
    #' @param status Dispatch status: \"pending\", \"assigned\", \"en_route\", \"in_progress\", \"completed\", \"cancelled\".
    #' @param ... Other optional arguments.
    initialize = function(`address` = NULL, `customerEmail` = NULL, `customerId` = NULL, `customerName` = NULL, `customerPhone` = NULL, `description` = NULL, `estimatedDurationMinutes` = NULL, `lat` = NULL, `lng` = NULL, `notes` = NULL, `status` = NULL, ...) {
      if (!is.null(`address`)) {
        if (!(is.character(`address`) && length(`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", `address`))
        }
        self$`address` <- `address`
      }
      if (!is.null(`customerEmail`)) {
        if (!(is.character(`customerEmail`) && length(`customerEmail`) == 1)) {
          stop(paste("Error! Invalid data for `customerEmail`. Must be a string:", `customerEmail`))
        }
        self$`customerEmail` <- `customerEmail`
      }
      if (!is.null(`customerId`)) {
        if (!(is.character(`customerId`) && length(`customerId`) == 1)) {
          stop(paste("Error! Invalid data for `customerId`. Must be a string:", `customerId`))
        }
        self$`customerId` <- `customerId`
      }
      if (!is.null(`customerName`)) {
        if (!(is.character(`customerName`) && length(`customerName`) == 1)) {
          stop(paste("Error! Invalid data for `customerName`. Must be a string:", `customerName`))
        }
        self$`customerName` <- `customerName`
      }
      if (!is.null(`customerPhone`)) {
        if (!(is.character(`customerPhone`) && length(`customerPhone`) == 1)) {
          stop(paste("Error! Invalid data for `customerPhone`. Must be a string:", `customerPhone`))
        }
        self$`customerPhone` <- `customerPhone`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`estimatedDurationMinutes`)) {
        if (!(is.numeric(`estimatedDurationMinutes`) && length(`estimatedDurationMinutes`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedDurationMinutes`. Must be an integer:", `estimatedDurationMinutes`))
        }
        self$`estimatedDurationMinutes` <- `estimatedDurationMinutes`
      }
      if (!is.null(`lat`)) {
        if (!(is.numeric(`lat`) && length(`lat`) == 1)) {
          stop(paste("Error! Invalid data for `lat`. Must be a number:", `lat`))
        }
        self$`lat` <- `lat`
      }
      if (!is.null(`lng`)) {
        if (!(is.numeric(`lng`) && length(`lng`) == 1)) {
          stop(paste("Error! Invalid data for `lng`. Must be a number:", `lng`))
        }
        self$`lng` <- `lng`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
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
    #' @return ServiceJob as a base R list.
    #' @examples
    #' # convert array of ServiceJob (x) to a data frame
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
    #' Convert ServiceJob to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServiceJobObject <- list()
      if (!is.null(self$`address`)) {
        ServiceJobObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`customerEmail`)) {
        ServiceJobObject[["customerEmail"]] <-
          self$`customerEmail`
      }
      if (!is.null(self$`customerId`)) {
        ServiceJobObject[["customerId"]] <-
          self$`customerId`
      }
      if (!is.null(self$`customerName`)) {
        ServiceJobObject[["customerName"]] <-
          self$`customerName`
      }
      if (!is.null(self$`customerPhone`)) {
        ServiceJobObject[["customerPhone"]] <-
          self$`customerPhone`
      }
      if (!is.null(self$`description`)) {
        ServiceJobObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`estimatedDurationMinutes`)) {
        ServiceJobObject[["estimatedDurationMinutes"]] <-
          self$`estimatedDurationMinutes`
      }
      if (!is.null(self$`lat`)) {
        ServiceJobObject[["lat"]] <-
          self$`lat`
      }
      if (!is.null(self$`lng`)) {
        ServiceJobObject[["lng"]] <-
          self$`lng`
      }
      if (!is.null(self$`notes`)) {
        ServiceJobObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`status`)) {
        ServiceJobObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      return(ServiceJobObject)
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
    #' Deserialize JSON string into an instance of ServiceJob
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServiceJob
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`address`)) {
        self$`address` <- this_object$`address`
      }
      if (!is.null(this_object$`customerEmail`)) {
        self$`customerEmail` <- this_object$`customerEmail`
      }
      if (!is.null(this_object$`customerId`)) {
        self$`customerId` <- this_object$`customerId`
      }
      if (!is.null(this_object$`customerName`)) {
        self$`customerName` <- this_object$`customerName`
      }
      if (!is.null(this_object$`customerPhone`)) {
        self$`customerPhone` <- this_object$`customerPhone`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`estimatedDurationMinutes`)) {
        self$`estimatedDurationMinutes` <- this_object$`estimatedDurationMinutes`
      }
      if (!is.null(this_object$`lat`)) {
        self$`lat` <- this_object$`lat`
      }
      if (!is.null(this_object$`lng`)) {
        self$`lng` <- this_object$`lng`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- ServiceJobStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServiceJob in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServiceJob
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServiceJob
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`address` <- this_object$`address`
      self$`customerEmail` <- this_object$`customerEmail`
      self$`customerId` <- this_object$`customerId`
      self$`customerName` <- this_object$`customerName`
      self$`customerPhone` <- this_object$`customerPhone`
      self$`description` <- this_object$`description`
      self$`estimatedDurationMinutes` <- this_object$`estimatedDurationMinutes`
      self$`lat` <- this_object$`lat`
      self$`lng` <- this_object$`lng`
      self$`notes` <- this_object$`notes`
      self$`status` <- ServiceJobStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ServiceJob and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServiceJob
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`address`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`address`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`description`) > 1000) {
        return(FALSE)
      }
      if (nchar(self$`description`) < 1) {
        return(FALSE)
      }

      if (self$`estimatedDurationMinutes` > 100000) {
        return(FALSE)
      }
      if (self$`estimatedDurationMinutes` < 1) {
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
      if (nchar(self$`address`) > 255) {
        invalid_fields["address"] <- "Invalid length for `address`, must be smaller than or equal to 255."
      }
      if (nchar(self$`address`) < 1) {
        invalid_fields["address"] <- "Invalid length for `address`, must be bigger than or equal to 1."
      }

      if (nchar(self$`description`) > 1000) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 1000."
      }
      if (nchar(self$`description`) < 1) {
        invalid_fields["description"] <- "Invalid length for `description`, must be bigger than or equal to 1."
      }

      if (self$`estimatedDurationMinutes` > 100000) {
        invalid_fields["estimatedDurationMinutes"] <- "Invalid value for `estimatedDurationMinutes`, must be smaller than or equal to 100000."
      }
      if (self$`estimatedDurationMinutes` < 1) {
        invalid_fields["estimatedDurationMinutes"] <- "Invalid value for `estimatedDurationMinutes`, must be bigger than or equal to 1."
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
# ServiceJob$unlock()
#
## Below is an example to define the print function
# ServiceJob$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServiceJob$lock()

