class Message {
  final int id;
  final int from;
  final int to;
  final String body;
  final bool? read;
  final int timestamp;

  Message(this.id, this.from, this.to, this.body, this.read, this.timestamp);
}
