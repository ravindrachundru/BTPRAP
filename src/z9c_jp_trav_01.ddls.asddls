@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for Travel'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}


define root view entity Z9C_JP_TRAV_01
provider contract transactional_query
    as projection on Z9I_JP_TRAV_01
{

    key TravelId,

        
        @ObjectModel.text.element: ['AgencyName']
        
        AgencyId,
        _Agency.Name        as AgencyName,

        
        @ObjectModel.text.element: ['CustomerName']
        

        CustomerId,
        _Customer.FirstName as CustomerName,

        BeginDate,
        EndDate,
        @Semantics.amount.currencyCode: 'CurrencyCode'
        BookingFee,
        @Semantics.amount.currencyCode: 'CurrencyCode'
        TotalPrice,

        
        
        CurrencyCode,
        Description,
        Status,
        LastChangedAt,
        _Agency,
        _Booking : redirected to composition child Z9C_JP_BOOK_01,
        _Currency,
        _Customer
}
