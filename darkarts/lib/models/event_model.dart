class GetEvents {
  List<Event> event;

  GetEvents({this.event});

  GetEvents.fromJson(Map<String, dynamic> json) {
    if (json['Event'] != null) {
      event = new List<Event>();
      json['Event'].forEach((v) {
        event.add(new Event.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.event != null) {
      data['Event'] = this.event.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Event {
  int eventId;
  int tenantId;
  int artistId;
  int eventTypeLKPId;
  int eventStatusLKPId;
  int paintingId;
  int seatingPlanId;
  int eventAgeGroupTypeLKPId;
  int eventCategoryLKPId;
  int venueHallId;
  String eventName;
  String eventCode;
  bool activeFlag;
  Null effectiveStartDate;
  Null effectiveEndDate;
  String createdBy;
  String createdDate;
  String lastUpdatedBy;
  String lastUpdatedDate;
  String eventDate;
  String eventStartTime;
  String eventEndTime;
  Null privateEventFlag;
  Null fundraisingEventFlag;
  int maxTicketPrice;
  int minTicketPrice;
  String locationCode;
  String venueCityCode;
  bool isFeatured;
  String eventDescription;
  String eventTags;
  int goldTicketsCount;
  int silverTicketsCount;
  int basicTicketsCount;
  int eventLikesCount;
  Null natEsEventWaitList;
  Null natEsEventImage;
  List<Null> natEsEventFacility;
  List<Null> natEsEventSeatingPlan;
  List<Null> natEsEventTicketPrice;
  int venueId;
  Null startDate;
  Null endDate;
  Null categoryid;
  Null artistid;
  int sortid;
  bool sortAsc;
  int artistRatingFilter;
  String artistName;
  int artistRating;
  String artistImage;
  String paintingName;
  int paintingRating;
  String paintingImage;
  String venueAddress;
  String venueName;
  int venueRating;
  bool likeStatus;

  Event(
      {this.eventId,
      this.tenantId,
      this.artistId,
      this.eventTypeLKPId,
      this.eventStatusLKPId,
      this.paintingId,
      this.seatingPlanId,
      this.eventAgeGroupTypeLKPId,
      this.eventCategoryLKPId,
      this.venueHallId,
      this.eventName,
      this.eventCode,
      this.activeFlag,
      this.effectiveStartDate,
      this.effectiveEndDate,
      this.createdBy,
      this.createdDate,
      this.lastUpdatedBy,
      this.lastUpdatedDate,
      this.eventDate,
      this.eventStartTime,
      this.eventEndTime,
      this.privateEventFlag,
      this.fundraisingEventFlag,
      this.maxTicketPrice,
      this.minTicketPrice,
      this.locationCode,
      this.venueCityCode,
      this.isFeatured,
      this.eventDescription,
      this.eventTags,
      this.goldTicketsCount,
      this.silverTicketsCount,
      this.basicTicketsCount,
      this.eventLikesCount,
      this.natEsEventWaitList,
      this.natEsEventImage,
      this.natEsEventFacility,
      this.natEsEventSeatingPlan,
      this.natEsEventTicketPrice,
      this.venueId,
      this.startDate,
      this.endDate,
      this.categoryid,
      this.artistid,
      this.sortid,
      this.sortAsc,
      this.artistRatingFilter,
      this.artistName,
      this.artistRating,
      this.artistImage,
      this.paintingName,
      this.paintingRating,
      this.paintingImage,
      this.venueAddress,
      this.venueName,
      this.venueRating,
      this.likeStatus});

  Event.fromJson(Map<String, dynamic> json) {
    eventId = json['EventId'];
    tenantId = json['TenantId'];
    artistId = json['ArtistId'];
    eventTypeLKPId = json['EventTypeLKPId'];
    eventStatusLKPId = json['EventStatusLKPId'];
    paintingId = json['PaintingId'];
    seatingPlanId = json['SeatingPlanId'];
    eventAgeGroupTypeLKPId = json['EventAgeGroupTypeLKPId'];
    eventCategoryLKPId = json['EventCategoryLKPId'];
    venueHallId = json['VenueHallId'];
    eventName = json['EventName'];
    eventCode = json['EventCode'];
    activeFlag = json['ActiveFlag'];
    effectiveStartDate = json['EffectiveStartDate'];
    effectiveEndDate = json['EffectiveEndDate'];
    createdBy = json['CreatedBy'];
    createdDate = json['CreatedDate'];
    lastUpdatedBy = json['LastUpdatedBy'];
    lastUpdatedDate = json['LastUpdatedDate'];
    eventDate = json['EventDate'];
    eventStartTime = json['EventStartTime'];
    eventEndTime = json['EventEndTime'];
    privateEventFlag = json['PrivateEventFlag'];
    fundraisingEventFlag = json['FundraisingEventFlag'];
    maxTicketPrice = json['MaxTicketPrice'];
    minTicketPrice = json['MinTicketPrice'];
    locationCode = json['LocationCode'];
    venueCityCode = json['VenueCityCode'];
    isFeatured = json['IsFeatured'];
    eventDescription = json['EventDescription'];
    eventTags = json['EventTags'];
    goldTicketsCount = json['GoldTicketsCount'];
    silverTicketsCount = json['SilverTicketsCount'];
    basicTicketsCount = json['BasicTicketsCount'];
    eventLikesCount = json['EventLikesCount'];
    natEsEventWaitList = json['NatEsEventWaitList'];
    natEsEventImage = json['NatEsEventImage'];
    // if (json['NatEsEventFacility'] != null) {
    //   natEsEventFacility = new List<Null>();
    //   json['NatEsEventFacility'].forEach((v) {
    //     natEsEventFacility.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['NatEsEventSeatingPlan'] != null) {
    //   natEsEventSeatingPlan = new List<Null>();
    //   json['NatEsEventSeatingPlan'].forEach((v) {
    //     natEsEventSeatingPlan.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['NatEsEventTicketPrice'] != null) {
    //   natEsEventTicketPrice = new List<Null>();
    //   json['NatEsEventTicketPrice'].forEach((v) {
    //     natEsEventTicketPrice.add(new Null.fromJson(v));
    //   });
    // }
    venueId = json['VenueId'];
    startDate = json['StartDate'];
    endDate = json['EndDate'];
    categoryid = json['Categoryid'];
    artistid = json['Artistid'];
    sortid = json['Sortid'];
    sortAsc = json['SortAsc'];
    artistRatingFilter = json['ArtistRatingFilter'];
    artistName = json['ArtistName'];
    artistRating = json['ArtistRating'];
    artistImage = json['ArtistImage'];
    paintingName = json['PaintingName'];
    paintingRating = json['PaintingRating'];
    paintingImage = json['PaintingImage'];
    venueAddress = json['VenueAddress'];
    venueName = json['VenueName'];
    venueRating = json['VenueRating'];
    likeStatus = json['LikeStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['EventId'] = this.eventId;
    data['TenantId'] = this.tenantId;
    data['ArtistId'] = this.artistId;
    data['EventTypeLKPId'] = this.eventTypeLKPId;
    data['EventStatusLKPId'] = this.eventStatusLKPId;
    data['PaintingId'] = this.paintingId;
    data['SeatingPlanId'] = this.seatingPlanId;
    data['EventAgeGroupTypeLKPId'] = this.eventAgeGroupTypeLKPId;
    data['EventCategoryLKPId'] = this.eventCategoryLKPId;
    data['VenueHallId'] = this.venueHallId;
    data['EventName'] = this.eventName;
    data['EventCode'] = this.eventCode;
    data['ActiveFlag'] = this.activeFlag;
    data['EffectiveStartDate'] = this.effectiveStartDate;
    data['EffectiveEndDate'] = this.effectiveEndDate;
    data['CreatedBy'] = this.createdBy;
    data['CreatedDate'] = this.createdDate;
    data['LastUpdatedBy'] = this.lastUpdatedBy;
    data['LastUpdatedDate'] = this.lastUpdatedDate;
    data['EventDate'] = this.eventDate;
    data['EventStartTime'] = this.eventStartTime;
    data['EventEndTime'] = this.eventEndTime;
    data['PrivateEventFlag'] = this.privateEventFlag;
    data['FundraisingEventFlag'] = this.fundraisingEventFlag;
    data['MaxTicketPrice'] = this.maxTicketPrice;
    data['MinTicketPrice'] = this.minTicketPrice;
    data['LocationCode'] = this.locationCode;
    data['VenueCityCode'] = this.venueCityCode;
    data['IsFeatured'] = this.isFeatured;
    data['EventDescription'] = this.eventDescription;
    data['EventTags'] = this.eventTags;
    data['GoldTicketsCount'] = this.goldTicketsCount;
    data['SilverTicketsCount'] = this.silverTicketsCount;
    data['BasicTicketsCount'] = this.basicTicketsCount;
    data['EventLikesCount'] = this.eventLikesCount;
    data['NatEsEventWaitList'] = this.natEsEventWaitList;
    data['NatEsEventImage'] = this.natEsEventImage;
    // if (this.natEsEventFacility != null) {
    //   data['NatEsEventFacility'] =
    //       this.natEsEventFacility.map((v) => v.toJson()).toList();
    // }
    // if (this.natEsEventSeatingPlan != null) {
    //   data['NatEsEventSeatingPlan'] =
    //       this.natEsEventSeatingPlan.map((v) => v.toJson()).toList();
    // }
    // if (this.natEsEventTicketPrice != null) {
    //   data['NatEsEventTicketPrice'] =
    //       this.natEsEventTicketPrice.map((v) => v.toJson()).toList();
    // }
    data['VenueId'] = this.venueId;
    data['StartDate'] = this.startDate;
    data['EndDate'] = this.endDate;
    data['Categoryid'] = this.categoryid;
    data['Artistid'] = this.artistid;
    data['Sortid'] = this.sortid;
    data['SortAsc'] = this.sortAsc;
    data['ArtistRatingFilter'] = this.artistRatingFilter;
    data['ArtistName'] = this.artistName;
    data['ArtistRating'] = this.artistRating;
    data['ArtistImage'] = this.artistImage;
    data['PaintingName'] = this.paintingName;
    data['PaintingRating'] = this.paintingRating;
    data['PaintingImage'] = this.paintingImage;
    data['VenueAddress'] = this.venueAddress;
    data['VenueName'] = this.venueName;
    data['VenueRating'] = this.venueRating;
    data['LikeStatus'] = this.likeStatus;
    return data;
  }
}