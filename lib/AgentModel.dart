import 'dart:ui';

import 'package:flutter/material.dart';

class AgentModel {
  String name;
  String imageUrl;
  Color color;

  AgentModel({required this.name, required this.imageUrl, required this.color});

  static List<AgentModel> agentsSample = [
    AgentModel(
        name: "",
        imageUrl:
            "https://media.valorant-api.com/agents/eb93336a-449b-9c1b-0a54-a891f7921d69/fullportrait.png",
        color: Color.fromARGB(230, 232, 130, 12)),
    AgentModel(
        name: "",
        imageUrl:
            "https://media.valorant-api.com/agents/9f0d8ba9-4140-b941-57d3-a7ad57c6b417/fullportrait.png",
        color: Color.fromARGB(230, 202, 85, 22)),
    AgentModel(
        name: "",
        imageUrl:
            "https://media.valorant-api.com/agents/569fdd95-4d10-43ab-ca70-79becc718b46/fullportrait.png",
        color: Color.fromARGB(230, 2, 182, 151)),
    AgentModel(
        name: "",
        imageUrl:
            "https://media.valorant-api.com/agents/320b2a48-4d9b-a075-30f1-1f93a9b638fa/fullportrait.png",
        color: Color.fromARGB(230, 47, 73, 198)),
    AgentModel(
        name: "",
        imageUrl:
            "https://media.valorant-api.com/agents/707eab51-4836-f488-046a-cda6bf494859/fullportrait.png",
        color: Color.fromARGB(230, 5, 159, 64)),
    AgentModel(
        name: "",
        imageUrl:
            "https://media.valorant-api.com/agents/117ed9e3-49f3-6512-3ccf-0cada7e3823b/fullportrait.png",
        color: Color.fromARGB(230, 146, 146, 150)),
    AgentModel(
        name: "",
        imageUrl:
            "https://media.valorant-api.com/agents/f94c3b30-42be-e959-889c-5aa313dba261/fullportrait.png",
        color: Color.fromARGB(230, 233, 123, 14)),
    AgentModel(
        name: "",
        imageUrl:
            "https://media.valorant-api.com/agents/6f2a04ca-43e0-be17-7f36-b3908627744d/fullportrait.png",
        color: Color.fromARGB(230, 46, 77, 104)),
  ];
}
