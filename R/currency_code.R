#' @docType class
#' @title CurrencyCode
#' @description CurrencyCode Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurrencyCode <- R6::R6Class(
  "CurrencyCode",
  public = list(

    #' @description
    #' Initialize a new CurrencyCode class.
    #'
    #' @param ... Optional arguments.
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_CurrencyCode()

      if (length(val) == 0L) {
        val = "DUMMY_ENUM"
      } else {
        stopifnot(length(val) == 1L)
      }

      if (!val %in% enumvec) {
        if (!(val=="DUMMY_ENUM")) {
          stop("Use one of the valid values: ",
            paste0(enumvec, collapse = ", "))
        }
      }
      private$value <- val
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert CurrencyCode to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      return(private$value)
    },

    #' @description
    #' Deserialize JSON string into an instance of CurrencyCode
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of CurrencyCode
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CurrencyCode in JSON format
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CurrencyCode
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of CurrencyCode
    fromJSONString = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    }
  ),
  private = list(
    value = NULL
  )
)

# add to utils.R
.parse_CurrencyCode <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[ADP, AED, AFA, AFN, ALL, AMD, ANG, AOA, AOK, AOR, ARS, ATS, AUD, AWG, AZM, AZN, BAD, BAM, BBD, BDT, BEC, BEF, BEL, BGJ, BGN, BHD, BIF, BMD, BND, BOB, BOV, BRB, BRL, BRR, BSD, BTN, BWP, BYB, BYN, BYR, BZD, CAD, CDF, CHE, CHF, CHW, CLF, CLP, CNY, COP, COU, CRC, CSD, CSK, CUC, CUP, CVE, CYP, CZK, DDM, DJF, DKK, DOP, DZD, ECS, ECV, EEK, EGP, ERN, ESA, ESB, ESP, ETB, EUR, FIM, FJD, FKP, FRF, GBP, GEK, GEL, GHC, GHP, GHS, GIP, GMD, GNF, GQE, GRD, GTQ, GWE, GYD, HKD, HNL, HRD, HTG, HUF, IDR, IEP, ILS, INR, IQD, IRR, ISK, ITL, JMD, JOD, JPY, KES, KGS, KHR, KMF, KPW, KRW, KWD, KYD, KZT, LAK, LBP, LKR, LRD, LSL, LTL, LUC, LUF, LUL, LVL, LYD, MAD, MDL, MGA, MGF, MKD, MLF, MMK, MNT, MOP, MRO, MRU, MTL, MUR, MVR, MWK, MXN, MXV, MYR, MZE, MZN, NAD, NGN, NIO, NLG, NOK, NPR, NZD, OMR, PAB, PEN, PGK, PHP, PKR, PLN, PLZ, PTE, PYG, QAR, RHD, ROK, RON, RSD, RUB, RUR, RWF, SAR, SBD, SCR, SDD, SDG, SEK, SGD, SHP, SIT, SKK, SLE, SLL, SOS, SRD, SRG, SSP, STD, STN, SVC, SYP, SZL, THB, TJR, TJS, TMM, TMT, TND, TOP, TPE, TRL, TRY, TTD, TWD, TZS, UAH, UAK, UGX, USD, USN, USS, UYI, UYU, UYW, UZS, VEB, VED, VEF, VES, VND, VUV, WST, XAD, XAF, XAG, XAU, XBA, XBB, XBC, XBD, XCD, XDR, XEU, XOF, XPD, XPF, XPT, XSU, XTS, XUA, XXX, YDD, YER, YUD, ZAL, ZAR, ZMK, ZMW, ZRN, ZWG, ZWL, ZWN, ZWR]")
  unlist(strsplit(res, ", "))
}

