/// Holds a dummy reference to the document
final document = Document();

/// Holds a dummy reference to the script element
class HtmlElement {
  String type = '';
  String innerText = '';
  void append(HtmlElement script) {}
}

/// Dummy class for the document
class Document {
  final HtmlElement? body = HtmlElement();
}

/// Dummy class for the script element
class HTMLScriptElement extends HtmlElement {}
