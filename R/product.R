#' Create a new Product
#'
#' @description
#' Product Class
#'
#' @docType class
#' @title Product
#' @description Product Class
#' @format An \code{R6Class} generator object
#' @field availability  character [optional]
#' @field barcode  character [optional]
#' @field brand  character [optional]
#' @field categoryId  character [optional]
#' @field condition  character [optional]
#' @field defaultLedgerAccount  character [optional]
#' @field defaultPrice  character [optional]
#' @field defaultPriceFormulaId References the price formula entity. character [optional]
#' @field defaultTaxRate  character [optional]
#' @field description  character [optional]
#' @field gtin  character [optional]
#' @field height  character [optional]
#' @field imageLink  character [optional]
#' @field images  \link{AnyType} [optional]
#' @field isTaxable  character [optional]
#' @field length  character [optional]
#' @field link  character [optional]
#' @field maxStock Target stock level used by reorder proposals. integer [optional]
#' @field minStock Reorder point — when stock falls below this, a reorder is suggested. integer [optional]
#' @field mpn  character [optional]
#' @field name  character
#' @field packageHeight  character [optional]
#' @field packageLength  character [optional]
#' @field packageWeightUnit  character [optional]
#' @field packageWeightValue  character [optional]
#' @field packageWidth  character [optional]
#' @field productCode  character
#' @field productType  character [optional]
#' @field purchasePrice  character [optional]
#' @field reorderQuantity Suggested purchase quantity when a reorder proposal is created. integer [optional]
#' @field salePrice  character [optional]
#' @field shippingPrice  character [optional]
#' @field shippingRequiresInsurance  character [optional]
#' @field sku  character
#' @field stockQuantity  integer [optional]
#' @field tags  \link{AnyType} [optional]
#' @field taxPrice  character [optional]
#' @field trackBatch Whether this product requires batch (Chargennummer) tracking. character [optional]
#' @field trackSerial Whether this product requires serial-number tracking. character [optional]
#' @field unit  \link{AnyType} [optional]
#' @field weightUnit  character [optional]
#' @field weightValue  character [optional]
#' @field width  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Product <- R6::R6Class(
  "Product",
  public = list(
    `availability` = NULL,
    `barcode` = NULL,
    `brand` = NULL,
    `categoryId` = NULL,
    `condition` = NULL,
    `defaultLedgerAccount` = NULL,
    `defaultPrice` = NULL,
    `defaultPriceFormulaId` = NULL,
    `defaultTaxRate` = NULL,
    `description` = NULL,
    `gtin` = NULL,
    `height` = NULL,
    `imageLink` = NULL,
    `images` = NULL,
    `isTaxable` = NULL,
    `length` = NULL,
    `link` = NULL,
    `maxStock` = NULL,
    `minStock` = NULL,
    `mpn` = NULL,
    `name` = NULL,
    `packageHeight` = NULL,
    `packageLength` = NULL,
    `packageWeightUnit` = NULL,
    `packageWeightValue` = NULL,
    `packageWidth` = NULL,
    `productCode` = NULL,
    `productType` = NULL,
    `purchasePrice` = NULL,
    `reorderQuantity` = NULL,
    `salePrice` = NULL,
    `shippingPrice` = NULL,
    `shippingRequiresInsurance` = NULL,
    `sku` = NULL,
    `stockQuantity` = NULL,
    `tags` = NULL,
    `taxPrice` = NULL,
    `trackBatch` = NULL,
    `trackSerial` = NULL,
    `unit` = NULL,
    `weightUnit` = NULL,
    `weightValue` = NULL,
    `width` = NULL,

    #' @description
    #' Initialize a new Product class.
    #'
    #' @param name name
    #' @param productCode productCode
    #' @param sku sku
    #' @param availability availability
    #' @param barcode barcode
    #' @param brand brand
    #' @param categoryId categoryId
    #' @param condition condition
    #' @param defaultLedgerAccount defaultLedgerAccount
    #' @param defaultPrice defaultPrice
    #' @param defaultPriceFormulaId References the price formula entity.
    #' @param defaultTaxRate defaultTaxRate
    #' @param description description
    #' @param gtin gtin
    #' @param height height
    #' @param imageLink imageLink
    #' @param images images
    #' @param isTaxable isTaxable
    #' @param length length
    #' @param link link
    #' @param maxStock Target stock level used by reorder proposals.
    #' @param minStock Reorder point — when stock falls below this, a reorder is suggested.
    #' @param mpn mpn
    #' @param packageHeight packageHeight
    #' @param packageLength packageLength
    #' @param packageWeightUnit packageWeightUnit
    #' @param packageWeightValue packageWeightValue
    #' @param packageWidth packageWidth
    #' @param productType productType
    #' @param purchasePrice purchasePrice
    #' @param reorderQuantity Suggested purchase quantity when a reorder proposal is created.
    #' @param salePrice salePrice
    #' @param shippingPrice shippingPrice
    #' @param shippingRequiresInsurance shippingRequiresInsurance
    #' @param stockQuantity stockQuantity
    #' @param tags tags
    #' @param taxPrice taxPrice
    #' @param trackBatch Whether this product requires batch (Chargennummer) tracking.
    #' @param trackSerial Whether this product requires serial-number tracking.
    #' @param unit unit
    #' @param weightUnit weightUnit
    #' @param weightValue weightValue
    #' @param width width
    #' @param ... Other optional arguments.
    initialize = function(`name`, `productCode`, `sku`, `availability` = NULL, `barcode` = NULL, `brand` = NULL, `categoryId` = NULL, `condition` = NULL, `defaultLedgerAccount` = NULL, `defaultPrice` = NULL, `defaultPriceFormulaId` = NULL, `defaultTaxRate` = NULL, `description` = NULL, `gtin` = NULL, `height` = NULL, `imageLink` = NULL, `images` = NULL, `isTaxable` = NULL, `length` = NULL, `link` = NULL, `maxStock` = NULL, `minStock` = NULL, `mpn` = NULL, `packageHeight` = NULL, `packageLength` = NULL, `packageWeightUnit` = NULL, `packageWeightValue` = NULL, `packageWidth` = NULL, `productType` = NULL, `purchasePrice` = NULL, `reorderQuantity` = NULL, `salePrice` = NULL, `shippingPrice` = NULL, `shippingRequiresInsurance` = NULL, `stockQuantity` = NULL, `tags` = NULL, `taxPrice` = NULL, `trackBatch` = NULL, `trackSerial` = NULL, `unit` = NULL, `weightUnit` = NULL, `weightValue` = NULL, `width` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`productCode`)) {
        if (!(is.character(`productCode`) && length(`productCode`) == 1)) {
          stop(paste("Error! Invalid data for `productCode`. Must be a string:", `productCode`))
        }
        self$`productCode` <- `productCode`
      }
      if (!missing(`sku`)) {
        if (!(is.character(`sku`) && length(`sku`) == 1)) {
          stop(paste("Error! Invalid data for `sku`. Must be a string:", `sku`))
        }
        self$`sku` <- `sku`
      }
      if (!is.null(`availability`)) {
        if (!(is.character(`availability`) && length(`availability`) == 1)) {
          stop(paste("Error! Invalid data for `availability`. Must be a string:", `availability`))
        }
        self$`availability` <- `availability`
      }
      if (!is.null(`barcode`)) {
        if (!(is.character(`barcode`) && length(`barcode`) == 1)) {
          stop(paste("Error! Invalid data for `barcode`. Must be a string:", `barcode`))
        }
        self$`barcode` <- `barcode`
      }
      if (!is.null(`brand`)) {
        if (!(is.character(`brand`) && length(`brand`) == 1)) {
          stop(paste("Error! Invalid data for `brand`. Must be a string:", `brand`))
        }
        self$`brand` <- `brand`
      }
      if (!is.null(`categoryId`)) {
        if (!(is.character(`categoryId`) && length(`categoryId`) == 1)) {
          stop(paste("Error! Invalid data for `categoryId`. Must be a string:", `categoryId`))
        }
        self$`categoryId` <- `categoryId`
      }
      if (!is.null(`condition`)) {
        if (!(is.character(`condition`) && length(`condition`) == 1)) {
          stop(paste("Error! Invalid data for `condition`. Must be a string:", `condition`))
        }
        self$`condition` <- `condition`
      }
      if (!is.null(`defaultLedgerAccount`)) {
        if (!(is.character(`defaultLedgerAccount`) && length(`defaultLedgerAccount`) == 1)) {
          stop(paste("Error! Invalid data for `defaultLedgerAccount`. Must be a string:", `defaultLedgerAccount`))
        }
        self$`defaultLedgerAccount` <- `defaultLedgerAccount`
      }
      if (!is.null(`defaultPrice`)) {
        if (!(is.character(`defaultPrice`) && length(`defaultPrice`) == 1)) {
          stop(paste("Error! Invalid data for `defaultPrice`. Must be a string:", `defaultPrice`))
        }
        self$`defaultPrice` <- `defaultPrice`
      }
      if (!is.null(`defaultPriceFormulaId`)) {
        if (!(is.character(`defaultPriceFormulaId`) && length(`defaultPriceFormulaId`) == 1)) {
          stop(paste("Error! Invalid data for `defaultPriceFormulaId`. Must be a string:", `defaultPriceFormulaId`))
        }
        self$`defaultPriceFormulaId` <- `defaultPriceFormulaId`
      }
      if (!is.null(`defaultTaxRate`)) {
        if (!(is.character(`defaultTaxRate`) && length(`defaultTaxRate`) == 1)) {
          stop(paste("Error! Invalid data for `defaultTaxRate`. Must be a string:", `defaultTaxRate`))
        }
        self$`defaultTaxRate` <- `defaultTaxRate`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`gtin`)) {
        if (!(is.character(`gtin`) && length(`gtin`) == 1)) {
          stop(paste("Error! Invalid data for `gtin`. Must be a string:", `gtin`))
        }
        self$`gtin` <- `gtin`
      }
      if (!is.null(`height`)) {
        if (!(is.character(`height`) && length(`height`) == 1)) {
          stop(paste("Error! Invalid data for `height`. Must be a string:", `height`))
        }
        self$`height` <- `height`
      }
      if (!is.null(`imageLink`)) {
        if (!(is.character(`imageLink`) && length(`imageLink`) == 1)) {
          stop(paste("Error! Invalid data for `imageLink`. Must be a string:", `imageLink`))
        }
        self$`imageLink` <- `imageLink`
      }
      if (!is.null(`images`)) {
        stopifnot(R6::is.R6(`images`))
        self$`images` <- `images`
      }
      if (!is.null(`isTaxable`)) {
        if (!(is.logical(`isTaxable`) && length(`isTaxable`) == 1)) {
          stop(paste("Error! Invalid data for `isTaxable`. Must be a boolean:", `isTaxable`))
        }
        self$`isTaxable` <- `isTaxable`
      }
      if (!is.null(`length`)) {
        if (!(is.character(`length`) && length(`length`) == 1)) {
          stop(paste("Error! Invalid data for `length`. Must be a string:", `length`))
        }
        self$`length` <- `length`
      }
      if (!is.null(`link`)) {
        if (!(is.character(`link`) && length(`link`) == 1)) {
          stop(paste("Error! Invalid data for `link`. Must be a string:", `link`))
        }
        self$`link` <- `link`
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
      if (!is.null(`mpn`)) {
        if (!(is.character(`mpn`) && length(`mpn`) == 1)) {
          stop(paste("Error! Invalid data for `mpn`. Must be a string:", `mpn`))
        }
        self$`mpn` <- `mpn`
      }
      if (!is.null(`packageHeight`)) {
        if (!(is.character(`packageHeight`) && length(`packageHeight`) == 1)) {
          stop(paste("Error! Invalid data for `packageHeight`. Must be a string:", `packageHeight`))
        }
        self$`packageHeight` <- `packageHeight`
      }
      if (!is.null(`packageLength`)) {
        if (!(is.character(`packageLength`) && length(`packageLength`) == 1)) {
          stop(paste("Error! Invalid data for `packageLength`. Must be a string:", `packageLength`))
        }
        self$`packageLength` <- `packageLength`
      }
      if (!is.null(`packageWeightUnit`)) {
        if (!(is.character(`packageWeightUnit`) && length(`packageWeightUnit`) == 1)) {
          stop(paste("Error! Invalid data for `packageWeightUnit`. Must be a string:", `packageWeightUnit`))
        }
        self$`packageWeightUnit` <- `packageWeightUnit`
      }
      if (!is.null(`packageWeightValue`)) {
        if (!(is.character(`packageWeightValue`) && length(`packageWeightValue`) == 1)) {
          stop(paste("Error! Invalid data for `packageWeightValue`. Must be a string:", `packageWeightValue`))
        }
        self$`packageWeightValue` <- `packageWeightValue`
      }
      if (!is.null(`packageWidth`)) {
        if (!(is.character(`packageWidth`) && length(`packageWidth`) == 1)) {
          stop(paste("Error! Invalid data for `packageWidth`. Must be a string:", `packageWidth`))
        }
        self$`packageWidth` <- `packageWidth`
      }
      if (!is.null(`productType`)) {
        if (!(is.character(`productType`) && length(`productType`) == 1)) {
          stop(paste("Error! Invalid data for `productType`. Must be a string:", `productType`))
        }
        self$`productType` <- `productType`
      }
      if (!is.null(`purchasePrice`)) {
        if (!(is.character(`purchasePrice`) && length(`purchasePrice`) == 1)) {
          stop(paste("Error! Invalid data for `purchasePrice`. Must be a string:", `purchasePrice`))
        }
        self$`purchasePrice` <- `purchasePrice`
      }
      if (!is.null(`reorderQuantity`)) {
        if (!(is.numeric(`reorderQuantity`) && length(`reorderQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `reorderQuantity`. Must be an integer:", `reorderQuantity`))
        }
        self$`reorderQuantity` <- `reorderQuantity`
      }
      if (!is.null(`salePrice`)) {
        if (!(is.character(`salePrice`) && length(`salePrice`) == 1)) {
          stop(paste("Error! Invalid data for `salePrice`. Must be a string:", `salePrice`))
        }
        self$`salePrice` <- `salePrice`
      }
      if (!is.null(`shippingPrice`)) {
        if (!(is.character(`shippingPrice`) && length(`shippingPrice`) == 1)) {
          stop(paste("Error! Invalid data for `shippingPrice`. Must be a string:", `shippingPrice`))
        }
        self$`shippingPrice` <- `shippingPrice`
      }
      if (!is.null(`shippingRequiresInsurance`)) {
        if (!(is.logical(`shippingRequiresInsurance`) && length(`shippingRequiresInsurance`) == 1)) {
          stop(paste("Error! Invalid data for `shippingRequiresInsurance`. Must be a boolean:", `shippingRequiresInsurance`))
        }
        self$`shippingRequiresInsurance` <- `shippingRequiresInsurance`
      }
      if (!is.null(`stockQuantity`)) {
        if (!(is.numeric(`stockQuantity`) && length(`stockQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `stockQuantity`. Must be an integer:", `stockQuantity`))
        }
        self$`stockQuantity` <- `stockQuantity`
      }
      if (!is.null(`tags`)) {
        stopifnot(R6::is.R6(`tags`))
        self$`tags` <- `tags`
      }
      if (!is.null(`taxPrice`)) {
        if (!(is.character(`taxPrice`) && length(`taxPrice`) == 1)) {
          stop(paste("Error! Invalid data for `taxPrice`. Must be a string:", `taxPrice`))
        }
        self$`taxPrice` <- `taxPrice`
      }
      if (!is.null(`trackBatch`)) {
        if (!(is.logical(`trackBatch`) && length(`trackBatch`) == 1)) {
          stop(paste("Error! Invalid data for `trackBatch`. Must be a boolean:", `trackBatch`))
        }
        self$`trackBatch` <- `trackBatch`
      }
      if (!is.null(`trackSerial`)) {
        if (!(is.logical(`trackSerial`) && length(`trackSerial`) == 1)) {
          stop(paste("Error! Invalid data for `trackSerial`. Must be a boolean:", `trackSerial`))
        }
        self$`trackSerial` <- `trackSerial`
      }
      if (!is.null(`unit`)) {
        stopifnot(R6::is.R6(`unit`))
        self$`unit` <- `unit`
      }
      if (!is.null(`weightUnit`)) {
        if (!(is.character(`weightUnit`) && length(`weightUnit`) == 1)) {
          stop(paste("Error! Invalid data for `weightUnit`. Must be a string:", `weightUnit`))
        }
        self$`weightUnit` <- `weightUnit`
      }
      if (!is.null(`weightValue`)) {
        if (!(is.character(`weightValue`) && length(`weightValue`) == 1)) {
          stop(paste("Error! Invalid data for `weightValue`. Must be a string:", `weightValue`))
        }
        self$`weightValue` <- `weightValue`
      }
      if (!is.null(`width`)) {
        if (!(is.character(`width`) && length(`width`) == 1)) {
          stop(paste("Error! Invalid data for `width`. Must be a string:", `width`))
        }
        self$`width` <- `width`
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
    #' @return Product as a base R list.
    #' @examples
    #' # convert array of Product (x) to a data frame
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
    #' Convert Product to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProductObject <- list()
      if (!is.null(self$`availability`)) {
        ProductObject[["availability"]] <-
          self$`availability`
      }
      if (!is.null(self$`barcode`)) {
        ProductObject[["barcode"]] <-
          self$`barcode`
      }
      if (!is.null(self$`brand`)) {
        ProductObject[["brand"]] <-
          self$`brand`
      }
      if (!is.null(self$`categoryId`)) {
        ProductObject[["categoryId"]] <-
          self$`categoryId`
      }
      if (!is.null(self$`condition`)) {
        ProductObject[["condition"]] <-
          self$`condition`
      }
      if (!is.null(self$`defaultLedgerAccount`)) {
        ProductObject[["defaultLedgerAccount"]] <-
          self$`defaultLedgerAccount`
      }
      if (!is.null(self$`defaultPrice`)) {
        ProductObject[["defaultPrice"]] <-
          self$`defaultPrice`
      }
      if (!is.null(self$`defaultPriceFormulaId`)) {
        ProductObject[["defaultPriceFormulaId"]] <-
          self$`defaultPriceFormulaId`
      }
      if (!is.null(self$`defaultTaxRate`)) {
        ProductObject[["defaultTaxRate"]] <-
          self$`defaultTaxRate`
      }
      if (!is.null(self$`description`)) {
        ProductObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`gtin`)) {
        ProductObject[["gtin"]] <-
          self$`gtin`
      }
      if (!is.null(self$`height`)) {
        ProductObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`imageLink`)) {
        ProductObject[["imageLink"]] <-
          self$`imageLink`
      }
      if (!is.null(self$`images`)) {
        ProductObject[["images"]] <-
          self$extractSimpleType(self$`images`)
      }
      if (!is.null(self$`isTaxable`)) {
        ProductObject[["isTaxable"]] <-
          self$`isTaxable`
      }
      if (!is.null(self$`length`)) {
        ProductObject[["length"]] <-
          self$`length`
      }
      if (!is.null(self$`link`)) {
        ProductObject[["link"]] <-
          self$`link`
      }
      if (!is.null(self$`maxStock`)) {
        ProductObject[["maxStock"]] <-
          self$`maxStock`
      }
      if (!is.null(self$`minStock`)) {
        ProductObject[["minStock"]] <-
          self$`minStock`
      }
      if (!is.null(self$`mpn`)) {
        ProductObject[["mpn"]] <-
          self$`mpn`
      }
      if (!is.null(self$`name`)) {
        ProductObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`packageHeight`)) {
        ProductObject[["packageHeight"]] <-
          self$`packageHeight`
      }
      if (!is.null(self$`packageLength`)) {
        ProductObject[["packageLength"]] <-
          self$`packageLength`
      }
      if (!is.null(self$`packageWeightUnit`)) {
        ProductObject[["packageWeightUnit"]] <-
          self$`packageWeightUnit`
      }
      if (!is.null(self$`packageWeightValue`)) {
        ProductObject[["packageWeightValue"]] <-
          self$`packageWeightValue`
      }
      if (!is.null(self$`packageWidth`)) {
        ProductObject[["packageWidth"]] <-
          self$`packageWidth`
      }
      if (!is.null(self$`productCode`)) {
        ProductObject[["productCode"]] <-
          self$`productCode`
      }
      if (!is.null(self$`productType`)) {
        ProductObject[["productType"]] <-
          self$`productType`
      }
      if (!is.null(self$`purchasePrice`)) {
        ProductObject[["purchasePrice"]] <-
          self$`purchasePrice`
      }
      if (!is.null(self$`reorderQuantity`)) {
        ProductObject[["reorderQuantity"]] <-
          self$`reorderQuantity`
      }
      if (!is.null(self$`salePrice`)) {
        ProductObject[["salePrice"]] <-
          self$`salePrice`
      }
      if (!is.null(self$`shippingPrice`)) {
        ProductObject[["shippingPrice"]] <-
          self$`shippingPrice`
      }
      if (!is.null(self$`shippingRequiresInsurance`)) {
        ProductObject[["shippingRequiresInsurance"]] <-
          self$`shippingRequiresInsurance`
      }
      if (!is.null(self$`sku`)) {
        ProductObject[["sku"]] <-
          self$`sku`
      }
      if (!is.null(self$`stockQuantity`)) {
        ProductObject[["stockQuantity"]] <-
          self$`stockQuantity`
      }
      if (!is.null(self$`tags`)) {
        ProductObject[["tags"]] <-
          self$extractSimpleType(self$`tags`)
      }
      if (!is.null(self$`taxPrice`)) {
        ProductObject[["taxPrice"]] <-
          self$`taxPrice`
      }
      if (!is.null(self$`trackBatch`)) {
        ProductObject[["trackBatch"]] <-
          self$`trackBatch`
      }
      if (!is.null(self$`trackSerial`)) {
        ProductObject[["trackSerial"]] <-
          self$`trackSerial`
      }
      if (!is.null(self$`unit`)) {
        ProductObject[["unit"]] <-
          self$extractSimpleType(self$`unit`)
      }
      if (!is.null(self$`weightUnit`)) {
        ProductObject[["weightUnit"]] <-
          self$`weightUnit`
      }
      if (!is.null(self$`weightValue`)) {
        ProductObject[["weightValue"]] <-
          self$`weightValue`
      }
      if (!is.null(self$`width`)) {
        ProductObject[["width"]] <-
          self$`width`
      }
      return(ProductObject)
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
    #' Deserialize JSON string into an instance of Product
    #'
    #' @param input_json the JSON input
    #' @return the instance of Product
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`availability`)) {
        self$`availability` <- this_object$`availability`
      }
      if (!is.null(this_object$`barcode`)) {
        self$`barcode` <- this_object$`barcode`
      }
      if (!is.null(this_object$`brand`)) {
        self$`brand` <- this_object$`brand`
      }
      if (!is.null(this_object$`categoryId`)) {
        self$`categoryId` <- this_object$`categoryId`
      }
      if (!is.null(this_object$`condition`)) {
        self$`condition` <- this_object$`condition`
      }
      if (!is.null(this_object$`defaultLedgerAccount`)) {
        self$`defaultLedgerAccount` <- this_object$`defaultLedgerAccount`
      }
      if (!is.null(this_object$`defaultPrice`)) {
        self$`defaultPrice` <- this_object$`defaultPrice`
      }
      if (!is.null(this_object$`defaultPriceFormulaId`)) {
        self$`defaultPriceFormulaId` <- this_object$`defaultPriceFormulaId`
      }
      if (!is.null(this_object$`defaultTaxRate`)) {
        self$`defaultTaxRate` <- this_object$`defaultTaxRate`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`gtin`)) {
        self$`gtin` <- this_object$`gtin`
      }
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`imageLink`)) {
        self$`imageLink` <- this_object$`imageLink`
      }
      if (!is.null(this_object$`images`)) {
        `images_object` <- AnyType$new()
        `images_object`$fromJSON(jsonlite::toJSON(this_object$`images`, auto_unbox = TRUE, digits = NA))
        self$`images` <- `images_object`
      }
      if (!is.null(this_object$`isTaxable`)) {
        self$`isTaxable` <- this_object$`isTaxable`
      }
      if (!is.null(this_object$`length`)) {
        self$`length` <- this_object$`length`
      }
      if (!is.null(this_object$`link`)) {
        self$`link` <- this_object$`link`
      }
      if (!is.null(this_object$`maxStock`)) {
        self$`maxStock` <- this_object$`maxStock`
      }
      if (!is.null(this_object$`minStock`)) {
        self$`minStock` <- this_object$`minStock`
      }
      if (!is.null(this_object$`mpn`)) {
        self$`mpn` <- this_object$`mpn`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`packageHeight`)) {
        self$`packageHeight` <- this_object$`packageHeight`
      }
      if (!is.null(this_object$`packageLength`)) {
        self$`packageLength` <- this_object$`packageLength`
      }
      if (!is.null(this_object$`packageWeightUnit`)) {
        self$`packageWeightUnit` <- this_object$`packageWeightUnit`
      }
      if (!is.null(this_object$`packageWeightValue`)) {
        self$`packageWeightValue` <- this_object$`packageWeightValue`
      }
      if (!is.null(this_object$`packageWidth`)) {
        self$`packageWidth` <- this_object$`packageWidth`
      }
      if (!is.null(this_object$`productCode`)) {
        self$`productCode` <- this_object$`productCode`
      }
      if (!is.null(this_object$`productType`)) {
        self$`productType` <- this_object$`productType`
      }
      if (!is.null(this_object$`purchasePrice`)) {
        self$`purchasePrice` <- this_object$`purchasePrice`
      }
      if (!is.null(this_object$`reorderQuantity`)) {
        self$`reorderQuantity` <- this_object$`reorderQuantity`
      }
      if (!is.null(this_object$`salePrice`)) {
        self$`salePrice` <- this_object$`salePrice`
      }
      if (!is.null(this_object$`shippingPrice`)) {
        self$`shippingPrice` <- this_object$`shippingPrice`
      }
      if (!is.null(this_object$`shippingRequiresInsurance`)) {
        self$`shippingRequiresInsurance` <- this_object$`shippingRequiresInsurance`
      }
      if (!is.null(this_object$`sku`)) {
        self$`sku` <- this_object$`sku`
      }
      if (!is.null(this_object$`stockQuantity`)) {
        self$`stockQuantity` <- this_object$`stockQuantity`
      }
      if (!is.null(this_object$`tags`)) {
        `tags_object` <- AnyType$new()
        `tags_object`$fromJSON(jsonlite::toJSON(this_object$`tags`, auto_unbox = TRUE, digits = NA))
        self$`tags` <- `tags_object`
      }
      if (!is.null(this_object$`taxPrice`)) {
        self$`taxPrice` <- this_object$`taxPrice`
      }
      if (!is.null(this_object$`trackBatch`)) {
        self$`trackBatch` <- this_object$`trackBatch`
      }
      if (!is.null(this_object$`trackSerial`)) {
        self$`trackSerial` <- this_object$`trackSerial`
      }
      if (!is.null(this_object$`unit`)) {
        `unit_object` <- AnyType$new()
        `unit_object`$fromJSON(jsonlite::toJSON(this_object$`unit`, auto_unbox = TRUE, digits = NA))
        self$`unit` <- `unit_object`
      }
      if (!is.null(this_object$`weightUnit`)) {
        self$`weightUnit` <- this_object$`weightUnit`
      }
      if (!is.null(this_object$`weightValue`)) {
        self$`weightValue` <- this_object$`weightValue`
      }
      if (!is.null(this_object$`width`)) {
        self$`width` <- this_object$`width`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Product in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Product
    #'
    #' @param input_json the JSON input
    #' @return the instance of Product
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`availability` <- this_object$`availability`
      self$`barcode` <- this_object$`barcode`
      self$`brand` <- this_object$`brand`
      self$`categoryId` <- this_object$`categoryId`
      self$`condition` <- this_object$`condition`
      self$`defaultLedgerAccount` <- this_object$`defaultLedgerAccount`
      self$`defaultPrice` <- this_object$`defaultPrice`
      self$`defaultPriceFormulaId` <- this_object$`defaultPriceFormulaId`
      self$`defaultTaxRate` <- this_object$`defaultTaxRate`
      self$`description` <- this_object$`description`
      self$`gtin` <- this_object$`gtin`
      self$`height` <- this_object$`height`
      self$`imageLink` <- this_object$`imageLink`
      self$`images` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`images`, auto_unbox = TRUE, digits = NA))
      self$`isTaxable` <- this_object$`isTaxable`
      self$`length` <- this_object$`length`
      self$`link` <- this_object$`link`
      self$`maxStock` <- this_object$`maxStock`
      self$`minStock` <- this_object$`minStock`
      self$`mpn` <- this_object$`mpn`
      self$`name` <- this_object$`name`
      self$`packageHeight` <- this_object$`packageHeight`
      self$`packageLength` <- this_object$`packageLength`
      self$`packageWeightUnit` <- this_object$`packageWeightUnit`
      self$`packageWeightValue` <- this_object$`packageWeightValue`
      self$`packageWidth` <- this_object$`packageWidth`
      self$`productCode` <- this_object$`productCode`
      self$`productType` <- this_object$`productType`
      self$`purchasePrice` <- this_object$`purchasePrice`
      self$`reorderQuantity` <- this_object$`reorderQuantity`
      self$`salePrice` <- this_object$`salePrice`
      self$`shippingPrice` <- this_object$`shippingPrice`
      self$`shippingRequiresInsurance` <- this_object$`shippingRequiresInsurance`
      self$`sku` <- this_object$`sku`
      self$`stockQuantity` <- this_object$`stockQuantity`
      self$`tags` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`tags`, auto_unbox = TRUE, digits = NA))
      self$`taxPrice` <- this_object$`taxPrice`
      self$`trackBatch` <- this_object$`trackBatch`
      self$`trackSerial` <- this_object$`trackSerial`
      self$`unit` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`unit`, auto_unbox = TRUE, digits = NA))
      self$`weightUnit` <- this_object$`weightUnit`
      self$`weightValue` <- this_object$`weightValue`
      self$`width` <- this_object$`width`
      self
    },

    #' @description
    #' Validate JSON input with respect to Product and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Product: the required field `name` is missing."))
      }
      # check the required field `productCode`
      if (!is.null(input_json$`productCode`)) {
        if (!(is.character(input_json$`productCode`) && length(input_json$`productCode`) == 1)) {
          stop(paste("Error! Invalid data for `productCode`. Must be a string:", input_json$`productCode`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Product: the required field `productCode` is missing."))
      }
      # check the required field `sku`
      if (!is.null(input_json$`sku`)) {
        if (!(is.character(input_json$`sku`) && length(input_json$`sku`) == 1)) {
          stop(paste("Error! Invalid data for `sku`. Must be a string:", input_json$`sku`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Product: the required field `sku` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Product
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`barcode`) > 100) {
        return(FALSE)
      }

      if (nchar(self$`brand`) > 255) {
        return(FALSE)
      }

      if (nchar(self$`categoryId`) > 50) {
        return(FALSE)
      }

      if (nchar(self$`defaultLedgerAccount`) > 50) {
        return(FALSE)
      }

      if (nchar(self$`description`) > 5000) {
        return(FALSE)
      }

      if (nchar(self$`gtin`) > 50) {
        return(FALSE)
      }

      if (nchar(self$`imageLink`) > 2048) {
        return(FALSE)
      }

      if (nchar(self$`link`) > 2048) {
        return(FALSE)
      }

      if (nchar(self$`mpn`) > 100) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`packageWeightUnit`) > 10) {
        return(FALSE)
      }

      # check if the required `productCode` is null
      if (is.null(self$`productCode`)) {
        return(FALSE)
      }

      if (nchar(self$`productCode`) > 100) {
        return(FALSE)
      }
      if (nchar(self$`productCode`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`productType`) > 50) {
        return(FALSE)
      }

      # check if the required `sku` is null
      if (is.null(self$`sku`)) {
        return(FALSE)
      }

      if (nchar(self$`sku`) > 100) {
        return(FALSE)
      }
      if (nchar(self$`sku`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`weightUnit`) > 10) {
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
      if (nchar(self$`barcode`) > 100) {
        invalid_fields["barcode"] <- "Invalid length for `barcode`, must be smaller than or equal to 100."
      }

      if (nchar(self$`brand`) > 255) {
        invalid_fields["brand"] <- "Invalid length for `brand`, must be smaller than or equal to 255."
      }

      if (nchar(self$`categoryId`) > 50) {
        invalid_fields["categoryId"] <- "Invalid length for `categoryId`, must be smaller than or equal to 50."
      }

      if (nchar(self$`defaultLedgerAccount`) > 50) {
        invalid_fields["defaultLedgerAccount"] <- "Invalid length for `defaultLedgerAccount`, must be smaller than or equal to 50."
      }

      if (nchar(self$`description`) > 5000) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 5000."
      }

      if (nchar(self$`gtin`) > 50) {
        invalid_fields["gtin"] <- "Invalid length for `gtin`, must be smaller than or equal to 50."
      }

      if (nchar(self$`imageLink`) > 2048) {
        invalid_fields["imageLink"] <- "Invalid length for `imageLink`, must be smaller than or equal to 2048."
      }

      if (nchar(self$`link`) > 2048) {
        invalid_fields["link"] <- "Invalid length for `link`, must be smaller than or equal to 2048."
      }

      if (nchar(self$`mpn`) > 100) {
        invalid_fields["mpn"] <- "Invalid length for `mpn`, must be smaller than or equal to 100."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }
      if (nchar(self$`name`) < 1) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 1."
      }

      if (nchar(self$`packageWeightUnit`) > 10) {
        invalid_fields["packageWeightUnit"] <- "Invalid length for `packageWeightUnit`, must be smaller than or equal to 10."
      }

      # check if the required `productCode` is null
      if (is.null(self$`productCode`)) {
        invalid_fields["productCode"] <- "Non-nullable required field `productCode` cannot be null."
      }

      if (nchar(self$`productCode`) > 100) {
        invalid_fields["productCode"] <- "Invalid length for `productCode`, must be smaller than or equal to 100."
      }
      if (nchar(self$`productCode`) < 1) {
        invalid_fields["productCode"] <- "Invalid length for `productCode`, must be bigger than or equal to 1."
      }

      if (nchar(self$`productType`) > 50) {
        invalid_fields["productType"] <- "Invalid length for `productType`, must be smaller than or equal to 50."
      }

      # check if the required `sku` is null
      if (is.null(self$`sku`)) {
        invalid_fields["sku"] <- "Non-nullable required field `sku` cannot be null."
      }

      if (nchar(self$`sku`) > 100) {
        invalid_fields["sku"] <- "Invalid length for `sku`, must be smaller than or equal to 100."
      }
      if (nchar(self$`sku`) < 1) {
        invalid_fields["sku"] <- "Invalid length for `sku`, must be bigger than or equal to 1."
      }

      if (nchar(self$`weightUnit`) > 10) {
        invalid_fields["weightUnit"] <- "Invalid length for `weightUnit`, must be smaller than or equal to 10."
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
# Product$unlock()
#
## Below is an example to define the print function
# Product$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Product$lock()

