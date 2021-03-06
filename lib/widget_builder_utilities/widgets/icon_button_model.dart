import 'package:flutter/material.dart';
import 'package:flutter_app_builder/utils/code_utils.dart';
import '../property.dart';
import '../model_widget.dart';

class IconButtonModel extends ModelWidget {
  IconButtonModel() {
    this.widgetType = WidgetType.IconButton;
    this.nodeType = NodeType.End;
    this.hasProperties = true;
    this.hasChildren = false;
    this.paramNameAndTypes = {
      "iconSize": PropertyType.double,
      "tooltip": PropertyType.string,
      "icon": PropertyType.icon,
      "color": PropertyType.color,
      "left_padding": PropertyType.double,
      "top_padding": PropertyType.double,
      "right_padding": PropertyType.double,
      "bottom_padding": PropertyType.double,
    };

    this.params = {
      "iconSize": "24.0",
      "left_padding": "10.0",
      "top_padding": "10.0",
      "right_padding": "10.0",
      "bottom_padding": "10.0",
      "tooltip": "",
    };
  }

  @override
  Map getParamValuesMap() {
    return {
      "iconSize": params["iconSize"],
      "tooltip": params["tooltip"],
      "icon": params["icon"],
      "color": params["color"],
      "left_padding": params["left_padding"],
      "top_padding": params["top_padding"],
      "right_padding": params["right_padding"],
      "bottom_padding": params["bottom_padding"],
    };
  }

  @override
  Widget toWidget() {
    return IconButton(
      icon: Icon(params["icon"] ?? Icons.help_outline),
      iconSize: double.tryParse(params["iconSize"]) ?? 24.0,
      color: params["color"],
      padding: EdgeInsets.fromLTRB(
        double.tryParse(params["left_padding"]) ?? 10.0,
        double.tryParse(params["top_padding"]) ?? 10.0,
        double.tryParse(params["right_padding"]) ?? 10.0,
        double.tryParse(params["bottom_padding"]) ?? 10.0,
      ),
      tooltip: params["tooltip"],
      onPressed: () {},
    );
  }

  @override
  String toCode() {
    return 
    "IconButton(\n"
    "${paramToCode(paramName: "icon", type: PropertyType.icon, currentValue: params["icon"])}"
      "${paramToCode(paramName: "iconSize", type: PropertyType.double, currentValue: params["iconSize"])}"
      "${paramToCode(paramName: "color", type: PropertyType.color, currentValue: params["color"])}"
      "    padding: EdgeInsets.fromLTRB("
        "${double.tryParse(params["left_padding"]) ?? 10.0},"
        "${double.tryParse(params["top_padding"]) ?? 10.0},"
        "${double.tryParse(params["right_padding"]) ?? 10.0},"
        "${double.tryParse(params["bottom_padding"]) ?? 10.0},"
      "),"
      "${paramToCode(paramName: "tooltip", type: PropertyType.string, currentValue: params["tooltip"])}"
        "    onPressed: () {},"
    "\n)";
  }
}
