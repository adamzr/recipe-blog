$(".duration").each(function(){
  var iso8601Duration = $(this).children("meta").attr("content");
  var duration = moment.duration(iso8601Duration);
  var destination = $(this).children(".human-readable-duration");
  destination.text(duration.humanize());
});
