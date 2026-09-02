#' Create a new PackingQueueItem
#'
#' @description
#' PackingQueueItem Class
#'
#' @docType class
#' @title PackingQueueItem
#' @description PackingQueueItem Class
#' @format An \code{R6Class} generator object
#' @field created_at  character
#' @field customer_id  character
#' @field delivery_note_printed  character
#' @field items  \link{AnyType}
#' @field items_count  integer
#' @field label_printed  character
#' @field order_number  character
#' @field order_status  character
#' @field shipment_id  character [optional]
#' @field shipping_address  \link{AnyType} [optional]
#' @field shipping_method  character
#' @field tracking_number  character [optional]
#' @field video_recording  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PackingQueueItem <- R6::R6Class(
  "PackingQueueItem",
  public = list(
    `created_at` = NULL,
    `customer_id` = NULL,
    `delivery_note_printed` = NULL,
    `items` = NULL,
    `items_count` = NULL,
    `label_printed` = NULL,
    `order_number` = NULL,
    `order_status` = NULL,
    `shipment_id` = NULL,
    `shipping_address` = NULL,
    `shipping_method` = NULL,
    `tracking_number` = NULL,
    `video_recording` = NULL,

    #' @description
    #' Initialize a new PackingQueueItem class.
    #'
    #' @param created_at created_at
    #' @param customer_id customer_id
    #' @param delivery_note_printed delivery_note_printed
    #' @param items items
    #' @param items_count items_count
    #' @param label_printed label_printed
    #' @param order_number order_number
    #' @param order_status order_status
    #' @param shipping_method shipping_method
    #' @param shipment_id shipment_id
    #' @param shipping_address shipping_address
    #' @param tracking_number tracking_number
    #' @param video_recording video_recording
    #' @param ... Other optional arguments.
    initialize = function(`created_at`, `customer_id`, `delivery_note_printed`, `items`, `items_count`, `label_printed`, `order_number`, `order_status`, `shipping_method`, `shipment_id` = NULL, `shipping_address` = NULL, `tracking_number` = NULL, `video_recording` = NULL, ...) {
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`customer_id`)) {
        if (!(is.character(`customer_id`) && length(`customer_id`) == 1)) {
          stop(paste("Error! Invalid data for `customer_id`. Must be a string:", `customer_id`))
        }
        self$`customer_id` <- `customer_id`
      }
      if (!missing(`delivery_note_printed`)) {
        if (!(is.logical(`delivery_note_printed`) && length(`delivery_note_printed`) == 1)) {
          stop(paste("Error! Invalid data for `delivery_note_printed`. Must be a boolean:", `delivery_note_printed`))
        }
        self$`delivery_note_printed` <- `delivery_note_printed`
      }
      if (!missing(`items`)) {
        stopifnot(R6::is.R6(`items`))
        self$`items` <- `items`
      }
      if (!missing(`items_count`)) {
        if (!(is.numeric(`items_count`) && length(`items_count`) == 1)) {
          stop(paste("Error! Invalid data for `items_count`. Must be an integer:", `items_count`))
        }
        self$`items_count` <- `items_count`
      }
      if (!missing(`label_printed`)) {
        if (!(is.logical(`label_printed`) && length(`label_printed`) == 1)) {
          stop(paste("Error! Invalid data for `label_printed`. Must be a boolean:", `label_printed`))
        }
        self$`label_printed` <- `label_printed`
      }
      if (!missing(`order_number`)) {
        if (!(is.character(`order_number`) && length(`order_number`) == 1)) {
          stop(paste("Error! Invalid data for `order_number`. Must be a string:", `order_number`))
        }
        self$`order_number` <- `order_number`
      }
      if (!missing(`order_status`)) {
        if (!(is.character(`order_status`) && length(`order_status`) == 1)) {
          stop(paste("Error! Invalid data for `order_status`. Must be a string:", `order_status`))
        }
        self$`order_status` <- `order_status`
      }
      if (!missing(`shipping_method`)) {
        if (!(is.character(`shipping_method`) && length(`shipping_method`) == 1)) {
          stop(paste("Error! Invalid data for `shipping_method`. Must be a string:", `shipping_method`))
        }
        self$`shipping_method` <- `shipping_method`
      }
      if (!is.null(`shipment_id`)) {
        if (!(is.character(`shipment_id`) && length(`shipment_id`) == 1)) {
          stop(paste("Error! Invalid data for `shipment_id`. Must be a string:", `shipment_id`))
        }
        self$`shipment_id` <- `shipment_id`
      }
      if (!is.null(`shipping_address`)) {
        stopifnot(R6::is.R6(`shipping_address`))
        self$`shipping_address` <- `shipping_address`
      }
      if (!is.null(`tracking_number`)) {
        if (!(is.character(`tracking_number`) && length(`tracking_number`) == 1)) {
          stop(paste("Error! Invalid data for `tracking_number`. Must be a string:", `tracking_number`))
        }
        self$`tracking_number` <- `tracking_number`
      }
      if (!is.null(`video_recording`)) {
        if (!(is.character(`video_recording`) && length(`video_recording`) == 1)) {
          stop(paste("Error! Invalid data for `video_recording`. Must be a string:", `video_recording`))
        }
        self$`video_recording` <- `video_recording`
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
    #' @return PackingQueueItem as a base R list.
    #' @examples
    #' # convert array of PackingQueueItem (x) to a data frame
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
    #' Convert PackingQueueItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PackingQueueItemObject <- list()
      if (!is.null(self$`created_at`)) {
        PackingQueueItemObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`customer_id`)) {
        PackingQueueItemObject[["customer_id"]] <-
          self$`customer_id`
      }
      if (!is.null(self$`delivery_note_printed`)) {
        PackingQueueItemObject[["delivery_note_printed"]] <-
          self$`delivery_note_printed`
      }
      if (!is.null(self$`items`)) {
        PackingQueueItemObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`items_count`)) {
        PackingQueueItemObject[["items_count"]] <-
          self$`items_count`
      }
      if (!is.null(self$`label_printed`)) {
        PackingQueueItemObject[["label_printed"]] <-
          self$`label_printed`
      }
      if (!is.null(self$`order_number`)) {
        PackingQueueItemObject[["order_number"]] <-
          self$`order_number`
      }
      if (!is.null(self$`order_status`)) {
        PackingQueueItemObject[["order_status"]] <-
          self$`order_status`
      }
      if (!is.null(self$`shipment_id`)) {
        PackingQueueItemObject[["shipment_id"]] <-
          self$`shipment_id`
      }
      if (!is.null(self$`shipping_address`)) {
        PackingQueueItemObject[["shipping_address"]] <-
          self$extractSimpleType(self$`shipping_address`)
      }
      if (!is.null(self$`shipping_method`)) {
        PackingQueueItemObject[["shipping_method"]] <-
          self$`shipping_method`
      }
      if (!is.null(self$`tracking_number`)) {
        PackingQueueItemObject[["tracking_number"]] <-
          self$`tracking_number`
      }
      if (!is.null(self$`video_recording`)) {
        PackingQueueItemObject[["video_recording"]] <-
          self$`video_recording`
      }
      return(PackingQueueItemObject)
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
    #' Deserialize JSON string into an instance of PackingQueueItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackingQueueItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`customer_id`)) {
        self$`customer_id` <- this_object$`customer_id`
      }
      if (!is.null(this_object$`delivery_note_printed`)) {
        self$`delivery_note_printed` <- this_object$`delivery_note_printed`
      }
      if (!is.null(this_object$`items`)) {
        `items_object` <- AnyType$new()
        `items_object`$fromJSON(jsonlite::toJSON(this_object$`items`, auto_unbox = TRUE, digits = NA))
        self$`items` <- `items_object`
      }
      if (!is.null(this_object$`items_count`)) {
        self$`items_count` <- this_object$`items_count`
      }
      if (!is.null(this_object$`label_printed`)) {
        self$`label_printed` <- this_object$`label_printed`
      }
      if (!is.null(this_object$`order_number`)) {
        self$`order_number` <- this_object$`order_number`
      }
      if (!is.null(this_object$`order_status`)) {
        self$`order_status` <- this_object$`order_status`
      }
      if (!is.null(this_object$`shipment_id`)) {
        self$`shipment_id` <- this_object$`shipment_id`
      }
      if (!is.null(this_object$`shipping_address`)) {
        `shipping_address_object` <- AnyType$new()
        `shipping_address_object`$fromJSON(jsonlite::toJSON(this_object$`shipping_address`, auto_unbox = TRUE, digits = NA))
        self$`shipping_address` <- `shipping_address_object`
      }
      if (!is.null(this_object$`shipping_method`)) {
        self$`shipping_method` <- this_object$`shipping_method`
      }
      if (!is.null(this_object$`tracking_number`)) {
        self$`tracking_number` <- this_object$`tracking_number`
      }
      if (!is.null(this_object$`video_recording`)) {
        self$`video_recording` <- this_object$`video_recording`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PackingQueueItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PackingQueueItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackingQueueItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created_at` <- this_object$`created_at`
      self$`customer_id` <- this_object$`customer_id`
      self$`delivery_note_printed` <- this_object$`delivery_note_printed`
      self$`items` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`items`, auto_unbox = TRUE, digits = NA))
      self$`items_count` <- this_object$`items_count`
      self$`label_printed` <- this_object$`label_printed`
      self$`order_number` <- this_object$`order_number`
      self$`order_status` <- this_object$`order_status`
      self$`shipment_id` <- this_object$`shipment_id`
      self$`shipping_address` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`shipping_address`, auto_unbox = TRUE, digits = NA))
      self$`shipping_method` <- this_object$`shipping_method`
      self$`tracking_number` <- this_object$`tracking_number`
      self$`video_recording` <- this_object$`video_recording`
      self
    },

    #' @description
    #' Validate JSON input with respect to PackingQueueItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingQueueItem: the required field `created_at` is missing."))
      }
      # check the required field `customer_id`
      if (!is.null(input_json$`customer_id`)) {
        if (!(is.character(input_json$`customer_id`) && length(input_json$`customer_id`) == 1)) {
          stop(paste("Error! Invalid data for `customer_id`. Must be a string:", input_json$`customer_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingQueueItem: the required field `customer_id` is missing."))
      }
      # check the required field `delivery_note_printed`
      if (!is.null(input_json$`delivery_note_printed`)) {
        if (!(is.logical(input_json$`delivery_note_printed`) && length(input_json$`delivery_note_printed`) == 1)) {
          stop(paste("Error! Invalid data for `delivery_note_printed`. Must be a boolean:", input_json$`delivery_note_printed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingQueueItem: the required field `delivery_note_printed` is missing."))
      }
      # check the required field `items`
      if (!is.null(input_json$`items`)) {
        stopifnot(R6::is.R6(input_json$`items`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingQueueItem: the required field `items` is missing."))
      }
      # check the required field `items_count`
      if (!is.null(input_json$`items_count`)) {
        if (!(is.numeric(input_json$`items_count`) && length(input_json$`items_count`) == 1)) {
          stop(paste("Error! Invalid data for `items_count`. Must be an integer:", input_json$`items_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingQueueItem: the required field `items_count` is missing."))
      }
      # check the required field `label_printed`
      if (!is.null(input_json$`label_printed`)) {
        if (!(is.logical(input_json$`label_printed`) && length(input_json$`label_printed`) == 1)) {
          stop(paste("Error! Invalid data for `label_printed`. Must be a boolean:", input_json$`label_printed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingQueueItem: the required field `label_printed` is missing."))
      }
      # check the required field `order_number`
      if (!is.null(input_json$`order_number`)) {
        if (!(is.character(input_json$`order_number`) && length(input_json$`order_number`) == 1)) {
          stop(paste("Error! Invalid data for `order_number`. Must be a string:", input_json$`order_number`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingQueueItem: the required field `order_number` is missing."))
      }
      # check the required field `order_status`
      if (!is.null(input_json$`order_status`)) {
        if (!(is.character(input_json$`order_status`) && length(input_json$`order_status`) == 1)) {
          stop(paste("Error! Invalid data for `order_status`. Must be a string:", input_json$`order_status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingQueueItem: the required field `order_status` is missing."))
      }
      # check the required field `shipping_method`
      if (!is.null(input_json$`shipping_method`)) {
        if (!(is.character(input_json$`shipping_method`) && length(input_json$`shipping_method`) == 1)) {
          stop(paste("Error! Invalid data for `shipping_method`. Must be a string:", input_json$`shipping_method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingQueueItem: the required field `shipping_method` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PackingQueueItem
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `customer_id` is null
      if (is.null(self$`customer_id`)) {
        return(FALSE)
      }

      # check if the required `delivery_note_printed` is null
      if (is.null(self$`delivery_note_printed`)) {
        return(FALSE)
      }

      # check if the required `items_count` is null
      if (is.null(self$`items_count`)) {
        return(FALSE)
      }

      # check if the required `label_printed` is null
      if (is.null(self$`label_printed`)) {
        return(FALSE)
      }

      # check if the required `order_number` is null
      if (is.null(self$`order_number`)) {
        return(FALSE)
      }

      # check if the required `order_status` is null
      if (is.null(self$`order_status`)) {
        return(FALSE)
      }

      # check if the required `shipping_method` is null
      if (is.null(self$`shipping_method`)) {
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
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `customer_id` is null
      if (is.null(self$`customer_id`)) {
        invalid_fields["customer_id"] <- "Non-nullable required field `customer_id` cannot be null."
      }

      # check if the required `delivery_note_printed` is null
      if (is.null(self$`delivery_note_printed`)) {
        invalid_fields["delivery_note_printed"] <- "Non-nullable required field `delivery_note_printed` cannot be null."
      }

      # check if the required `items_count` is null
      if (is.null(self$`items_count`)) {
        invalid_fields["items_count"] <- "Non-nullable required field `items_count` cannot be null."
      }

      # check if the required `label_printed` is null
      if (is.null(self$`label_printed`)) {
        invalid_fields["label_printed"] <- "Non-nullable required field `label_printed` cannot be null."
      }

      # check if the required `order_number` is null
      if (is.null(self$`order_number`)) {
        invalid_fields["order_number"] <- "Non-nullable required field `order_number` cannot be null."
      }

      # check if the required `order_status` is null
      if (is.null(self$`order_status`)) {
        invalid_fields["order_status"] <- "Non-nullable required field `order_status` cannot be null."
      }

      # check if the required `shipping_method` is null
      if (is.null(self$`shipping_method`)) {
        invalid_fields["shipping_method"] <- "Non-nullable required field `shipping_method` cannot be null."
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
# PackingQueueItem$unlock()
#
## Below is an example to define the print function
# PackingQueueItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PackingQueueItem$lock()

