
class MWUApiParameter<T,U> {
  final String version; // default value is 'v1'
  final T? queryParameters; // optional
  final U? dataParameters; // optional
  final bool? withAuth; // optional
  final String contentType; // default value is 'application/json'

  MWUApiParameter({
    this.version = 'v1',
    this.queryParameters,
    this.dataParameters,
    this.withAuth,
    this.contentType = 'application/json',
  });
}