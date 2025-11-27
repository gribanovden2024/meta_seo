import 'dart:convert';

import 'package:meta_seo/schema_org/src/schema_serializable.dart';

import 'html_stub.dart' if (dart.library.js_interop) 'package:web/web.dart';

/// Helper class to write JSON-LD to HTML document
class SchemaOrg {
  /// Write a schema class to the HTML document as JSON-LD
  static void writeJsonLd(SchemaSerializable schemaClass) {
    final script = HTMLScriptElement();
    script.type = 'application/ld+json';
    const encoder = JsonEncoder.withIndent('  ');
    script.innerText = encoder.convert(schemaClass.toJsonLd());
    document.body!.append(script);
  }
}
