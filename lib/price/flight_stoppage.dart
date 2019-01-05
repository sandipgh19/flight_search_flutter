class FlightStoppage {
  String from;
  String to;
  String date;
  String duration;
  String price;
  String fromToTime;

  FlightStoppage(this.from, this.to, this.date, this.duration, this.price,
      this.fromToTime);
}

class FlightTicketStoppage {
  String from;
  String fromShort;
  String to;
  String toShort;
  String flightNumber;

  FlightTicketStoppage(
      this.from, this.fromShort, this.to, this.toShort, this.flightNumber);
}