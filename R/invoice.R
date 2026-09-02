#' Create a new Invoice
#'
#' @description
#' Invoice Class
#'
#' @docType class
#' @title Invoice
#' @description Invoice Class
#' @format An \code{R6Class} generator object
#' @field attachments  \link{AnyType} [optional]
#' @field billingPeriodEnd  character [optional]
#' @field billingPeriodStart  character [optional]
#' @field cancellationDate  character [optional]
#' @field cancellationInvoiceId References the invoice entity. character [optional]
#' @field cancellationReason  character [optional]
#' @field contractId References the contract entity. character [optional]
#' @field currency  \link{CurrencyCode}
#' @field customerId References the customer entity. character [optional]
#' @field discountAmount  character [optional]
#' @field discountDays  integer [optional]
#' @field discountPercentage  character [optional]
#' @field documentType  \link{DocumentType} [optional]
#' @field dunningLevel  integer [optional]
#' @field inputVatAmount  character [optional]
#' @field inputVatDeductible  character [optional]
#' @field inputVatPercentage  character [optional]
#' @field introductionText  character [optional]
#' @field invoiceType  \link{InvoiceType}
#' @field isCancelled  character [optional]
#' @field isDraft  character [optional]
#' @field isEuAcquisition  character [optional]
#' @field isEuDelivery  character [optional]
#' @field isIntraCommunityAcquisition  character [optional]
#' @field isReverseCharge  character [optional]
#' @field issueDate  character
#' @field ledgerAccount  character [optional]
#' @field lineItems  \link{AnyType}
#' @field margin25a  character [optional]
#' @field margin25aGross  character [optional]
#' @field margin25aPurchasePrice  character [optional]
#' @field notes  character [optional]
#' @field orderNumber  character [optional]
#' @field originalPdfPath  character [optional]
#' @field paidAmount  character [optional]
#' @field paymentDueDate  character [optional]
#' @field paymentStatus  \link{PaymentStatus} [optional]
#' @field paymentTermsText  character [optional]
#' @field precedingSalesVoucherId References the preceding sales voucher entity. character [optional]
#' @field precedingSalesVoucherType  \link{PrecedingSalesVoucherType} [optional]
#' @field receiptConfirmationAvailable  character [optional]
#' @field relatedInvoiceId References the invoice entity. character [optional]
#' @field relationshipType  character [optional]
#' @field senderSnapshot  \link{AnyType} [optional]
#' @field sentAt  character [optional]
#' @field servicePeriodEnd  character [optional]
#' @field servicePeriodStart  character [optional]
#' @field status  \link{InvoiceStatus}
#' @field subtotal  character
#' @field supplierId References the supplier entity. character [optional]
#' @field taxExemptionReason  character [optional]
#' @field totalAmount  character
#' @field totalTax  character
#' @field vatCountry  \link{CountryCode} [optional]
#' @field vatSpecialCase  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Invoice <- R6::R6Class(
  "Invoice",
  public = list(
    `attachments` = NULL,
    `billingPeriodEnd` = NULL,
    `billingPeriodStart` = NULL,
    `cancellationDate` = NULL,
    `cancellationInvoiceId` = NULL,
    `cancellationReason` = NULL,
    `contractId` = NULL,
    `currency` = NULL,
    `customerId` = NULL,
    `discountAmount` = NULL,
    `discountDays` = NULL,
    `discountPercentage` = NULL,
    `documentType` = NULL,
    `dunningLevel` = NULL,
    `inputVatAmount` = NULL,
    `inputVatDeductible` = NULL,
    `inputVatPercentage` = NULL,
    `introductionText` = NULL,
    `invoiceType` = NULL,
    `isCancelled` = NULL,
    `isDraft` = NULL,
    `isEuAcquisition` = NULL,
    `isEuDelivery` = NULL,
    `isIntraCommunityAcquisition` = NULL,
    `isReverseCharge` = NULL,
    `issueDate` = NULL,
    `ledgerAccount` = NULL,
    `lineItems` = NULL,
    `margin25a` = NULL,
    `margin25aGross` = NULL,
    `margin25aPurchasePrice` = NULL,
    `notes` = NULL,
    `orderNumber` = NULL,
    `originalPdfPath` = NULL,
    `paidAmount` = NULL,
    `paymentDueDate` = NULL,
    `paymentStatus` = NULL,
    `paymentTermsText` = NULL,
    `precedingSalesVoucherId` = NULL,
    `precedingSalesVoucherType` = NULL,
    `receiptConfirmationAvailable` = NULL,
    `relatedInvoiceId` = NULL,
    `relationshipType` = NULL,
    `senderSnapshot` = NULL,
    `sentAt` = NULL,
    `servicePeriodEnd` = NULL,
    `servicePeriodStart` = NULL,
    `status` = NULL,
    `subtotal` = NULL,
    `supplierId` = NULL,
    `taxExemptionReason` = NULL,
    `totalAmount` = NULL,
    `totalTax` = NULL,
    `vatCountry` = NULL,
    `vatSpecialCase` = NULL,

    #' @description
    #' Initialize a new Invoice class.
    #'
    #' @param currency currency
    #' @param invoiceType invoiceType
    #' @param issueDate issueDate
    #' @param lineItems lineItems
    #' @param status status
    #' @param subtotal subtotal
    #' @param totalAmount totalAmount
    #' @param totalTax totalTax
    #' @param attachments attachments
    #' @param billingPeriodEnd billingPeriodEnd
    #' @param billingPeriodStart billingPeriodStart
    #' @param cancellationDate cancellationDate
    #' @param cancellationInvoiceId References the invoice entity.
    #' @param cancellationReason cancellationReason
    #' @param contractId References the contract entity.
    #' @param customerId References the customer entity.
    #' @param discountAmount discountAmount
    #' @param discountDays discountDays
    #' @param discountPercentage discountPercentage
    #' @param documentType documentType
    #' @param dunningLevel dunningLevel
    #' @param inputVatAmount inputVatAmount
    #' @param inputVatDeductible inputVatDeductible
    #' @param inputVatPercentage inputVatPercentage
    #' @param introductionText introductionText
    #' @param isCancelled isCancelled
    #' @param isDraft isDraft
    #' @param isEuAcquisition isEuAcquisition
    #' @param isEuDelivery isEuDelivery
    #' @param isIntraCommunityAcquisition isIntraCommunityAcquisition
    #' @param isReverseCharge isReverseCharge
    #' @param ledgerAccount ledgerAccount
    #' @param margin25a margin25a
    #' @param margin25aGross margin25aGross
    #' @param margin25aPurchasePrice margin25aPurchasePrice
    #' @param notes notes
    #' @param orderNumber orderNumber
    #' @param originalPdfPath originalPdfPath
    #' @param paidAmount paidAmount
    #' @param paymentDueDate paymentDueDate
    #' @param paymentStatus paymentStatus
    #' @param paymentTermsText paymentTermsText
    #' @param precedingSalesVoucherId References the preceding sales voucher entity.
    #' @param precedingSalesVoucherType precedingSalesVoucherType
    #' @param receiptConfirmationAvailable receiptConfirmationAvailable
    #' @param relatedInvoiceId References the invoice entity.
    #' @param relationshipType relationshipType
    #' @param senderSnapshot senderSnapshot
    #' @param sentAt sentAt
    #' @param servicePeriodEnd servicePeriodEnd
    #' @param servicePeriodStart servicePeriodStart
    #' @param supplierId References the supplier entity.
    #' @param taxExemptionReason taxExemptionReason
    #' @param vatCountry vatCountry
    #' @param vatSpecialCase vatSpecialCase
    #' @param ... Other optional arguments.
    initialize = function(`currency`, `invoiceType`, `issueDate`, `lineItems`, `status`, `subtotal`, `totalAmount`, `totalTax`, `attachments` = NULL, `billingPeriodEnd` = NULL, `billingPeriodStart` = NULL, `cancellationDate` = NULL, `cancellationInvoiceId` = NULL, `cancellationReason` = NULL, `contractId` = NULL, `customerId` = NULL, `discountAmount` = NULL, `discountDays` = NULL, `discountPercentage` = NULL, `documentType` = NULL, `dunningLevel` = NULL, `inputVatAmount` = NULL, `inputVatDeductible` = NULL, `inputVatPercentage` = NULL, `introductionText` = NULL, `isCancelled` = NULL, `isDraft` = NULL, `isEuAcquisition` = NULL, `isEuDelivery` = NULL, `isIntraCommunityAcquisition` = NULL, `isReverseCharge` = NULL, `ledgerAccount` = NULL, `margin25a` = NULL, `margin25aGross` = NULL, `margin25aPurchasePrice` = NULL, `notes` = NULL, `orderNumber` = NULL, `originalPdfPath` = NULL, `paidAmount` = NULL, `paymentDueDate` = NULL, `paymentStatus` = NULL, `paymentTermsText` = NULL, `precedingSalesVoucherId` = NULL, `precedingSalesVoucherType` = NULL, `receiptConfirmationAvailable` = NULL, `relatedInvoiceId` = NULL, `relationshipType` = NULL, `senderSnapshot` = NULL, `sentAt` = NULL, `servicePeriodEnd` = NULL, `servicePeriodStart` = NULL, `supplierId` = NULL, `taxExemptionReason` = NULL, `vatCountry` = NULL, `vatSpecialCase` = NULL, ...) {
      if (!missing(`currency`)) {
        if (!(`currency` %in% c())) {
          stop(paste("Error! \"", `currency`, "\" cannot be assigned to `currency`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`currency`))
        self$`currency` <- `currency`
      }
      if (!missing(`invoiceType`)) {
        if (!(`invoiceType` %in% c())) {
          stop(paste("Error! \"", `invoiceType`, "\" cannot be assigned to `invoiceType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`invoiceType`))
        self$`invoiceType` <- `invoiceType`
      }
      if (!missing(`issueDate`)) {
        if (!(is.character(`issueDate`) && length(`issueDate`) == 1)) {
          stop(paste("Error! Invalid data for `issueDate`. Must be a string:", `issueDate`))
        }
        self$`issueDate` <- `issueDate`
      }
      if (!missing(`lineItems`)) {
        stopifnot(R6::is.R6(`lineItems`))
        self$`lineItems` <- `lineItems`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`subtotal`)) {
        if (!(is.character(`subtotal`) && length(`subtotal`) == 1)) {
          stop(paste("Error! Invalid data for `subtotal`. Must be a string:", `subtotal`))
        }
        self$`subtotal` <- `subtotal`
      }
      if (!missing(`totalAmount`)) {
        if (!(is.character(`totalAmount`) && length(`totalAmount`) == 1)) {
          stop(paste("Error! Invalid data for `totalAmount`. Must be a string:", `totalAmount`))
        }
        self$`totalAmount` <- `totalAmount`
      }
      if (!missing(`totalTax`)) {
        if (!(is.character(`totalTax`) && length(`totalTax`) == 1)) {
          stop(paste("Error! Invalid data for `totalTax`. Must be a string:", `totalTax`))
        }
        self$`totalTax` <- `totalTax`
      }
      if (!is.null(`attachments`)) {
        stopifnot(R6::is.R6(`attachments`))
        self$`attachments` <- `attachments`
      }
      if (!is.null(`billingPeriodEnd`)) {
        if (!is.character(`billingPeriodEnd`)) {
          stop(paste("Error! Invalid data for `billingPeriodEnd`. Must be a string:", `billingPeriodEnd`))
        }
        self$`billingPeriodEnd` <- `billingPeriodEnd`
      }
      if (!is.null(`billingPeriodStart`)) {
        if (!is.character(`billingPeriodStart`)) {
          stop(paste("Error! Invalid data for `billingPeriodStart`. Must be a string:", `billingPeriodStart`))
        }
        self$`billingPeriodStart` <- `billingPeriodStart`
      }
      if (!is.null(`cancellationDate`)) {
        if (!is.character(`cancellationDate`)) {
          stop(paste("Error! Invalid data for `cancellationDate`. Must be a string:", `cancellationDate`))
        }
        self$`cancellationDate` <- `cancellationDate`
      }
      if (!is.null(`cancellationInvoiceId`)) {
        if (!(is.character(`cancellationInvoiceId`) && length(`cancellationInvoiceId`) == 1)) {
          stop(paste("Error! Invalid data for `cancellationInvoiceId`. Must be a string:", `cancellationInvoiceId`))
        }
        self$`cancellationInvoiceId` <- `cancellationInvoiceId`
      }
      if (!is.null(`cancellationReason`)) {
        if (!(is.character(`cancellationReason`) && length(`cancellationReason`) == 1)) {
          stop(paste("Error! Invalid data for `cancellationReason`. Must be a string:", `cancellationReason`))
        }
        self$`cancellationReason` <- `cancellationReason`
      }
      if (!is.null(`contractId`)) {
        if (!(is.character(`contractId`) && length(`contractId`) == 1)) {
          stop(paste("Error! Invalid data for `contractId`. Must be a string:", `contractId`))
        }
        self$`contractId` <- `contractId`
      }
      if (!is.null(`customerId`)) {
        if (!(is.character(`customerId`) && length(`customerId`) == 1)) {
          stop(paste("Error! Invalid data for `customerId`. Must be a string:", `customerId`))
        }
        self$`customerId` <- `customerId`
      }
      if (!is.null(`discountAmount`)) {
        if (!(is.character(`discountAmount`) && length(`discountAmount`) == 1)) {
          stop(paste("Error! Invalid data for `discountAmount`. Must be a string:", `discountAmount`))
        }
        self$`discountAmount` <- `discountAmount`
      }
      if (!is.null(`discountDays`)) {
        if (!(is.numeric(`discountDays`) && length(`discountDays`) == 1)) {
          stop(paste("Error! Invalid data for `discountDays`. Must be an integer:", `discountDays`))
        }
        self$`discountDays` <- `discountDays`
      }
      if (!is.null(`discountPercentage`)) {
        if (!(is.character(`discountPercentage`) && length(`discountPercentage`) == 1)) {
          stop(paste("Error! Invalid data for `discountPercentage`. Must be a string:", `discountPercentage`))
        }
        self$`discountPercentage` <- `discountPercentage`
      }
      if (!is.null(`documentType`)) {
        if (!(`documentType` %in% c())) {
          stop(paste("Error! \"", `documentType`, "\" cannot be assigned to `documentType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`documentType`))
        self$`documentType` <- `documentType`
      }
      if (!is.null(`dunningLevel`)) {
        if (!(is.numeric(`dunningLevel`) && length(`dunningLevel`) == 1)) {
          stop(paste("Error! Invalid data for `dunningLevel`. Must be an integer:", `dunningLevel`))
        }
        self$`dunningLevel` <- `dunningLevel`
      }
      if (!is.null(`inputVatAmount`)) {
        if (!(is.character(`inputVatAmount`) && length(`inputVatAmount`) == 1)) {
          stop(paste("Error! Invalid data for `inputVatAmount`. Must be a string:", `inputVatAmount`))
        }
        self$`inputVatAmount` <- `inputVatAmount`
      }
      if (!is.null(`inputVatDeductible`)) {
        if (!(is.logical(`inputVatDeductible`) && length(`inputVatDeductible`) == 1)) {
          stop(paste("Error! Invalid data for `inputVatDeductible`. Must be a boolean:", `inputVatDeductible`))
        }
        self$`inputVatDeductible` <- `inputVatDeductible`
      }
      if (!is.null(`inputVatPercentage`)) {
        if (!(is.character(`inputVatPercentage`) && length(`inputVatPercentage`) == 1)) {
          stop(paste("Error! Invalid data for `inputVatPercentage`. Must be a string:", `inputVatPercentage`))
        }
        self$`inputVatPercentage` <- `inputVatPercentage`
      }
      if (!is.null(`introductionText`)) {
        if (!(is.character(`introductionText`) && length(`introductionText`) == 1)) {
          stop(paste("Error! Invalid data for `introductionText`. Must be a string:", `introductionText`))
        }
        self$`introductionText` <- `introductionText`
      }
      if (!is.null(`isCancelled`)) {
        if (!(is.logical(`isCancelled`) && length(`isCancelled`) == 1)) {
          stop(paste("Error! Invalid data for `isCancelled`. Must be a boolean:", `isCancelled`))
        }
        self$`isCancelled` <- `isCancelled`
      }
      if (!is.null(`isDraft`)) {
        if (!(is.logical(`isDraft`) && length(`isDraft`) == 1)) {
          stop(paste("Error! Invalid data for `isDraft`. Must be a boolean:", `isDraft`))
        }
        self$`isDraft` <- `isDraft`
      }
      if (!is.null(`isEuAcquisition`)) {
        if (!(is.logical(`isEuAcquisition`) && length(`isEuAcquisition`) == 1)) {
          stop(paste("Error! Invalid data for `isEuAcquisition`. Must be a boolean:", `isEuAcquisition`))
        }
        self$`isEuAcquisition` <- `isEuAcquisition`
      }
      if (!is.null(`isEuDelivery`)) {
        if (!(is.logical(`isEuDelivery`) && length(`isEuDelivery`) == 1)) {
          stop(paste("Error! Invalid data for `isEuDelivery`. Must be a boolean:", `isEuDelivery`))
        }
        self$`isEuDelivery` <- `isEuDelivery`
      }
      if (!is.null(`isIntraCommunityAcquisition`)) {
        if (!(is.logical(`isIntraCommunityAcquisition`) && length(`isIntraCommunityAcquisition`) == 1)) {
          stop(paste("Error! Invalid data for `isIntraCommunityAcquisition`. Must be a boolean:", `isIntraCommunityAcquisition`))
        }
        self$`isIntraCommunityAcquisition` <- `isIntraCommunityAcquisition`
      }
      if (!is.null(`isReverseCharge`)) {
        if (!(is.logical(`isReverseCharge`) && length(`isReverseCharge`) == 1)) {
          stop(paste("Error! Invalid data for `isReverseCharge`. Must be a boolean:", `isReverseCharge`))
        }
        self$`isReverseCharge` <- `isReverseCharge`
      }
      if (!is.null(`ledgerAccount`)) {
        if (!(is.character(`ledgerAccount`) && length(`ledgerAccount`) == 1)) {
          stop(paste("Error! Invalid data for `ledgerAccount`. Must be a string:", `ledgerAccount`))
        }
        self$`ledgerAccount` <- `ledgerAccount`
      }
      if (!is.null(`margin25a`)) {
        if (!(is.logical(`margin25a`) && length(`margin25a`) == 1)) {
          stop(paste("Error! Invalid data for `margin25a`. Must be a boolean:", `margin25a`))
        }
        self$`margin25a` <- `margin25a`
      }
      if (!is.null(`margin25aGross`)) {
        if (!(is.character(`margin25aGross`) && length(`margin25aGross`) == 1)) {
          stop(paste("Error! Invalid data for `margin25aGross`. Must be a string:", `margin25aGross`))
        }
        self$`margin25aGross` <- `margin25aGross`
      }
      if (!is.null(`margin25aPurchasePrice`)) {
        if (!(is.character(`margin25aPurchasePrice`) && length(`margin25aPurchasePrice`) == 1)) {
          stop(paste("Error! Invalid data for `margin25aPurchasePrice`. Must be a string:", `margin25aPurchasePrice`))
        }
        self$`margin25aPurchasePrice` <- `margin25aPurchasePrice`
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
      if (!is.null(`originalPdfPath`)) {
        if (!(is.character(`originalPdfPath`) && length(`originalPdfPath`) == 1)) {
          stop(paste("Error! Invalid data for `originalPdfPath`. Must be a string:", `originalPdfPath`))
        }
        self$`originalPdfPath` <- `originalPdfPath`
      }
      if (!is.null(`paidAmount`)) {
        if (!(is.character(`paidAmount`) && length(`paidAmount`) == 1)) {
          stop(paste("Error! Invalid data for `paidAmount`. Must be a string:", `paidAmount`))
        }
        self$`paidAmount` <- `paidAmount`
      }
      if (!is.null(`paymentDueDate`)) {
        if (!is.character(`paymentDueDate`)) {
          stop(paste("Error! Invalid data for `paymentDueDate`. Must be a string:", `paymentDueDate`))
        }
        self$`paymentDueDate` <- `paymentDueDate`
      }
      if (!is.null(`paymentStatus`)) {
        if (!(`paymentStatus` %in% c())) {
          stop(paste("Error! \"", `paymentStatus`, "\" cannot be assigned to `paymentStatus`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`paymentStatus`))
        self$`paymentStatus` <- `paymentStatus`
      }
      if (!is.null(`paymentTermsText`)) {
        if (!(is.character(`paymentTermsText`) && length(`paymentTermsText`) == 1)) {
          stop(paste("Error! Invalid data for `paymentTermsText`. Must be a string:", `paymentTermsText`))
        }
        self$`paymentTermsText` <- `paymentTermsText`
      }
      if (!is.null(`precedingSalesVoucherId`)) {
        if (!(is.character(`precedingSalesVoucherId`) && length(`precedingSalesVoucherId`) == 1)) {
          stop(paste("Error! Invalid data for `precedingSalesVoucherId`. Must be a string:", `precedingSalesVoucherId`))
        }
        self$`precedingSalesVoucherId` <- `precedingSalesVoucherId`
      }
      if (!is.null(`precedingSalesVoucherType`)) {
        if (!(`precedingSalesVoucherType` %in% c())) {
          stop(paste("Error! \"", `precedingSalesVoucherType`, "\" cannot be assigned to `precedingSalesVoucherType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`precedingSalesVoucherType`))
        self$`precedingSalesVoucherType` <- `precedingSalesVoucherType`
      }
      if (!is.null(`receiptConfirmationAvailable`)) {
        if (!(is.logical(`receiptConfirmationAvailable`) && length(`receiptConfirmationAvailable`) == 1)) {
          stop(paste("Error! Invalid data for `receiptConfirmationAvailable`. Must be a boolean:", `receiptConfirmationAvailable`))
        }
        self$`receiptConfirmationAvailable` <- `receiptConfirmationAvailable`
      }
      if (!is.null(`relatedInvoiceId`)) {
        if (!(is.character(`relatedInvoiceId`) && length(`relatedInvoiceId`) == 1)) {
          stop(paste("Error! Invalid data for `relatedInvoiceId`. Must be a string:", `relatedInvoiceId`))
        }
        self$`relatedInvoiceId` <- `relatedInvoiceId`
      }
      if (!is.null(`relationshipType`)) {
        if (!(is.character(`relationshipType`) && length(`relationshipType`) == 1)) {
          stop(paste("Error! Invalid data for `relationshipType`. Must be a string:", `relationshipType`))
        }
        self$`relationshipType` <- `relationshipType`
      }
      if (!is.null(`senderSnapshot`)) {
        stopifnot(R6::is.R6(`senderSnapshot`))
        self$`senderSnapshot` <- `senderSnapshot`
      }
      if (!is.null(`sentAt`)) {
        if (!is.character(`sentAt`)) {
          stop(paste("Error! Invalid data for `sentAt`. Must be a string:", `sentAt`))
        }
        self$`sentAt` <- `sentAt`
      }
      if (!is.null(`servicePeriodEnd`)) {
        if (!is.character(`servicePeriodEnd`)) {
          stop(paste("Error! Invalid data for `servicePeriodEnd`. Must be a string:", `servicePeriodEnd`))
        }
        self$`servicePeriodEnd` <- `servicePeriodEnd`
      }
      if (!is.null(`servicePeriodStart`)) {
        if (!is.character(`servicePeriodStart`)) {
          stop(paste("Error! Invalid data for `servicePeriodStart`. Must be a string:", `servicePeriodStart`))
        }
        self$`servicePeriodStart` <- `servicePeriodStart`
      }
      if (!is.null(`supplierId`)) {
        if (!(is.character(`supplierId`) && length(`supplierId`) == 1)) {
          stop(paste("Error! Invalid data for `supplierId`. Must be a string:", `supplierId`))
        }
        self$`supplierId` <- `supplierId`
      }
      if (!is.null(`taxExemptionReason`)) {
        if (!(is.character(`taxExemptionReason`) && length(`taxExemptionReason`) == 1)) {
          stop(paste("Error! Invalid data for `taxExemptionReason`. Must be a string:", `taxExemptionReason`))
        }
        self$`taxExemptionReason` <- `taxExemptionReason`
      }
      if (!is.null(`vatCountry`)) {
        if (!(`vatCountry` %in% c())) {
          stop(paste("Error! \"", `vatCountry`, "\" cannot be assigned to `vatCountry`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`vatCountry`))
        self$`vatCountry` <- `vatCountry`
      }
      if (!is.null(`vatSpecialCase`)) {
        if (!(is.character(`vatSpecialCase`) && length(`vatSpecialCase`) == 1)) {
          stop(paste("Error! Invalid data for `vatSpecialCase`. Must be a string:", `vatSpecialCase`))
        }
        self$`vatSpecialCase` <- `vatSpecialCase`
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
    #' @return Invoice as a base R list.
    #' @examples
    #' # convert array of Invoice (x) to a data frame
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
    #' Convert Invoice to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      InvoiceObject <- list()
      if (!is.null(self$`attachments`)) {
        InvoiceObject[["attachments"]] <-
          self$extractSimpleType(self$`attachments`)
      }
      if (!is.null(self$`billingPeriodEnd`)) {
        InvoiceObject[["billingPeriodEnd"]] <-
          self$`billingPeriodEnd`
      }
      if (!is.null(self$`billingPeriodStart`)) {
        InvoiceObject[["billingPeriodStart"]] <-
          self$`billingPeriodStart`
      }
      if (!is.null(self$`cancellationDate`)) {
        InvoiceObject[["cancellationDate"]] <-
          self$`cancellationDate`
      }
      if (!is.null(self$`cancellationInvoiceId`)) {
        InvoiceObject[["cancellationInvoiceId"]] <-
          self$`cancellationInvoiceId`
      }
      if (!is.null(self$`cancellationReason`)) {
        InvoiceObject[["cancellationReason"]] <-
          self$`cancellationReason`
      }
      if (!is.null(self$`contractId`)) {
        InvoiceObject[["contractId"]] <-
          self$`contractId`
      }
      if (!is.null(self$`currency`)) {
        InvoiceObject[["currency"]] <-
          self$extractSimpleType(self$`currency`)
      }
      if (!is.null(self$`customerId`)) {
        InvoiceObject[["customerId"]] <-
          self$`customerId`
      }
      if (!is.null(self$`discountAmount`)) {
        InvoiceObject[["discountAmount"]] <-
          self$`discountAmount`
      }
      if (!is.null(self$`discountDays`)) {
        InvoiceObject[["discountDays"]] <-
          self$`discountDays`
      }
      if (!is.null(self$`discountPercentage`)) {
        InvoiceObject[["discountPercentage"]] <-
          self$`discountPercentage`
      }
      if (!is.null(self$`documentType`)) {
        InvoiceObject[["documentType"]] <-
          self$extractSimpleType(self$`documentType`)
      }
      if (!is.null(self$`dunningLevel`)) {
        InvoiceObject[["dunningLevel"]] <-
          self$`dunningLevel`
      }
      if (!is.null(self$`inputVatAmount`)) {
        InvoiceObject[["inputVatAmount"]] <-
          self$`inputVatAmount`
      }
      if (!is.null(self$`inputVatDeductible`)) {
        InvoiceObject[["inputVatDeductible"]] <-
          self$`inputVatDeductible`
      }
      if (!is.null(self$`inputVatPercentage`)) {
        InvoiceObject[["inputVatPercentage"]] <-
          self$`inputVatPercentage`
      }
      if (!is.null(self$`introductionText`)) {
        InvoiceObject[["introductionText"]] <-
          self$`introductionText`
      }
      if (!is.null(self$`invoiceType`)) {
        InvoiceObject[["invoiceType"]] <-
          self$extractSimpleType(self$`invoiceType`)
      }
      if (!is.null(self$`isCancelled`)) {
        InvoiceObject[["isCancelled"]] <-
          self$`isCancelled`
      }
      if (!is.null(self$`isDraft`)) {
        InvoiceObject[["isDraft"]] <-
          self$`isDraft`
      }
      if (!is.null(self$`isEuAcquisition`)) {
        InvoiceObject[["isEuAcquisition"]] <-
          self$`isEuAcquisition`
      }
      if (!is.null(self$`isEuDelivery`)) {
        InvoiceObject[["isEuDelivery"]] <-
          self$`isEuDelivery`
      }
      if (!is.null(self$`isIntraCommunityAcquisition`)) {
        InvoiceObject[["isIntraCommunityAcquisition"]] <-
          self$`isIntraCommunityAcquisition`
      }
      if (!is.null(self$`isReverseCharge`)) {
        InvoiceObject[["isReverseCharge"]] <-
          self$`isReverseCharge`
      }
      if (!is.null(self$`issueDate`)) {
        InvoiceObject[["issueDate"]] <-
          self$`issueDate`
      }
      if (!is.null(self$`ledgerAccount`)) {
        InvoiceObject[["ledgerAccount"]] <-
          self$`ledgerAccount`
      }
      if (!is.null(self$`lineItems`)) {
        InvoiceObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`margin25a`)) {
        InvoiceObject[["margin25a"]] <-
          self$`margin25a`
      }
      if (!is.null(self$`margin25aGross`)) {
        InvoiceObject[["margin25aGross"]] <-
          self$`margin25aGross`
      }
      if (!is.null(self$`margin25aPurchasePrice`)) {
        InvoiceObject[["margin25aPurchasePrice"]] <-
          self$`margin25aPurchasePrice`
      }
      if (!is.null(self$`notes`)) {
        InvoiceObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`orderNumber`)) {
        InvoiceObject[["orderNumber"]] <-
          self$`orderNumber`
      }
      if (!is.null(self$`originalPdfPath`)) {
        InvoiceObject[["originalPdfPath"]] <-
          self$`originalPdfPath`
      }
      if (!is.null(self$`paidAmount`)) {
        InvoiceObject[["paidAmount"]] <-
          self$`paidAmount`
      }
      if (!is.null(self$`paymentDueDate`)) {
        InvoiceObject[["paymentDueDate"]] <-
          self$`paymentDueDate`
      }
      if (!is.null(self$`paymentStatus`)) {
        InvoiceObject[["paymentStatus"]] <-
          self$extractSimpleType(self$`paymentStatus`)
      }
      if (!is.null(self$`paymentTermsText`)) {
        InvoiceObject[["paymentTermsText"]] <-
          self$`paymentTermsText`
      }
      if (!is.null(self$`precedingSalesVoucherId`)) {
        InvoiceObject[["precedingSalesVoucherId"]] <-
          self$`precedingSalesVoucherId`
      }
      if (!is.null(self$`precedingSalesVoucherType`)) {
        InvoiceObject[["precedingSalesVoucherType"]] <-
          self$extractSimpleType(self$`precedingSalesVoucherType`)
      }
      if (!is.null(self$`receiptConfirmationAvailable`)) {
        InvoiceObject[["receiptConfirmationAvailable"]] <-
          self$`receiptConfirmationAvailable`
      }
      if (!is.null(self$`relatedInvoiceId`)) {
        InvoiceObject[["relatedInvoiceId"]] <-
          self$`relatedInvoiceId`
      }
      if (!is.null(self$`relationshipType`)) {
        InvoiceObject[["relationshipType"]] <-
          self$`relationshipType`
      }
      if (!is.null(self$`senderSnapshot`)) {
        InvoiceObject[["senderSnapshot"]] <-
          self$extractSimpleType(self$`senderSnapshot`)
      }
      if (!is.null(self$`sentAt`)) {
        InvoiceObject[["sentAt"]] <-
          self$`sentAt`
      }
      if (!is.null(self$`servicePeriodEnd`)) {
        InvoiceObject[["servicePeriodEnd"]] <-
          self$`servicePeriodEnd`
      }
      if (!is.null(self$`servicePeriodStart`)) {
        InvoiceObject[["servicePeriodStart"]] <-
          self$`servicePeriodStart`
      }
      if (!is.null(self$`status`)) {
        InvoiceObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`subtotal`)) {
        InvoiceObject[["subtotal"]] <-
          self$`subtotal`
      }
      if (!is.null(self$`supplierId`)) {
        InvoiceObject[["supplierId"]] <-
          self$`supplierId`
      }
      if (!is.null(self$`taxExemptionReason`)) {
        InvoiceObject[["taxExemptionReason"]] <-
          self$`taxExemptionReason`
      }
      if (!is.null(self$`totalAmount`)) {
        InvoiceObject[["totalAmount"]] <-
          self$`totalAmount`
      }
      if (!is.null(self$`totalTax`)) {
        InvoiceObject[["totalTax"]] <-
          self$`totalTax`
      }
      if (!is.null(self$`vatCountry`)) {
        InvoiceObject[["vatCountry"]] <-
          self$extractSimpleType(self$`vatCountry`)
      }
      if (!is.null(self$`vatSpecialCase`)) {
        InvoiceObject[["vatSpecialCase"]] <-
          self$`vatSpecialCase`
      }
      return(InvoiceObject)
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
    #' Deserialize JSON string into an instance of Invoice
    #'
    #' @param input_json the JSON input
    #' @return the instance of Invoice
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`attachments`)) {
        `attachments_object` <- AnyType$new()
        `attachments_object`$fromJSON(jsonlite::toJSON(this_object$`attachments`, auto_unbox = TRUE, digits = NA))
        self$`attachments` <- `attachments_object`
      }
      if (!is.null(this_object$`billingPeriodEnd`)) {
        self$`billingPeriodEnd` <- this_object$`billingPeriodEnd`
      }
      if (!is.null(this_object$`billingPeriodStart`)) {
        self$`billingPeriodStart` <- this_object$`billingPeriodStart`
      }
      if (!is.null(this_object$`cancellationDate`)) {
        self$`cancellationDate` <- this_object$`cancellationDate`
      }
      if (!is.null(this_object$`cancellationInvoiceId`)) {
        self$`cancellationInvoiceId` <- this_object$`cancellationInvoiceId`
      }
      if (!is.null(this_object$`cancellationReason`)) {
        self$`cancellationReason` <- this_object$`cancellationReason`
      }
      if (!is.null(this_object$`contractId`)) {
        self$`contractId` <- this_object$`contractId`
      }
      if (!is.null(this_object$`currency`)) {
        `currency_object` <- CurrencyCode$new()
        `currency_object`$fromJSON(jsonlite::toJSON(this_object$`currency`, auto_unbox = TRUE, digits = NA))
        self$`currency` <- `currency_object`
      }
      if (!is.null(this_object$`customerId`)) {
        self$`customerId` <- this_object$`customerId`
      }
      if (!is.null(this_object$`discountAmount`)) {
        self$`discountAmount` <- this_object$`discountAmount`
      }
      if (!is.null(this_object$`discountDays`)) {
        self$`discountDays` <- this_object$`discountDays`
      }
      if (!is.null(this_object$`discountPercentage`)) {
        self$`discountPercentage` <- this_object$`discountPercentage`
      }
      if (!is.null(this_object$`documentType`)) {
        `documenttype_object` <- DocumentType$new()
        `documenttype_object`$fromJSON(jsonlite::toJSON(this_object$`documentType`, auto_unbox = TRUE, digits = NA))
        self$`documentType` <- `documenttype_object`
      }
      if (!is.null(this_object$`dunningLevel`)) {
        self$`dunningLevel` <- this_object$`dunningLevel`
      }
      if (!is.null(this_object$`inputVatAmount`)) {
        self$`inputVatAmount` <- this_object$`inputVatAmount`
      }
      if (!is.null(this_object$`inputVatDeductible`)) {
        self$`inputVatDeductible` <- this_object$`inputVatDeductible`
      }
      if (!is.null(this_object$`inputVatPercentage`)) {
        self$`inputVatPercentage` <- this_object$`inputVatPercentage`
      }
      if (!is.null(this_object$`introductionText`)) {
        self$`introductionText` <- this_object$`introductionText`
      }
      if (!is.null(this_object$`invoiceType`)) {
        `invoicetype_object` <- InvoiceType$new()
        `invoicetype_object`$fromJSON(jsonlite::toJSON(this_object$`invoiceType`, auto_unbox = TRUE, digits = NA))
        self$`invoiceType` <- `invoicetype_object`
      }
      if (!is.null(this_object$`isCancelled`)) {
        self$`isCancelled` <- this_object$`isCancelled`
      }
      if (!is.null(this_object$`isDraft`)) {
        self$`isDraft` <- this_object$`isDraft`
      }
      if (!is.null(this_object$`isEuAcquisition`)) {
        self$`isEuAcquisition` <- this_object$`isEuAcquisition`
      }
      if (!is.null(this_object$`isEuDelivery`)) {
        self$`isEuDelivery` <- this_object$`isEuDelivery`
      }
      if (!is.null(this_object$`isIntraCommunityAcquisition`)) {
        self$`isIntraCommunityAcquisition` <- this_object$`isIntraCommunityAcquisition`
      }
      if (!is.null(this_object$`isReverseCharge`)) {
        self$`isReverseCharge` <- this_object$`isReverseCharge`
      }
      if (!is.null(this_object$`issueDate`)) {
        self$`issueDate` <- this_object$`issueDate`
      }
      if (!is.null(this_object$`ledgerAccount`)) {
        self$`ledgerAccount` <- this_object$`ledgerAccount`
      }
      if (!is.null(this_object$`lineItems`)) {
        `lineitems_object` <- AnyType$new()
        `lineitems_object`$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
        self$`lineItems` <- `lineitems_object`
      }
      if (!is.null(this_object$`margin25a`)) {
        self$`margin25a` <- this_object$`margin25a`
      }
      if (!is.null(this_object$`margin25aGross`)) {
        self$`margin25aGross` <- this_object$`margin25aGross`
      }
      if (!is.null(this_object$`margin25aPurchasePrice`)) {
        self$`margin25aPurchasePrice` <- this_object$`margin25aPurchasePrice`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`orderNumber`)) {
        self$`orderNumber` <- this_object$`orderNumber`
      }
      if (!is.null(this_object$`originalPdfPath`)) {
        self$`originalPdfPath` <- this_object$`originalPdfPath`
      }
      if (!is.null(this_object$`paidAmount`)) {
        self$`paidAmount` <- this_object$`paidAmount`
      }
      if (!is.null(this_object$`paymentDueDate`)) {
        self$`paymentDueDate` <- this_object$`paymentDueDate`
      }
      if (!is.null(this_object$`paymentStatus`)) {
        `paymentstatus_object` <- PaymentStatus$new()
        `paymentstatus_object`$fromJSON(jsonlite::toJSON(this_object$`paymentStatus`, auto_unbox = TRUE, digits = NA))
        self$`paymentStatus` <- `paymentstatus_object`
      }
      if (!is.null(this_object$`paymentTermsText`)) {
        self$`paymentTermsText` <- this_object$`paymentTermsText`
      }
      if (!is.null(this_object$`precedingSalesVoucherId`)) {
        self$`precedingSalesVoucherId` <- this_object$`precedingSalesVoucherId`
      }
      if (!is.null(this_object$`precedingSalesVoucherType`)) {
        `precedingsalesvouchertype_object` <- PrecedingSalesVoucherType$new()
        `precedingsalesvouchertype_object`$fromJSON(jsonlite::toJSON(this_object$`precedingSalesVoucherType`, auto_unbox = TRUE, digits = NA))
        self$`precedingSalesVoucherType` <- `precedingsalesvouchertype_object`
      }
      if (!is.null(this_object$`receiptConfirmationAvailable`)) {
        self$`receiptConfirmationAvailable` <- this_object$`receiptConfirmationAvailable`
      }
      if (!is.null(this_object$`relatedInvoiceId`)) {
        self$`relatedInvoiceId` <- this_object$`relatedInvoiceId`
      }
      if (!is.null(this_object$`relationshipType`)) {
        self$`relationshipType` <- this_object$`relationshipType`
      }
      if (!is.null(this_object$`senderSnapshot`)) {
        `sendersnapshot_object` <- AnyType$new()
        `sendersnapshot_object`$fromJSON(jsonlite::toJSON(this_object$`senderSnapshot`, auto_unbox = TRUE, digits = NA))
        self$`senderSnapshot` <- `sendersnapshot_object`
      }
      if (!is.null(this_object$`sentAt`)) {
        self$`sentAt` <- this_object$`sentAt`
      }
      if (!is.null(this_object$`servicePeriodEnd`)) {
        self$`servicePeriodEnd` <- this_object$`servicePeriodEnd`
      }
      if (!is.null(this_object$`servicePeriodStart`)) {
        self$`servicePeriodStart` <- this_object$`servicePeriodStart`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- InvoiceStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`subtotal`)) {
        self$`subtotal` <- this_object$`subtotal`
      }
      if (!is.null(this_object$`supplierId`)) {
        self$`supplierId` <- this_object$`supplierId`
      }
      if (!is.null(this_object$`taxExemptionReason`)) {
        self$`taxExemptionReason` <- this_object$`taxExemptionReason`
      }
      if (!is.null(this_object$`totalAmount`)) {
        self$`totalAmount` <- this_object$`totalAmount`
      }
      if (!is.null(this_object$`totalTax`)) {
        self$`totalTax` <- this_object$`totalTax`
      }
      if (!is.null(this_object$`vatCountry`)) {
        `vatcountry_object` <- CountryCode$new()
        `vatcountry_object`$fromJSON(jsonlite::toJSON(this_object$`vatCountry`, auto_unbox = TRUE, digits = NA))
        self$`vatCountry` <- `vatcountry_object`
      }
      if (!is.null(this_object$`vatSpecialCase`)) {
        self$`vatSpecialCase` <- this_object$`vatSpecialCase`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Invoice in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Invoice
    #'
    #' @param input_json the JSON input
    #' @return the instance of Invoice
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`attachments` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`attachments`, auto_unbox = TRUE, digits = NA))
      self$`billingPeriodEnd` <- this_object$`billingPeriodEnd`
      self$`billingPeriodStart` <- this_object$`billingPeriodStart`
      self$`cancellationDate` <- this_object$`cancellationDate`
      self$`cancellationInvoiceId` <- this_object$`cancellationInvoiceId`
      self$`cancellationReason` <- this_object$`cancellationReason`
      self$`contractId` <- this_object$`contractId`
      self$`currency` <- CurrencyCode$new()$fromJSON(jsonlite::toJSON(this_object$`currency`, auto_unbox = TRUE, digits = NA))
      self$`customerId` <- this_object$`customerId`
      self$`discountAmount` <- this_object$`discountAmount`
      self$`discountDays` <- this_object$`discountDays`
      self$`discountPercentage` <- this_object$`discountPercentage`
      self$`documentType` <- DocumentType$new()$fromJSON(jsonlite::toJSON(this_object$`documentType`, auto_unbox = TRUE, digits = NA))
      self$`dunningLevel` <- this_object$`dunningLevel`
      self$`inputVatAmount` <- this_object$`inputVatAmount`
      self$`inputVatDeductible` <- this_object$`inputVatDeductible`
      self$`inputVatPercentage` <- this_object$`inputVatPercentage`
      self$`introductionText` <- this_object$`introductionText`
      self$`invoiceType` <- InvoiceType$new()$fromJSON(jsonlite::toJSON(this_object$`invoiceType`, auto_unbox = TRUE, digits = NA))
      self$`isCancelled` <- this_object$`isCancelled`
      self$`isDraft` <- this_object$`isDraft`
      self$`isEuAcquisition` <- this_object$`isEuAcquisition`
      self$`isEuDelivery` <- this_object$`isEuDelivery`
      self$`isIntraCommunityAcquisition` <- this_object$`isIntraCommunityAcquisition`
      self$`isReverseCharge` <- this_object$`isReverseCharge`
      self$`issueDate` <- this_object$`issueDate`
      self$`ledgerAccount` <- this_object$`ledgerAccount`
      self$`lineItems` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
      self$`margin25a` <- this_object$`margin25a`
      self$`margin25aGross` <- this_object$`margin25aGross`
      self$`margin25aPurchasePrice` <- this_object$`margin25aPurchasePrice`
      self$`notes` <- this_object$`notes`
      self$`orderNumber` <- this_object$`orderNumber`
      self$`originalPdfPath` <- this_object$`originalPdfPath`
      self$`paidAmount` <- this_object$`paidAmount`
      self$`paymentDueDate` <- this_object$`paymentDueDate`
      self$`paymentStatus` <- PaymentStatus$new()$fromJSON(jsonlite::toJSON(this_object$`paymentStatus`, auto_unbox = TRUE, digits = NA))
      self$`paymentTermsText` <- this_object$`paymentTermsText`
      self$`precedingSalesVoucherId` <- this_object$`precedingSalesVoucherId`
      self$`precedingSalesVoucherType` <- PrecedingSalesVoucherType$new()$fromJSON(jsonlite::toJSON(this_object$`precedingSalesVoucherType`, auto_unbox = TRUE, digits = NA))
      self$`receiptConfirmationAvailable` <- this_object$`receiptConfirmationAvailable`
      self$`relatedInvoiceId` <- this_object$`relatedInvoiceId`
      self$`relationshipType` <- this_object$`relationshipType`
      self$`senderSnapshot` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`senderSnapshot`, auto_unbox = TRUE, digits = NA))
      self$`sentAt` <- this_object$`sentAt`
      self$`servicePeriodEnd` <- this_object$`servicePeriodEnd`
      self$`servicePeriodStart` <- this_object$`servicePeriodStart`
      self$`status` <- InvoiceStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`subtotal` <- this_object$`subtotal`
      self$`supplierId` <- this_object$`supplierId`
      self$`taxExemptionReason` <- this_object$`taxExemptionReason`
      self$`totalAmount` <- this_object$`totalAmount`
      self$`totalTax` <- this_object$`totalTax`
      self$`vatCountry` <- CountryCode$new()$fromJSON(jsonlite::toJSON(this_object$`vatCountry`, auto_unbox = TRUE, digits = NA))
      self$`vatSpecialCase` <- this_object$`vatSpecialCase`
      self
    },

    #' @description
    #' Validate JSON input with respect to Invoice and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `currency`
      if (!is.null(input_json$`currency`)) {
        stopifnot(R6::is.R6(input_json$`currency`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Invoice: the required field `currency` is missing."))
      }
      # check the required field `invoiceType`
      if (!is.null(input_json$`invoiceType`)) {
        stopifnot(R6::is.R6(input_json$`invoiceType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Invoice: the required field `invoiceType` is missing."))
      }
      # check the required field `issueDate`
      if (!is.null(input_json$`issueDate`)) {
        if (!(is.character(input_json$`issueDate`) && length(input_json$`issueDate`) == 1)) {
          stop(paste("Error! Invalid data for `issueDate`. Must be a string:", input_json$`issueDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Invoice: the required field `issueDate` is missing."))
      }
      # check the required field `lineItems`
      if (!is.null(input_json$`lineItems`)) {
        stopifnot(R6::is.R6(input_json$`lineItems`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Invoice: the required field `lineItems` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Invoice: the required field `status` is missing."))
      }
      # check the required field `subtotal`
      if (!is.null(input_json$`subtotal`)) {
        if (!(is.character(input_json$`subtotal`) && length(input_json$`subtotal`) == 1)) {
          stop(paste("Error! Invalid data for `subtotal`. Must be a string:", input_json$`subtotal`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Invoice: the required field `subtotal` is missing."))
      }
      # check the required field `totalAmount`
      if (!is.null(input_json$`totalAmount`)) {
        if (!(is.character(input_json$`totalAmount`) && length(input_json$`totalAmount`) == 1)) {
          stop(paste("Error! Invalid data for `totalAmount`. Must be a string:", input_json$`totalAmount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Invoice: the required field `totalAmount` is missing."))
      }
      # check the required field `totalTax`
      if (!is.null(input_json$`totalTax`)) {
        if (!(is.character(input_json$`totalTax`) && length(input_json$`totalTax`) == 1)) {
          stop(paste("Error! Invalid data for `totalTax`. Must be a string:", input_json$`totalTax`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Invoice: the required field `totalTax` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Invoice
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        return(FALSE)
      }

      # check if the required `invoiceType` is null
      if (is.null(self$`invoiceType`)) {
        return(FALSE)
      }

      # check if the required `issueDate` is null
      if (is.null(self$`issueDate`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `subtotal` is null
      if (is.null(self$`subtotal`)) {
        return(FALSE)
      }

      # check if the required `totalAmount` is null
      if (is.null(self$`totalAmount`)) {
        return(FALSE)
      }

      # check if the required `totalTax` is null
      if (is.null(self$`totalTax`)) {
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
      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        invalid_fields["currency"] <- "Non-nullable required field `currency` cannot be null."
      }

      # check if the required `invoiceType` is null
      if (is.null(self$`invoiceType`)) {
        invalid_fields["invoiceType"] <- "Non-nullable required field `invoiceType` cannot be null."
      }

      # check if the required `issueDate` is null
      if (is.null(self$`issueDate`)) {
        invalid_fields["issueDate"] <- "Non-nullable required field `issueDate` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `subtotal` is null
      if (is.null(self$`subtotal`)) {
        invalid_fields["subtotal"] <- "Non-nullable required field `subtotal` cannot be null."
      }

      # check if the required `totalAmount` is null
      if (is.null(self$`totalAmount`)) {
        invalid_fields["totalAmount"] <- "Non-nullable required field `totalAmount` cannot be null."
      }

      # check if the required `totalTax` is null
      if (is.null(self$`totalTax`)) {
        invalid_fields["totalTax"] <- "Non-nullable required field `totalTax` cannot be null."
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
# Invoice$unlock()
#
## Below is an example to define the print function
# Invoice$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Invoice$lock()

